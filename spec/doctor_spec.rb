require 'spec_helper.rb'


describe 'Doctor' do
  it 'initializes with a hash' do
    new_doctor = Doctor.new({:name => 'Franklin Jones'})
    expect(new_doctor).to be_an_instance_of Doctor
  end

  it 'lets you read the name' do
    new_doctor = Doctor.new({:name => 'Franklin Jones'})
    expect(new_doctor.name).to eq 'Franklin Jones'
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Doctor.all). to eq []
    end
  end
end
