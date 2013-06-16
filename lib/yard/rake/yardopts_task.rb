
require 'rake'

module YARD
  module Rake
    # A Rake task for updating the `.yardopts` file automatically for new documentation files.
    class YardoptsTask < ::Rake::FileTask
      # Version of the gem.
      VERSION = '0.0.1'

      def initialize(*args)
        @name = '.yardopts'

        parse_arguments(args)
      end

      private

      def parse_arguments(args)
        @name = args.first if args.count > 0 && !(args.first.is_a?(Array))
      end
    end
  end
end
