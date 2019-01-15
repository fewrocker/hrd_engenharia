class ContatoMailer < ApplicationMailer
  def contato(contato)
    @contato = contato
    mail(to: 'santos.felipe13@gmail.com', subject: 'Novo contato')
  end
end
