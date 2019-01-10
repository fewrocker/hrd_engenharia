class Contato < MailForm::Base

  def headers
    {
      :subject => "Novo contato",
      :to => "santos.felipe13@gmail.com",
      :from => %("#{self.nome}" <#{self.email}>)
   }

  end
end
