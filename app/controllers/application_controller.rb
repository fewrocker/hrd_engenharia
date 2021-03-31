class ApplicationController < ActionController::Base
  helper_method :content, :box
  before_action :page_background, :areas_atuacao, :contact_map_markers

  def contact_map_markers
    @markers = []
    @markers << {
      lat: -19.943036215058054,
      lng: -43.94876008658152
    }
  end

  # Universal background image
  def page_background
    # @page_background = "background-image: linear-gradient(-225deg, rgba(255,255,255,0.7) 0%, rgba(255,255,255,0.7) 50%), url('/assets/background.png');"
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
    @areas_nomes << 'Análise Estrutural'
    # Endereco da pag ina a ser redirecionada pelo card
    @areas_links << 'analise-estrutural'
    # Foto de fundo do card
    @areas_fotos_url << "assets/gaiola-gif.gif"

    # Nome da area a ser incluida
    @areas_nomes << 'Análise DEM'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'analise-dem'
    # Foto de fundo do card
    @areas_fotos_url << "assets/video-DEM.gif"

    # Nome da area a ser incluida
    @areas_nomes << 'Elaboração de Modelos CAD 3D'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'modelos-3d'
    # Foto de fundo do card
    @areas_fotos_url << "assets/serviços7.png"

    # Nome da area a ser incluida
    @areas_nomes << 'Inspeção e Avaliação de Integridade Estrutural'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'integridade-estrutural'
    # Foto de fundo do card
    @areas_fotos_url << "assets/serviços8.png" 

    # Nome da area a ser incluida
    @areas_nomes << 'Análise Experimental'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'analise-experimental'
    # Foto de fundo do card
    @areas_fotos_url << "assets/experimental.gif"

    # Nome da area a ser incluida
    @areas_nomes << 'Análise CFD'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'analise-cfd'
    # Foto de fundo do card
    @areas_fotos_url << "assets/CFD-GIF.gif"

    # Nome da area a ser incluida
    #@areas_nomes << 'Projetos Mecânicos'
    # Endereco da pagina a ser redirecionada pelo card
    #@areas_links << 'projetos-mecanicos'
    # Foto de fundo do card
    #@areas_fotos_url << "assets/serviços5.png"

    # Nome da area a ser incluida
    #@areas_nomes << 'Projetos Estruturas Metálicas'
    # Endereco da pagina a ser redirecionada pelo card
    #@areas_links << 'projetos-metalicas'
    # Foto de fundo do card
    #@areas_fotos_url << "assets/serviços6.PNG"

    # Nome da area a ser incluida
    @areas_nomes << 'Planos Executivos e Acompanhamento'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'planos-executivos'
    # Foto de fundo do card
    @areas_fotos_url << "assets/Imagem2.png"

    # Nome da area a ser incluida
    @areas_nomes << 'Execução de Treinamentos Técnicos'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'treinamentos'
    # Foto de fundo do card
    @areas_fotos_url << "assets/hugostoso.jpg"

    # Nome da area a ser incluida
    #@areas_nomes << 'Papel e celulose'
    # Endereco da pagina a ser redirecionada pelo card
    #@areas_links << 'papel-e-celulose'
    # Foto de fundo do card
    #@areas_fotos_url << "assets/areas-papel.jpeg"
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
