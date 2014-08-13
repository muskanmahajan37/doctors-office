require 'spec_helper.rb'


describe 'Doctor' do

  it 'initializes with a hash' do
    new_doctor = Doctor.new({:name => 'Franklin Jones'})
    expect(new_doctor).to be_an_instance_of Doctor
  end
end
