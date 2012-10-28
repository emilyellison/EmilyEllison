class ContactMe < ActionMailer::Base
  default to: "emily@fixitwithcode.com"
  
  def contact(inquiry)
    @inquiry = inquiry
    mail(:from => inquiry.email, :subject => 'Hello')
  end
  
end
