# Namespace for the Sashite library.
#
# @example Let's represent e2e4 on a 8x8 chessboard.
#   Sashite::Pbdn.load(52, 36, 'W:P').to_a # => [52, 36, 'W:P']
module Sashite
  # Namespace for the PBDN parser and emitter.
  module Pbdn
    # The main class.
    class Structure
      # @param src_square [#to_i]   A source square.
      # @param dst_square [#to_i]   A destination square.
      # @param piece_name [#to_sym] A piece name.
      def initialize(src_square, dst_square, piece_name)
        @src_square = src_square.to_i
        @dst_square = dst_square.to_i
        @piece_name = piece_name.to_sym
      end

      # @!attribute [r] src_square
      #
      # @return [Fixnum] A source square.
      attr_reader :src_square

      # @!attribute [r] dst_square
      #
      # @return [Fixnum] A destination square.
      attr_reader :dst_square

      # @!attribute [r] piece_name
      #
      # @return [Symbol] A piece name.
      attr_reader :piece_name

      # PBDN are emitted with this method.
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
    # @example Parsing of e2e4 move, from Western chess.
    #   load(52, 36, 'W:P')
    #
    # @param src_square [#to_i]   A source square.
    # @param dst_square [#to_i]   A destination square.
    # @param piece_name [#to_sym] A piece name.
    #
    # @return [Structure] The structure of the board diff.
    def self.load(src_square, dst_square, piece_name)
      Structure.new(src_square.to_i, dst_square.to_i, piece_name.to_sym)
    end
  end
end
