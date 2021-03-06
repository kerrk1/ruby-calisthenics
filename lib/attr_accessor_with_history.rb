class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(new_value)
        if @#{attr_name}_history == nil
          @#{attr_name}_history = [nil]
        else @#{attr_name}_history << @#{attr_name}
        end
        @#{attr_name} = new_value
      end
    }
  end
end

# instead of << you could also do XXXX_history.push(@#{attr_name})