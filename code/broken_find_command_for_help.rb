# Fuzzily find a command for a user.
# @param [String] search The user's search.
# @return [Pry::Command?]
def find_command_for_help(search)
 find_command(search) ||
 (find_command_by_listing_or_match(search) rescue nil)
end
