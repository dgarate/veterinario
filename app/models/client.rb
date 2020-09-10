class Client < ApplicationRecord
    has_many :pets

    delegate :count, to: :pets, prefix: true

    has_many :pet_histories

    delegate :average, to: :pet_histories, prefix: true

 
      
    def maximum_weight
        pet_histories.maximum(:weight)
    end
    
    def maximum_height
        pet_histories.maximum(:height)
    end

    
end
