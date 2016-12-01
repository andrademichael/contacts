class Address

  @@addresses = []
  attr_reader :id, :street, :city, :state, :zip


  define_method(:initialize) do |attributes|
    @id = @@addresses.length + 1
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
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
