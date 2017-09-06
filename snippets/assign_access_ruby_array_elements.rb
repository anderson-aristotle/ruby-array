# frozen_string_literal: true

developers[0]
# => "Caleb"

developers[-1]
# => "Adam"

developers[-4] == developers[0]
# => true

developers[developers.length]
# => nil

developers[-5]
# => nil

developers[-3, 2]
# => ["Joel", "Julia"]

developers[-5] = 'Kira'
# IndexError: index -5 too small for array; minimum: -4

developers[developers.length] = 'Kira'
# => "Kira"
