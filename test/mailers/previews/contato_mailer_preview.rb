# Preview all emails at http://localhost:3000/rails/mailers/contato_mailer
class ContatoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contato_mailer/contato
  def contato
    @contato = Contato.last
    ContatoMailer.contato(@contato)
  end

end
