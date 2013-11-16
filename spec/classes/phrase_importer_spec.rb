require 'spec_helper'

describe PhraseImporter do
  it 'imports phrases from a chunk of text' do
    text_chunk = "But I\'m just getting started. With every order, we\'ll include the Roll \'n\' Peel. Take a 
                  clove and give it a roll. Peel all the garlic you like without ever touching it. You\'ll even 
                  get the gathering brush to mix all the flavors together and top your favorite foods."

    phrase_importer = PhraseImporter.new(text_chunk)

    expect{phrase_importer.import}.to change{Phrase.count}.by(5)
  end
end
