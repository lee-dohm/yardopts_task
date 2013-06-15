
require 'bundler/gem_tasks'
require 'rake/clean'
require 'rspec/core/rake_task'
require 'yard'

task :default => [:rubocop, :spec, :yard]

task :rubocop do
  sh 'rubocop'
end

RSpec::Core::RakeTask.new

YARD::Rake::YardocTask.new
