require 'ffi-additions'

module FFIAdditions
  class Struct < FFI::Struct
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