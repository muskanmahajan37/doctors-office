require 'spec_helper'


describe 'Company' do
  it 'initializes with a hash' do
    new_company = Company.new({:name => 'Red Shield'})
    expect(new_company).to be_an_instance_of Company
  end
end
