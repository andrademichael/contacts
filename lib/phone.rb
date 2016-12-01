class Phone
  @@phones = []
  attr_reader :phone_number, :phone_type

  define_method(:initialize) do |phone, type|
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
