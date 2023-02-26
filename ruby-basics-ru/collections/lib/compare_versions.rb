# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  version1_list = version1.to_s.split('.').map!(&:to_i)
  version2_list = version2.to_s.split('.').map!(&:to_i)
  comp = version1_list.first <=> version2_list.first
  comp.zero? ? version1_list[1] <=> version2_list[1] : comp
end
# END
