class ContatoController < ApplicationController

  def create
    c = Contato.new

    c.nome = params[:nome]
    c.email = params[:email]
    c.telefone = params[:telefone]
    c.assunto = params[:assunto]
    c.mensagem = params[:mensagem]

    c.save

    ContatoMailer.contato(c).deliver_now

    redirect_to "/contato?email=sent"
  end

  def teste
    ContatoMailer.teste.deliver_now
  end
end
