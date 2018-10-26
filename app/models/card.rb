class Card < ApplicationRecord
  def self.types
    %w(Task Project)
  end

  # has_many :card_in_columns
  # has_many :columns, through: :card_in_columns
end
