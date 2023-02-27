# frozen_string_literal: true

# BEGIN
def get_same_parity(num_list)
  result = []
  if num_list.any?
    result = num_list.first.even? ? num_list.select(&:even?) : num_list.select(&:odd?)
  end
  result
end

# END
