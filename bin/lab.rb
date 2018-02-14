# frozen_string_literal: true

# Require the lab.rb file so that this file knows about it
require_relative '../lib/lab.rb'

# Include the module Lab::StoringAccessing to get access to functions and constants defined in that module
include Lab::StoringAccessing

# Print the output of calls to the functions defined within lab.rb file within Lab::StoringAccessing module

p "WORKING_ARRAY: #{WORKING_ARRAY}"
p "Append Twenty: #{append_twenty}" # Or, reference the full location: Lab::StoringAccessing.append_twenty
# etc...
#
## Bonus
# p Lab::StoringAccessing.bonus_block_initializer
