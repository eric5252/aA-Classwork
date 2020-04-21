class Cat < ApplicationRecord
    COLORS = %w(red blue yellow)
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: %w(M F)

    
end
