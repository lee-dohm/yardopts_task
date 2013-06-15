
require 'rake'
require 'yard/rake/yardopts_task/version'

module Yard
  module Rake
    # A Rake task for updating the `.yardopts` file automatically for new documentation files.
    class YardoptsTask < ::Rake::FileTask
    end
  end
end
