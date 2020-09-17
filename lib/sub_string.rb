# frozen_string_literal: true

# substring method
def substring(string, array_of_strings)
  array_of_strings.reduce(Hash.new(0)) do |result, vote|
    if vote == string
      result[vote] += 1
    elsif string.include? vote
      result[vote] += 1
    else result
    end
    result
  end
end
