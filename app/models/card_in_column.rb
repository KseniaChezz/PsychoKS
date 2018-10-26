class CardInColumn < ApplicationRecord
  belongs_to :card
  belongs_to :column 
end
