class AttrAccessorObject
  def self.my_attr_accessor(*names) #attr_accessor :v0, :v1, :v2
    names.each do |name|
      define_method("#{name}") do
        self.instance_variable_get("@#{name}")
      end
      define_method("#{name}=") do |val|
        self.instance_variable_set("@#{name}",val)
      end
    end
  end


end