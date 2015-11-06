require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'sashite', 'pbdn'
require 'spectus'

include Spectus

print 'Scenario 1... '

board_diff = Sashite::Pbdn.load(52, 36, 'W:P'.to_sym)

it { board_diff.src_square }.MUST equal 52
it { board_diff.dst_square }.MUST equal 36
it { board_diff.piece_name }.MUST equal 'W:P'.to_sym

it { board_diff.to_a }.MUST eql [52, 36, 'W:P'.to_sym]

puts 'Done.'

print 'Scenario 2... '

board_diff = Sashite::Pbdn.load('52', 'foo', 'W:P')

it { board_diff.src_square }.MUST equal 52
it { board_diff.dst_square }.MUST equal 0
it { board_diff.piece_name }.MUST equal 'W:P'.to_sym

it { board_diff.to_a }.MUST eql [52, 0, 'W:P'.to_sym]

puts 'Done.'
