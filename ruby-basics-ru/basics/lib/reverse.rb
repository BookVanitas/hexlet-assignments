# frozen_string_literal: true

# BEGIN
def reverse(text)
  result = ''
  text.each_char { |letter| result = letter + result }
  result
end
# END
