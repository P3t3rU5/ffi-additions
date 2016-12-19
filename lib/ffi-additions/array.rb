module FFIAdditions
  module ArrayUtils
    refine ::Array.singleton_class do
      def from_pointer_of(klass, pointer, size)
        size.times.map do |i|
          klass.new(pointer + i * klass.size)
        end
      end
    end
  end
end