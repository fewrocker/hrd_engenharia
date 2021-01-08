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
    @areas_nomes << 'Mineração'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'mineracao'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-miner.jpeg"

    # Nome da area a ser incluida
    @areas_nomes << 'Portos'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'portos'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-portos.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Ferrovias'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'ferrovias'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-ferrovia.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Pontes'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'pontes'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-pontes.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Inspeções e Ensaios'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'inspecoes-e-ensaios'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-inspecoes-e-ensaios.jpeg"

    # Nome da area a ser incluida
    @areas_nomes << 'Automobilística'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'automobilistica'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-automobilistica.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Seguradoras e reguladoras'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'seguradoras-e-reguladoras'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-seguros.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Siderúrgica'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'siderurgia'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-siderurgia.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Agronegócio'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'agronegocio'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-agronegocio.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Construção civil'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'construcao-civil'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-construcao-civil.jpg"

    # Nome da area a ser incluida
    @areas_nomes << 'Papel e celulose'
    # Endereco da pagina a ser redirecionada pelo card
    @areas_links << 'papel-e-celulose'
    # Foto de fundo do card
    @areas_fotos_url << "assets/areas-papel.jpeg"
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
