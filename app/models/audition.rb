class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        if self.hired == false
            self.update(hired: 1)
            puts "the hired attribute is now #{self.hired}"
        end
    end

end