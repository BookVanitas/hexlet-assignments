# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, word_list)
  result = []
  checker = word.chars.sort
  word_list.each { |elem| elem.chars.sort == checker ? result << elem : next }
  result
end
# END
