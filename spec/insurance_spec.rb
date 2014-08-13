require 'spec_helper.rb'


describe 'Insurance' do
  it 'initializes with a hash' do
    new_insurance = Insurance.new({:name => 'Red Shield'})
    expect(new_insurance).to be_an_instance_of Insurance
  end
end
