class PagesController < ApplicationController
  def home
    redirect_to '/home' if params[:page].nil?
  end

  def show
    # Informacoes relacionadas a pagina 'home'
    if params[:page] == 'home' || 'areas'

      # -----------------------------------------------------
      # Slideshow - homepage
      # -----------------------------------------------------

      @slides_title = []
      @slides_description = []
      @slides_button = []
      @slides_image = []
      @slides_link = []

      # Os slides passam na ordem em que sao colocados abaixo
      # O primeiro slide estara ativo quando a pagina é iniciada

      # Slide 1
      @slides_title << "A empresa"
      # @slides_description << "A HRD Engenharia atua lado a lado com seus parceiros para apresentar soluções técnicas de alto nível que mitigam riscos e agregam valor aos seus ativos"
      @slides_button  << "Conheça a empresa"
      @slides_image  <<  "assets/carousel-1.jpg"
      @slides_link  <<  "/a-empresa"

      # Slide 2
      @slides_title << "Áreas de atuação"
      # @slides_description << "A HRD Engenharia apresenta soluções de excelência em uma grande diversidade de áreas"
      @slides_button  << "Conheça nossas áreas"
      @slides_image  <<  "assets/carousel-2.jpg"
      @slides_link  <<  "/areas"

      # Slide 3
      @slides_title << "Serviços"
      # @slides_description << "A HRD Engenharia apresenta soluções de excelência em uma grande diversidade de áreas"
      @slides_button  << "Conheça nossos serviços"
      @slides_image  <<  "assets/carousel-3.jpg"
      @slides_link  <<  "/servicos"

      # Slide 4
      @slides_title << "A equipe"
      # @slides_description << "A HRD Engenharia conta com uma equipe onde todos possuem uma formação de alto nível e vasta experiência com projetos nas áreas de atuação"
      @slides_button  << "Conheça nossa equipe"
      @slides_image  <<  "assets/carousel-4.jpg"
      @slides_link  <<  "/equipe"

    # -----------------------------------------------------
    # Equipe
    # -----------------------------------------------------

    if params[:page] == 'equipe'

      # Listagem de membros
      @membros_nomes = []
      @membros_fotos = []
      @membros_descricao = []
      @membros_linkedin = []

      # Para adicionar novos membros, basta copiar e colar as linhas abaixo e mudar as informacoes
      # para o novo membro

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Ronaldo Lelis Santos'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-ronaldo.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Graduado em engenharia mecânica pela Universidade Federal de Minas Gerais (UFMG, 2017), também estudou um ano na Johns Hopkins University e participou do programa de extensão em pesquisa de verão da Columbia University durante seu período de graduação. No momento, está perseguindo uma pós-graduação em gestão de negócios (MBA) pelo IBMEC-MG. Atuou com proficiência em auditoria de projeto, cálculos estruturais estáticos e dinâmicos, análises de falhas e análise experimental de tensões e vibração, com foco no setor industrial.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/ronaldo-lelis-santos-740181a5/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Diego Correia Martins'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-diego.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Formado em Engenharia Mecânica pela UFMG, com ênfase em Engenharia Automobilística. Especializado em Integridade Estrutural pelo IEC-PUC Minas, possui ampla experiência na área de análises estruturais teórico-experimentais. Atua em auditoria de projeto, cálculos estruturais estáticos e dinâmicos, dimensionamento mecânico, análises de falhas e análise experimental de tensões e vibração, com foco no setor industrial.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/diego-correia-martins-679743178/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Hugo Gatti'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-hugo.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Engenheiro mecânico com experiência em soluções de problemas de engenharia utilizando métodos dos elementos finitos. Especialista em cálculo de estruturas reticuladas, análises dinâmicas e não-lineares de equipamentos e seus componentes.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/hugo-gatti-9594333a/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Renêe Ferreira de Andrade'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-renee.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Engenheiro Mecânico formado pela UFMG com vasta experiência em análises estruturais pelo método dos elementos finitos e dimensionamento de componentes mecânicos. Especialista em análise de equipamentos, principalmente na área de mineração, como máquinas de pátio, transportadores de correia, lavadores e secadores. Atua em auditoria de projetos, análises estruturais estáticas e dinâmicas, fadiga de materiais e inspeções estruturais.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/renêe-ferreira-de-andrade-0069ab104/'
      # ----------------------------------------------------
    end

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

    # Renderiza paginas do tipo /(nome_da_pagina)
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def areas
    # Renderiza paginas do tipo /areas/(nome_da_area)
    if valid_page?
      render template: "pages/areas/#{params[:area]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private

  def valid_page?
    # Pagina valida se atende todas as condicoes abaixo. Caso contrario, ir para erro 404
    conds = []
    # Pagina esta em pages/X
    conds << File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    # Pagina esta em pages/areas/X
    conds << File.exist?(Pathname.new(Rails.root + "app/views/pages/areas/#{params[:area]}.html.erb"))

    return conds.include?(true)
  end

end
