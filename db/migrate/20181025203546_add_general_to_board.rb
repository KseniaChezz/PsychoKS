class AddGeneralToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :general, :boolean
  end
end
