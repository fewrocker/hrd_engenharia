class ApplicationController < ActionController::Base

  helper_method :content, :box

  def content(linhas)
    # Gera marcadores de linha em tag <p> para futuramente ser substituido por um conteudo
    # com o numero de linhas especificado
    str = ''
    str += "<p class=\"page-description\">"
    linhas.times do |count|
      str += "Linha #{count + 1} <br>"
    end
    str += "</p>"

    return str
  end

  def box(height,title)
    # Gera uma caixa com a altura definida em VH e com o escrito title no centro
    # (Colocar onde serao posicionados elementos no futuro)
    str = ""
    str += "<div style=\"width: 100%; height: "
    str += height.to_s
    str += "vh; background-color:  rgba(170,170,170,1); display: flex; align-items: center; justify-content: space-around; color: white;  text-transform: uppercase;\"><h2>"
    str += title.to_s
    str += "</h2></div>"

    return str
  end
end
