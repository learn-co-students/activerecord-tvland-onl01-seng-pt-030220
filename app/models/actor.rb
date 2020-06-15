class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # "#{self.first_name} #{self.last_name}" STRING INTERPOLATIONS ARE BAD..mostly..ithink. I don't know don't ask me
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.map do |character|
      character.name + " - " + character.show.name
    end
  end

end 