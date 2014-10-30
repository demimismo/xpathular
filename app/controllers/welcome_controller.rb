class WelcomeController < ApplicationController
  def index
    if params[:xml]
      @document      = Nokogiri::XML(params[:xml]) { |config| config.strict }
      @processed_xml = @document.to_s
      @collection    = @document.xpath(params[:xpath])
    end
  end
end
