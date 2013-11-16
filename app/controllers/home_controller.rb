class HomeController < ApplicationController
  def get_infomercial_ipsum
    if params[:number_of_paragraphs].present?
      number_of_paragraphs = params[:number_of_paragraphs].to_i 
      informercial_ipsum_request = InfomercialIpsumRequest.new(number_of_paragraphs)
      @informercial_ipsum = informercial_ipsum_request.content
    end
  end
end
