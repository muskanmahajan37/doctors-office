require 'rspec'
require 'pg'
require 'doctor'

DB = PG.connect({:dbname => 'doctors_office_test'})
