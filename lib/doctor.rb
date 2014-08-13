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
        :id => result['id'].to_i,
        :name => result['name']
      }
      doctors << Doctor.new(attributes)
    end
    doctors
  end

  def save
    result = DB.exec("INSERT INTO doctors (name) VALUES ('#{name}') RETURNING id;")
    @id = result.first['id'].to_i
  end

  def == arg
    self.name == arg.name && self.id == arg.id
  end
end
