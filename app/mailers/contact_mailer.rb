class ContactMailer < ActionMailer::Base
  default :from => "from@example.com"

  def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body
      mail(:to => "tusiecos@poda.com",
           :subject => "Kontakt ze strony")
  end
end