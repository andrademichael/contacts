class Email

  attr_reader :id, :email_address, :email_type
  @@emails = []

  define_method(:initialize) do |email, type|
    @id = @@emails.length + 1
    @email_address = email
    @email_type = type
  end

  define_method(:save) do
    @@emails.push(self)
  end

  define_singleton_method(:clear) do
    @@emails = []
  end

  define_singleton_method(:all) do
    @@emails
  end
end
