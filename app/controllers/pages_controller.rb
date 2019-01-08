class PagesController < ApplicationController
    def home
      redirect_to '/home' if params[:page].nil?

    end

    def show
      # Informacoes relacionadas a pagina 'home'
      if params[:page] == 'home' || 'areas'
        @areas_nomes = []
        @areas_links = []
        @areas_fotos_url = []

        # Para adicionar novas areas, basta copiar e colar as linhas abaixo e mudar as informacoes
        # para a nova area

        # Nome da area a ser incluida
        @areas_nomes << 'Mineiração'
        # Endereco da pagina a ser redirecionada pelo card
        @areas_links << 'mineiracao'
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
        @areas_nomes << 'Inspecoes e Ensaios'
        # Endereco da pagina a ser redirecionada pelo card
        @areas_links << 'inespecoes-e-ensaios'
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
        @areas_fotos_url << "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg/2000px-Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg.png"

        # Nome da area a ser incluida
        @areas_nomes << 'Treinamentos'
        # Endereco da pagina a ser redirecionada pelo card
        @areas_links << 'treinamentos'
        # Foto de fundo do card
        @areas_fotos_url << "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg/2000px-Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg.png"

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
        @areas_nomes << 'Industria alimenticia'
        # Endereco da pagina a ser redirecionada pelo card
        @areas_links << 'industria-alimenticia'
        # Foto de fundo do card
        @areas_fotos_url << "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg/2000px-Flag_of_Afghanistan_\%281880\%E2\%80\%931901\%29.svg.png"

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


      # Informacoes relacionadas a pagina 'equipe'
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
        @membros_descricao << 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar'
        # Link do linkedin do membro
        @membros_linkedin << 'https://www.linkedin.com/in/ronaldo-lelis-santos-740181a5/'
        # ----------------------------------------------------

        # ----------------------------------------------------
        # Nome do membro (do jeito que ira aparecer)
        @membros_nomes << 'Ronaldo Lelis Santos'
        # Nome da foto do membro dentro da pasta app/assets/images
        @membros_fotos << 'equipe-ronaldo.png'
        # Descricao sobre o membro (do jeito que ira aparecer)
        @membros_descricao << 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar'
        # Link do linkedin do membro
        @membros_linkedin << 'https://www.linkedin.com/in/ronaldo-lelis-santos-740181a5/'
        # ----------------------------------------------------
      end

      if valid_page?
        render template: "pages/#{params[:page]}"
      else
        render file: "public/404.html", status: :not_found
      end
    end

    def areas
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
