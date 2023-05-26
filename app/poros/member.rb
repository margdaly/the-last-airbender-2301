class Member
  attr_reader :id, :name, :allies, :enemies, :affiliation, :photo

  def initialize(data)
    @id = data[:_id]
    @name = data[:attributes][:name]
    @allies = data[:attributes][:allies]
    @enemies = data[:attributes][:enemies]
    @affiliation = data[:attributes][:affiliation]
    @photo = data[:attributes][:photoUrl]
  end
end