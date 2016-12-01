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
  @new_address = Address.new({@new_street, @new_city, @new_state, @new_zip})

    #Email Params
  @new_email_address = params.fetch("email_input")
  @new_email_type = params.fetch("email_type_input")
  @new_email = Email.new({@new_email_address, @new_email_type})

    #Phone Params
  @new_phone_number = params.fetch("phone_input")
  @new_phone_type = params.fetch("phone_type_input")
  @new_phone = Phone.new({@new_phone_number, @new_phone_type})

    #New Contact Object
  Contact.new({@new_first, @new_last, @new_job_title, @new_address, @new_email, @new_phone})

  erb(:success)
end

get("/") do
  erb(:index)
end

get("/contact_list") do
  @contacts = Contact.all
  erb(:contact_list)
end
