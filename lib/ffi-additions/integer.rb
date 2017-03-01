module WinFFI
  module IntegerUtils
    refine ::Integer do
      def unsigned
        return self if self >= 0
        self + 2 ** (1.size * 8)
      end
    end
  end
end