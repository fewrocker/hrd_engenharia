class Contato < MailForm::Base

  def headers
    {
      :subject => "Novo contato",
      :to => "santos.felipe13@gmail.com",
      :from => %("I dont care")
   }

  end
end
