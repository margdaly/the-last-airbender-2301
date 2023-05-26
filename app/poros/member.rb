
class Member
  attr :name, :affiliation, :allies, :enemies, :photo, :id

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
  end
end