# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return unless start <= stop

  text = ''
  (start..stop).to_a.each do |number|
    text += if (number % 15).zero?
              'FizzBuzz '
            elsif (number % 5).zero?
              'Buzz '
            elsif (number % 3).zero?
              'Fizz '
            else
              "#{number} "
            end
  end
  text.chop
end

# END
