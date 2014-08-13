class Company

  attr_reader :id, :name

  def initialize attributes
    @id = attributes[:id]
    @name = attributes[:name]
  end

  def self.all
    companies = []
    results = DB.exec("SELECT * FROM companies;")
    results.each do |result|
      attributes = {
        :id => result['id'].to_i,
        :name => result['name']
      }
      companies << Company.new(attributes)
    end
    companies
  end
end
