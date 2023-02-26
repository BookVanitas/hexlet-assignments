# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(hash)
  sorted_hash_a = hash.sort
  result = []
  sorted_hash_a.each { |(key, value)| result << "#{key}=#{value}" }
  result.join('&')
end
# END
# rubocop:enable Style/For
