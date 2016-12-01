class Contact

  @@contacts = []
  attr_reader :first_name, :last_name, :job_title, :address, :email, :phone, :id

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @address = attributes.fetch(:address)
    @email = attributes.fetch(:email)
    @phone = attributes.fetch(:phone)
    @id = @@contacts.length + 1
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

  define_singleton_method(:find) do |ident|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id.eql?(ident.to_i())
        found_contact = contact
      end
    end
    found_contact
  end
end
