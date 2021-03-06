module Repeatable
  module Expression
    class DayInMonth < Date
      def initialize(day:)
        @day = day
      end

      def include?(date)
        date.day == day
      end

      private

      attr_reader :day
    end
  end
end
