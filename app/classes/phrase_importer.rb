class PhraseImporter
  
  attr_accessor :text_chunk
    
  def initialize(text_chunk)
    @text_chunk = text_chunk
  end

  def import
    phrases = @text_chunk.gsub(/[.?!]/, '\0|') 

    phrases.split("|").each do |phrase|
      Phrase.create(phrase_text: phrase)
    end 
  end
 
end
