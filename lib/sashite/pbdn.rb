# Namespace for the Sashite library.
#
# @api public
#
# @example 42 MUST be equal to 42
#   Sashite::Pbdn.load(52, 36, 'W:P').to_a # => [52, 36, 'W:P']
module Sashite
  # Namespace for the PBDN parser and emitter.
  #
  # @api public
  #
  module Pbdn
    #
    # @api private
    #
    class Structure
      def initialize(src_square, dst_square, piece_name)
        @src_square = src_square
        @dst_square = dst_square
        @piece_name = piece_name
      end

      #
      # @api public
      #
      attr_reader :src_square, :dst_square, :piece_name

      # PBDN are emitted with this method.
      #
      # @api public
      #
      # @return [Array] the array of the board diff.
      def to_a
        [
          src_square,
          dst_square,
          piece_name
        ]
      end
    end

    # PBDN are parsed with this method.
    #
    # @api public
    #
    # @example Parsing of e2e4 move, from Western chess
    #   load(52, 36, 'W:P')
    #
    # @param src_square [#to_i]   Indicates a source square occupied by an actor
    # @param dst_square [#to_i]   Indicates a target square
    # @param piece_name [#to_sym] Indicates the name of the actor of the action
    #
    # @return [Structure] the structure of the board diff.
    def self.load(src_square, dst_square, piece_name)
      Structure.new(src_square.to_i, dst_square.to_i, piece_name.to_sym)
    end
  end
end
