class Address

  @@addresses = []
  attr_reader :street, :city, :state, :zip


  define_method(:initialize) do |street, city, state, zip|
    @street = street
    @city = city
    @state = state
    @zip = zip
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end

  define_singleton_method(:all) do
    @@addresses
  end


end
