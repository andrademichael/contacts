class Contact

  @@contacts = []
  attr_reader :first_name, :last_name, :job_title

  define_method(:initialize) do |first, last, title|
    @first_name = first
    @last_name = last
    @job_title = title
    # @id = @@contacts.length + 1
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
