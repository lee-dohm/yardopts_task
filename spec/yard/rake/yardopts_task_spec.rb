
require 'spec_helper'

describe YARD::Rake::YardoptsTask do
  let(:task) { YARD::Rake::YardoptsTask.new }

  it 'has a version' do
    expect(YARD::Rake::YardoptsTask::VERSION).to match(/\d+\.\d+\.\d+/)
  end

  it 'defaults to a name of ".yardopts"' do
    expect(task.name).to eq('.yardopts')
  end
end
