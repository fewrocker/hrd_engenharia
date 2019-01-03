class PagesController < ApplicationController
    def home
    end

    def show
      @navbar_type = params[:page] == 'home' ? 'home' : 'normal'

      if valid_page?
        render template: "pages/#{params[:page]}"
      else
        render file: "public/404.html", status: :not_found
      end

    end

    private

    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
    end
  end
