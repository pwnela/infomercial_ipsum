require 'spec_helper'

describe Paragraph do
  it 'creates a paragraph made of random phrases' do
    text_chunk = "But call in the next 20 minutes, and we\'ll super size your OxiClean from a two-and-a-half 
                  pound tub to a whopping six-pound bucket! Nearly triple the amount, but you got to call now! Here\'s how to order."

    PhraseImporter.new(text_chunk).import

    paragraph = Paragraph.new
    paragraph.content.should_not be_blank
  end
end
