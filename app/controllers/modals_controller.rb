class ModalsController < ApplicationController
  def show
    @content_only = true
    render template: "modals/#{params[:name]}"
  end
end
