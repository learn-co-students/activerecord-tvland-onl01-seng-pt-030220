class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    return self.first_name + " " + self.last_name
  end

  def list_roles
    arr = []
    self.characters.map do |character|
      arr << "#{character.name} - #{character.show.name}"
    end
    arr
  end
end
