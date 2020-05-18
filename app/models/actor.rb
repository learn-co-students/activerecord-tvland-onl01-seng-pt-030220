class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end
    
    def list_roles
        list = []
        self.characters.each do |i|
            #binding.pry
            show = i.name + " - " + i.show.name
            list << show
        end
        list
    end
end