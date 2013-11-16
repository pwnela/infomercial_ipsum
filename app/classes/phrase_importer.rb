class PhraseImporter
  
  attr_accessor :text_chunk
    
  def initialize(text_chunk)
    @text_chunk = text_chunk
  end

  def import
    @text_chunk.split(/[.?!]/).each do |phrase|
      Phrase.create(phrase_text: phrase)
    end 
  end
 
end
