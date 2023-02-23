class Role < ActiveRecord::Base
    has_many :auditions
    has_many :actors, through: :auditions

    def locations
        self.auditions.map do |audition|
            audition.location 
        end
    end

    def lead
        #return puts "no actor has been hired for this role" if self.auditions.find_by(hired: true) = false
        hired = self.auditions.find_by(hired: true)
        if hired
            hired
        else
            puts "no actor has been hired for this role"
        end
    end

    def understudy
        understudy = self.auditions.select{|i| i.hired == true}.map do |audition|
            audition
        end
        if understudy.count == 2
            understudy.second
        else 
            puts "no actor has been hired for understudy for this role"
        end 
    end
end