class Contact < MailForm::Base
	attribute :name,      :validate => true
	attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :file,      :attachment => true
	attribute :message
	attribute :nickname,  :captcha  => true

	def headers 
		{
			:subject => "Contact Form",
			:to => "stuart.tee@virgin.net",
			:from => %("#{name}" <#{email}>)
		}
	end
end