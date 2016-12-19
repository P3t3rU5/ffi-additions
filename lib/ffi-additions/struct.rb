require 'ffi-additions'

module FFIAdditions
  class Struct < FFI::Struct
    def self.layout(*args)
      args = args.first.map do |k, v|
        if v == :string
          v = :pointer
          define_method "#{k}=", ->(s){ self[k] = FFI::MemoryPointer.from_string(s) }
        end
        [k, v]
      end.to_h
      # puts args
      super(args)
      members.each do |name|
        unless method_defined?(name)
          define_method name, ->{ self[name] }
        end
        unless method_defined?("#{name}=")
          define_method "#{name}=", ->(v){ self[name] = v }
        end
      end
    end
  end

  class Union < FFI::Union
    def self.layout(*args)
      super
      members.each do |name|
        unless method_defined?(name)
          define_method name, ->{ self[name] }
          define_method "#{name}=", ->(v){ self[name] = v }
        end
      end
    end
  end
end