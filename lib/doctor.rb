class Doctor

  attr_reader :id, :name

  def initialize attributes
    @id = attributes[:id]
    @name = attributes[:name]
  end

  def self.all
    doctors = []
    results = DB.exec("SELECT * FROM doctors;")
    results.each do |result|
      attributes = {
        :id => result['id'],
        :name => result['name']
      }
      doctors << Doctor.new(attributes)
    end
    doctors
  end
end
