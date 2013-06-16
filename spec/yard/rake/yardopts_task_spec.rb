
require 'spec_helper'

describe YARD::Rake::YardoptsTask do
  let(:task) { YARD::Rake::YardoptsTask.new }
  let(:yardopts) { '.yardopts' }

  it 'has a version' do
    expect(YARD::Rake::YardoptsTask::VERSION).to match(/\d+\.\d+\.\d+/)
  end

  it 'defaults to a name of ".yardopts"' do
    expect(task.name).to eq(yardopts)
  end

  it 'allows the name of the task to be set' do
    task = YARD::Rake::YardoptsTask.new :foo

    expect(task.name).to eq('foo')
  end

  it 'can have its prerequisites set' do
    task = YARD::Rake::YardoptsTask.new ['*.md']

    expect(task.name).to eq(yardopts)
  end
end
