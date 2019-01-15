class ContatoMailer < ApplicationMailer
  def contato(contato)
    @contato = contato
    mail(to: 'diretoria@hrdengenharia.com.br', subject: 'Novo contato')
  end
end
