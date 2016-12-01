class Contact

  @@contacts = []
  attr_reader :id, :first_name, :last_name, :job_title, :address, :email, :phone

  define_method(:initialize) do |attributes|
    @id = @@contacts.length + 1
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @address = attributes.fetch(:address)
    @email = attributes.fetch(:email)
    @phone = attributes.fetch(:phone)
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end
end
