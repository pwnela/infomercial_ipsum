require 'spec_helper'

describe InfomercialIpsumRequest do
  it 'constructs some infomercial ipsum based on a request' do
    text_chunk = "But call in the next 20 minutes, and we\'ll super size your OxiClean from a two-and-a-half 
                  pound tub to a whopping six-pound bucket! Nearly triple the amount, but you got to call now! Here\'s how to order."

    PhraseImporter.new(text_chunk).import

    request = InfomercialIpsumRequest.new(3)
    request.content.should_not be_blank
  end
end
