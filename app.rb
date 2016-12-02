require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
require('./lib/address')
require('./lib/email')
require('./lib/phone')
require('pry')
also_reload('lib/**/*.rb')

post("/create") do
# Form input fields
  #Contact parameters

  @new_first = params.fetch("first_input")
  @new_last = params.fetch("last_input")
  @new_job_title = params.fetch("title_input")

    #Address Params

  @new_street = params.fetch("street_input")
  @new_city = params.fetch("city_input")
  @new_state = params.fetch("state_input")
  @new_zip = params.fetch("zip_input")
  @new_address = Address.new({:street=> @new_street, :city=> @new_city, :state=> @new_state, :zip=> @new_zip})

    #Email Params
  @new_email_address = params.fetch("email_input")
  @new_email_type = params.fetch("email_type_input")
  @new_email = Email.new({:email_address=> @new_email_address, :email_type=> @new_email_type})

    #Phone Params
  @new_phone_number = params.fetch("phone_input")
  @new_phone_type = params.fetch("phone_type_input")
  @new_phone = Phone.new({:phone_number=> @new_phone_number, :phone_type=> @new_phone_type})

    #New Contact Object
  @new_contact = Contact.new({:first_name=> @new_first, :last_name=> @new_last, :job_title=> @new_job_title, :address=> @new_address, :email=> @new_email, :phone=> @new_phone})
  @new_contact.save
  erb(:success)
end

get("/") do
  erb(:index)
end

get("/contact_list") do
  @contacts = Contact.all
  erb(:contact_list)
end

get("/contact_view/:id") do
  erb(:contact_view)
end
