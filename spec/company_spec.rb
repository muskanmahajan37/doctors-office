require 'spec_helper'


describe 'Company' do
  it 'initializes with a hash' do
    new_company = Company.new({:name => 'Red Shield'})
    expect(new_company).to be_an_instance_of Company
  end

  it 'lets you read the name' do
    new_company = Company.new({:name => 'Tsar Health Affiliates'})
    expect(new_company.name).to eq 'Tsar Health Affiliates'
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Company.all).to eq []
    end
  end
end
