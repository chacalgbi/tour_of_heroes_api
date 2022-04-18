class Hero < ApplicationRecord
    validates :name, :token, presence: true

    scope :sorted_by_name, -> {order(:name)}
    scope :search, -> (term) { 
        if term.present?
            puts "Term: #{term}. Está presente."
            where('LOWER(name) LIKE ?', "%#{term.downcase}%")
        else
            puts "Term não está presente"
        end
    }
end
