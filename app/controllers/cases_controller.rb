class CasesController < ApplicationController
  def show
    @content_only = true
    render template: "cases/#{params[:name]}"
  end
end
