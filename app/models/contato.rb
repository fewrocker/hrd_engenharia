class Contato < MailForm::Base
  attribute :nome
  attribute :email
  attribute :telefone
  attribute :assunto
  attribute :mensagem

  def headers
    {
      :subject => "Novo contato",
      :to => "santos.felipe13@gmail.com",
      :from => "putas@putas.com"
   }

  end
end
