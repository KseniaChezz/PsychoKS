class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :type
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
