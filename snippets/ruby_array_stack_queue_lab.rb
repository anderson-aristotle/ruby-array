# frozen_string_literal: true

characters = %w[Lee Adrian Bo]

puts "There once were three friends, #{characters[0]}, #{characters[1]}, and
#{characters[2]}."

characters << 'Taylor'

puts "#{characters[-2]} befriended #{characters[-1]}, #{characters[0]}\'s known
enemy.
      #{characters[0]} could no longer be their friend."

characters.shift

puts "#{characters[0]}, #{characters[1]}, and #{characters[2]} needed to think
of lunch plans."
