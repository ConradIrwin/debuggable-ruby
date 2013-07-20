# Fuzzily find a command for a user.
# @param [String] search The user's search.
# @return [Pry::Command?]
def find_command_for_help(search)
  find_command(search) || (begin
    find_command_by_match_or_listing(search)
  rescue ArgumentError
    nil
  end)
end

