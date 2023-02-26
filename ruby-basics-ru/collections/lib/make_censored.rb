# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  text_array = text.split
  res = []
  text_array.each { |word| res << (stop_words.include?(word) ? '$#%!' : word) }
  res.join(' ')
  # END
end

# rubocop:enable Style/For
