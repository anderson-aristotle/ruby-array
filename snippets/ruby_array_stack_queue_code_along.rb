# frozen_string_literal: true

developers << 'Kosta'
# => ['Caleb', 'Joel', 'Julia', 'Adam', 'Kira', 'Kosta']

developers.push 'Rick'
# => ['Caleb', 'Joel', 'Julia', 'Adam', 'Kira', 'Kosta', 'Rick']

developers << 'Johnathan' << 'Peter'
# => ['Caleb',
#   'Joel',
#   'Julia',
#   'Adam',
#   'Kira',
#   'Kosta',
#   'Rick',
#   'Johnathan',
#   'Peter']

developers.shift 4
# => ['Caleb', 'Joel', 'Julia', 'Adam']

developers
# => ['Kira', 'Kosta', 'Rick', 'Johnathan', 'Peter']

developers.unshift 'Guillermo'
# => ['Guillermo', 'Kira', 'Kosta', 'Rick', 'Johnathan', 'Peter']
