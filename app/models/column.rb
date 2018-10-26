class Column < ApplicationRecord
  belongs_to :board
  # has_many :cards, through: card_in_column
end
