
require 'rake'

module YARD
  module Rake
    # A Rake task for updating the `.yardopts` file automatically for new documentation files.
    class YardoptsTask < ::Rake::FileTask
      # Version of the gem.
      VERSION = '0.0.1'

      def initialize
        @name = '.yardopts'
      end
    end
  end
end
