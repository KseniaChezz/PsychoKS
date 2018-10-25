class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :name
      t.integer :position
      t.integer :board_id

      t.timestamps
    end
  end
end
