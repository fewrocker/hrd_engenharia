class CasesController < ApplicationController
  def show
    @content_only = true
    render template: "cases/#{params[:name]}"
  end

  def search
    return [] if params[:query].blank?

    query = params[:query].downcase || "***************"
    query =  I18n.transliterate(query)

    cases = Dir.entries("#{Rails.root}/app/views/cases").select { |file| file.include?("html.erb")}

    case_hash = {}

    cases.map! do |case_file|
      file_content = File.read("#{Rails.root}/app/views/cases/#{case_file}")

      document = Nokogiri::HTML(file_content)
      title = document.search('h1').text
      content = document.search('p').text

      case_hash[case_file] = {
        title: title,
        content: content,
        file_name: case_file.gsub(".html.erb", ""),
      }
    end.compact!


    title_matches = cases.select { |case_inst| I18n.transliterate(case_inst[:title].downcase).include?(query) }
    content_matches = cases.select { |case_inst| I18n.transliterate(case_inst[:content].downcase).include?(query) && !title_matches.map { |tm| tm[:file_name]}.include?(case_inst[:file_name])  }

    render json: title_matches + content_matches
  end
end
