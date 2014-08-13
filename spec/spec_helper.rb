require 'rspec'
require 'pry'
require 'pg'
require 'doctor'

DB = PG.connect({:dbname => 'doctors_office_test'})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM doctors *;")
  end
end
