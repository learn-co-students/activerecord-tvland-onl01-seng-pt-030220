class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def full_name
full_name = "#{self.first_name} "+"#{self.last_name}"
end

def list_roles
character = self.characters[0].name
show  = self.shows[0].name
character_and_show = "#{character} - #{show}"
end

end
