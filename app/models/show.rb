class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map { |actor|
          actor.full_name
     }
  end


  def build_network(hash_attr)
    self.network = Network.create(hash_attr)
  end

end
