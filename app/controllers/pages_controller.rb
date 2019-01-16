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
      @membros_cargos = []

      # Para adicionar novos membros, basta copiar e colar as linhas abaixo e mudar as informacoes
      # para o novo membro
      # Obs: obedecer ordem alfabetica

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Diego Correia Martins'
      # Cargo do membro (do jeito que ira aparecer)
      @membros_cargos << 'Diretor técnico e comercial'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-diego.jpeg'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Formado em Engenharia Mecânica pela UFMG, com ênfase em Engenharia Automobilística. Especializado em Integridade Estrutural pelo IEC-PUC Minas, possui ampla experiência na área de análises estruturais teórico-experimentais. Atua em auditoria de projeto, cálculos estruturais estáticos e dinâmicos, dimensionamento mecânico, análises de falhas e análise experimental de tensões e vibração, com foco no setor industrial.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/diego-correia-martins-679743178/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Hugo Gatti Ladeia Costa'
      # Cargo do membro (do jeito que ira aparecer)
      @membros_cargos << 'Diretor técnico'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-hugo.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Engenheiro mecânico formado pela UFMG com experiência em soluções de problemas de engenharia utilizando métodos dos elementos finitos. Especialista em cálculo de estruturas reticuladas, análises dinâmicas e não-lineares de equipamentos e seus componentes.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/hugo-gatti-9594333a/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Renêe Ferreira de Andrade'
      # Cargo do membro (do jeito que ira aparecer)
      @membros_cargos << 'Diretor técnico e comercial'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-renee.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Engenheiro Mecânico formado pela UFMG com vasta experiência em análises estruturais pelo método dos elementos finitos e dimensionamento de componentes mecânicos. Especialista em análise de equipamentos, principalmente na área de mineração, como máquinas de pátio, transportadores de correia, lavadores e secadores. Atua em auditoria de projetos, análises estruturais estáticas e dinâmicas, fadiga de materiais e inspeções estruturais.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/renêe-ferreira-de-andrade-0069ab104/'
      # ----------------------------------------------------

      # ----------------------------------------------------
      # Nome do membro (do jeito que ira aparecer)
      @membros_nomes << 'Ronaldo Lelis Santos'
      # Cargo do membro (do jeito que ira aparecer)
      @membros_cargos << 'Diretor técnico'
      # Nome da foto do membro dentro da pasta app/assets/images
      @membros_fotos << 'equipe-ronaldo.png'
      # Descricao sobre o membro (do jeito que ira aparecer)
      @membros_descricao << 'Formado em engenharia mecânica pela Universidade Federal de Minas Gerais , com graduação sanduíche pela Johns Hopkins University. Participou do programa de extensão em pesquisa de verão da Columbia University durante seu período de graduação. Atuação com proficiência em auditoria de projeto, cálculos estruturais estáticos e dinâmicos, análises de falhas e análise experimental de tensões e vibração, com foco no setor industrial.'
      # Link do linkedin do membro
      @membros_linkedin << 'https://www.linkedin.com/in/ronaldo-lelis-santos-740181a5/'
      # ----------------------------------------------------
    end


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
