class ContatoController < ApplicationController

  def create
    c = Contato.new

    c.nome = params[:nome]
    c.email = params[:email]
    c.telefone = params[:telefone]
    c.assunto = params[:assunto]
    c.mensagem = params[:mensagem]

    c.save

    c.request = request
    if c.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message.'
    end

    # ContatoMailer.contato(c).deliver_now

    redirect_to "/contato?email=sent"
  end


end
