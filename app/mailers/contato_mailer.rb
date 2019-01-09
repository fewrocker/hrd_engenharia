class ContatoMailer < ApplicationMailer
  def contato(contato)
    @contato = contato
    mail(to: 'contato@hrdengenhariateste.com.br', subject: 'Novo contato')
  end

  def teste
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'santos.felipe13@gmail.com',
      :from => 'contato@hrdengenharia.com.br',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end

end
