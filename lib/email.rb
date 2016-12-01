class Email

  @@emails = []
  attr_reader :email_address, :email_type

  define_method(:initialize) do |email, type|
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
