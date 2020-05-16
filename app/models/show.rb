class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

def actors_list
# binding.pry
array = []
self.characters.each_with_index do |a,b|
  if self.characters[b].actor.shows[b].name = self.name
    array << self.characters[b].actor.full_name
  else
    nil
  end
  end
  array
end



end
