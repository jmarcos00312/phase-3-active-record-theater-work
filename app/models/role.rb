class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        # self.auditions.pluck(:actor)
        self.auditions.map do |a|
            a.actor
        end
    end
        def locations
            # self.auditions.pluck(:location)
        self.auditions.map do |a|
            a.location
        end
    end

    def lead
        lead_person = self.auditions.where("hired=?", true)
        lead_person.empty? ? "No actor has been hired for the #{self.character_name} role" : lead_person.first
    end
    def understudy
        u_person = self.auditions.where("hired=?", true)
        u_person.length > 1 ? lead_person.second : "No actor has been hired for the #{self.character_name} role" 
    end


end