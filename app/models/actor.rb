class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    result = "#{self.first_name}" + " #{self.last_name}"
  end

  def list_roles
    character_names_shows = self.characters.map do |character|
        name = character.name
        show = character.show.name
        result = "#{name} - #{show}"
    end
    character_names_shows
  end
end