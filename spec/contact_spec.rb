require('rspec')
require('contact')
require('address')
require('email')
require('phone')


describe(Contact) do

  before() do
    Contact.clear()
  end

  describe('#initialize') do
    it("creates a new Contact object and sets its attributes") do
      test_contact1 = Contact.new("Michael", "Andrade", "Space Cowboy")
      test_contact1.save
      test_contact2 = Contact.new("Caitlin", "Ashtari", "Space Cowgirl")
      test_contact2.save

      expect(test_contact1.id).to(eq(1))
      expect(test_contact2.id).to(eq(2))
      expect(test_contact1.first_name).to(eq("Michael"))
      expect(test_contact1.last_name).to(eq("Andrade"))
      expect(test_contact1.job_title).to(eq("Space Cowboy"))
    end
  end

  describe('#save') do
    it("save new Contact object to the contacts array") do
      test_contact1 = Contact.new("Michael", "Andrade", "Space Cowboy")

      expect(test_contact1.save()).to(eq([test_contact1]))
    end
  end

  describe('.clear') do
    it("clears and returns empty contacts array") do
      test_contact1 = Contact.new("Michael", "Andrade", "Space Cowboy")

      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all contacts') do
      test_contact1 = Contact.new("Michael", "Andrade", "Space Cowboy")
      test_contact1.save
      test_contact2 = Contact.new("Caitlin", "Ashtari", "Space Cowgirl")
      test_contact2.save

      expect(Contact.all()).to(eq([test_contact1, test_contact2]))
    end
  end
end

describe(Address) do

  test_address1 = Address.new("400 SW 6th St", "Portland", "OR", "97204")

  before() do
    Address.clear()
  end

  describe("initialize") do
    it("creates a new Address object and sets its attributes") do
      expect(test_address1.id).to(eq(1))
      expect(test_address1.street).to(eq("400 SW 6th St"))
      expect(test_address1.city).to(eq("Portland"))
      expect(test_address1.state).to(eq("OR"))
      expect(test_address1.zip).to(eq("97204"))
    end
  end

  describe('#save') do
    it("save new Address object to the addresses array") do
      expect(test_address1.save()).to(eq([test_address1]))
    end
  end

  describe('.clear') do
    it("clears and returns empty addresses array") do
      test_address1.save
      expect(Address.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all addresses') do
      test_address1.save
      expect(Address.all()).to(eq([test_address1]))
    end
  end

end

describe(Email) do

  test_email1 = Email.new("andrade.michael.e@gmail.com", "professional")

  before() do
    Email.clear()
  end

  describe('#initialize') do
    it("creates a new Email object and sets its attributes") do
      expect(test_email1.id).to(eq(1))
      expect(test_email1.email_address).to(eq("andrade.michael.e@gmail.com"))
      expect(test_email1.email_type).to(eq("professional"))
    end
  end

  describe('#save') do
    it("save new Email object to the emails array") do
      expect(test_email1.save()).to(eq([test_email1]))
    end
  end

  describe('.clear') do
    it("clears and returns empty emails array") do
      expect(Email.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all emails') do
      expect(Email.all()).to(eq([]))
    end
  end

end

describe(Phone) do

  test_phone1 = Phone.new("5035555555", "work")

  before() do
    Phone.clear()
  end

  it("creates a new Phone object and sets its attributes") do
    expect(test_phone1.id).to(eq(1))
    expect(test_phone1.phone_number).to(eq("5035555555"))
    expect(test_phone1.phone_type).to(eq("work"))
  end

  describe('#save') do
    it("save new Phone object to the emails array") do
      test_phone1.save
      expect(Phone.all()).to(eq([test_phone1]))
    end
  end

  describe('.clear') do
    it("clears and returns empty emails array") do
      expect(Phone.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all emails') do
      expect(Phone.all()).to(eq([]))
    end
  end

end
