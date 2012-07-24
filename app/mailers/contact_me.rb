class ContactMe < ActionMailer::Base
  default to: "emilyellison986@gmail.com"
  
  def contact(inquiry)
    @inquiry = inquiry
    mail(:from => inquiry.email, :subject => 'Hello')
  end
end
