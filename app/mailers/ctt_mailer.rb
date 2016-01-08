class CttMailer < ActionMailer::Base

def contact_created(firstname,lastname,email,subject,message)
	@email = email
	@firstname = firstname
	@lastname = lastname
	@subject = subject
	@message = message

	mail(to: "tuhsar.ezeinno@gmail.com",
		 from: "services@mydomain.com",
		 subject: "Eze Innovations",
		 #body: "Thankyou for contacting Eze Innovations We will conatct you soon!"
	     )
	end

end