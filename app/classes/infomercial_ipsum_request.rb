class InfomercialIpsumRequest
  attr_accessor :billy_mayes_mode, :number_of_paragraphs

  def initialize(number_of_paragraphs, billy_mayes_mode=false)
    @number_of_paragraphs = number_of_paragraphs
    @billy_mayes_mode = billy_mayes_mode
  end

  def content
    request_content = []
    number_of_paragraphs.times{
      request_content << Paragraph.new.content
    }
    request_content
  end

end
