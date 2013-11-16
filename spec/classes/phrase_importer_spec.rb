require 'spec_helper'

describe PhraseImporter do
  it 'imports phrases from a chunk of text' do
    text_chunk = "But I\'m just getting started. With every order, we\'ll include the Roll \'n\' Peel. Take a 
                  clove and give it a roll. Peel all the garlic you like without ever touching it. You\'ll even 
                  get the gathering brush to mix all the flavors together and top your favorite foods."

    phrase_importer = PhraseImporter.new(text_chunk)

    expect{phrase_importer.import}.to change{Phrase.count}.by(5)
  end

  it 'detects billy mayes mode correctly' do
    text_chunk = "But call in the next 20 minutes, and we\'ll super size your OxiClean from a two-and-a-half 
                  pound tub to a whopping six-pound bucket! Nearly triple the amount, but you got to call now! Here\'s how to order."

    PhraseImporter.new(text_chunk).import

    Phrase.where(billy_mayes_mode: true).count.should == 2
    Phrase.where(billy_mayes_mode: false).count.should == 1
  end
end
