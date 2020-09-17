# frozen_string_literal: true

require './lib/sub_string'

describe 'return a has of all words that contain string' do
  it 'returns a hash for a single word that appears in the array' do
    string = 'below'
    array = ['below']

    actual = substring(string, array)
    expected = { 'below' => 1 }

    expect(actual).to eql(expected)
  end
  it 'returns a hash for a single word when multiple words are passed to the array' do
    string = 'below'
    array = %w[chips below]
    actual = substring(string, array)
    expected = { 'below' => 1 }
    expect(actual).to eql(expected)
  end
  it 'returns a hash for a single word when the array contains words that are part of the string passed' do
    string = 'below'
    array = %w[below chips low]
    actual = substring(string, array)

    expected = { 'below' => 1, 'low' => 1 }
    expect(actual).to eql(expected)
    expect(actual['below']).to eq(1)
  end
  it 'returns a hash for a string containing multiple words' do
    string = 'hello below the wishing well'
    array = %w[hello below low wish]

    actual = substring(string, array)
    expected = { 'below' => 1, 'low' => 1, 'wish' => 1, 'hello' => 1 }
    expect(actual).to eql(expected)
  end
end
