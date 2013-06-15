
require 'spec_helper'

describe YARD::Rake::YardoptsTask do
  let(:task) { YARD::Rake::YardoptsTask.new }

  it 'can be instantiated' do
    expect(task).to_not be_nil
  end
end
