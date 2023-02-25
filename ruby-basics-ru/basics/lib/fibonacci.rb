# frozen_string_literal: true

# BEGIN
def fibonacci(position)
  if position < 0
    nil
  elsif position < 2
    position
  else
    list = [0, 1]
    current = 1
    while current != position
      list << list[current] + list[current-1]
      current += 1
    end
    list[-1]
  end
end
# END
