class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actors.map do |t|
        t.full_name
    end
  end

#   def build_network(name)
#     find_network = name[:name]
#     new_network = Network.find_or_create_by(name: find_network)
#     self.network = new_network
#   end
end