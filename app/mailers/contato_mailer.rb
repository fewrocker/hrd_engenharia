class ContatoMailer < ApplicationMailer
  def contato(contato)
    @contato = contato
    mail(to: 'contato@hrdengenharia.com.br', subject: 'Novo contato pelo site')
  end
end
