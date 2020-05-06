class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors

  def actors_list
    arr = []
    self.characters.map do |character|
      actor = Actor.find(character.actor_id)
      arr << "#{actor.first_name} #{actor.last_name}"
    end

    arr
  end
end
