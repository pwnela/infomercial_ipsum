class Paragraph
  def content
    paragraph_text = ""
    number_of_phrases_in_paragraph = (1..10).to_a.sample
    number_of_phrases_in_paragraph.times {
      if Phrase.count > 0
        random_id = (Phrase.first.id..Phrase.last.id).to_a.sample
        phrase = Phrase.where(id: random_id).first
        paragraph_text += phrase.phrase_text if phrase.present?
      end
    }
    paragraph_text
  end
end
