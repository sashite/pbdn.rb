require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'sashite', 'pbdn'
require 'spectus'

print 'Scenario 1... '

board_diff = Sashite::Pbdn.load(52, 36, 'W:P'.to_sym)

Spectus.this { board_diff.src_square }.MUST Equal: 52
Spectus.this { board_diff.dst_square }.MUST Equal: 36
Spectus.this { board_diff.piece_name }.MUST Equal: 'W:P'.to_sym

Spectus.this { board_diff.to_a }.MUST Eql: [52, 36, 'W:P'.to_sym]

puts 'Done.'

print 'Scenario 2... '

board_diff = Sashite::Pbdn.load('52', 'foo', 'W:P')

Spectus.this { board_diff.src_square }.MUST Equal: 52
Spectus.this { board_diff.dst_square }.MUST Equal: 0
Spectus.this { board_diff.piece_name }.MUST Equal: 'W:P'.to_sym

Spectus.this { board_diff.to_a }.MUST Eql: [52, 0, 'W:P'.to_sym]

puts 'Done.'
