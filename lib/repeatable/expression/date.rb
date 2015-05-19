module Repeatable
  module Expression
    class Date < Base

      def to_h
        Hash[hash_key, attributes]
      end

      def ==(other)
        other.is_a?(self.class) && attributes == other.attributes
      end

      alias eql? ==

      def hash
        [attributes.values, self.class.name].hash
      end

      protected

      def attributes
        Hash[instance_variables.map { |name| [name[1..-1].to_sym, instance_variable_get(name)] }]
      end
    end
  end
end
