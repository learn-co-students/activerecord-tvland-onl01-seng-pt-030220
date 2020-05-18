class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    phrase = "#{self.name} always says: #{self.catchphrase}"
  end

#   def build_show(name)
#     find_name = name[:name]
#     new_show = Show.find_or_create_by(name: find_name)
#     self.show = new_show
#   end
end