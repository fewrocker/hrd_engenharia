class ApplicationController < ActionController::Base
  helper_method :content, :box
  before_action :page_background, :areas_atuacao, :markers




  def markers
    @markers = []
    @markers << {
      lat: -19.934212,
      lng: -43.921944
    }
  end


  # Universal background image
  def page_background
    @page_background = "background-image: linear-gradient(-225deg, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.7) 50%), url('/assets/background.png');"
  end

  def areas_atuacao
    # -----------------------------------------------------
    # Areas de atuacao
    # -----------------------------------------------------

    @areas_nomes = []
    @areas_links = []
    @areas_fotos_url = []

    # Para adicionar novas areas, basta copiar e colar as linhas abaixo e mudar as informacoes
    # para a nova area

    # Nome da area a ser incluida
    @areas_nomes << 'Mineração'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'mineracao'
    # Foto de fundo do card
    @areas_fotos_url << "https://correiodaamazonia.com/wp-content/uploads/2014/06/minera\%C3\%A7\%C3\%A3o.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Portos'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'portos'
    # Foto de fundo do card
    @areas_fotos_url << "https://conect.online/wp-content/uploads/2018/02/163665-post-de-3000-redator-entregar-ate-2301-15h-norma-regulamentadora-para-descarga-em-portos-brasileiros.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Ferrovias'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'ferrovias'
    # Foto de fundo do card
    @areas_fotos_url << "https://www.zug.net.br/wp-content/uploads/2018/07/img_ferrovia.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Pontes'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'pontes'
    # Foto de fundo do card
    @areas_fotos_url << "https://images.theconversation.com/files/171209/original/file-20170526-6421-1j3azw3.jpg?ixlib=rb-1.1.0&rect=0\%2C360\%2C6016\%2C2917&q=45&auto=format&w=1356&h=668&fit=crop"

    # Nome da area a ser incluida
    @areas_nomes << 'Inspeções e Ensaios'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'inspecoes-e-ensaios'
    # Foto de fundo do card
    @areas_fotos_url << "http://olouro.com.br/cdg/wp-content/uploads/2016/09/INSP.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Automobilística'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'automobilistica'
    # Foto de fundo do card
    @areas_fotos_url << "http://blog.arcelormittal.com.br/wp-content/uploads/2017/01/a\%C3\%A7os_especiais_1.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Seguradoras e reguladoras'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'seguradoras-e-reguladoras'
    # Foto de fundo do card
    @areas_fotos_url << "assets/seguradoras-e-reguladoras.png"

    # Nome da area a ser incluida
    @areas_nomes << 'Siderúrgica'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'siderurgia'
    # Foto de fundo do card
    @areas_fotos_url << "http://www.combustol.com.br/uploads/image/siderurgica02.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Agronegócio'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'agronegocio'
    # Foto de fundo do card
    @areas_fotos_url << "http://portallubes.com.br/wp-content/uploads/2018/10/m\%C3\%A1quinas-agr\%C3\%ADcolas-01.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Construção civil'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'construcao-civil'
    # Foto de fundo do card
    @areas_fotos_url << "https://i1.wp.com/brasilconstrucao.com.br/wp-content/uploads/2014/07/Constru\%C3\%A7\%C3\%A3o.jpg?fit=4288\%2C2848&ssl=1"

    # Nome da area a ser incluida
    @areas_nomes << 'Papel e celulose'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'papel-e-celulose'
    # Foto de fundo do card
    @areas_fotos_url << "http://2.bp.blogspot.com/-piDO8B4lrrc/UaYtOFVr3oI/AAAAAAAAHM8/iQ_ty2Q3vbw/s1600/SU.JPG"
  end





















  # HELPERS

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
