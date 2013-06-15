# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard/rake/yardopts_task'

Gem::Specification.new do |spec|
  spec.name          = "yardopts_task"
  spec.version       = YARD::Rake::YardoptsTask::VERSION
  spec.authors       = ["Lee Dohm"]
  spec.email         = ["lee@liftedstudios.com"]
  spec.description   = <<-eof
    On projects that have complicated documentation that doesn't just fit alongside the code, you may find yourself updating the
    .yardopts file to change the list of files to include in the generated YARD documentation quite a bit. This Rake task is
    intended to remove the need to manually perform that process.
  eof
  spec.summary       = %q{A Rake task for updating the .yardopts file automatically for new documentation files.}
  spec.homepage      = "https://github.com/lee-dohm/yardopts_task"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'yard', '~> 0.8.6'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec'
end
