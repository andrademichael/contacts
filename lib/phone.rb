class Phone
  @@phones = []
  attr_reader :id, :phone_number, :phone_type

  define_method(:initialize) do |phone, type|
    @id = @@phones.length + 1
    @phone_number = phone
    @phone_type = type
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  define_singleton_method(:all) do
    @@phones
  end
end
