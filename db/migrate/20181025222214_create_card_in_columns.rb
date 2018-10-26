class CreateCardInColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :card_in_columns do |t|
      t.integer :card_id
      t.integer :column_id

      t.timestamps
    end
  end
end
