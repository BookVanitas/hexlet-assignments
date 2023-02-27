# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.each_with_object({}) do |user, hash|
    hash[user[:birthday].split('-').first] ||= 0
    user[:gender] == 'male' ? hash[user[:birthday].split('-').first] += 1 : next
  end
end
# END
