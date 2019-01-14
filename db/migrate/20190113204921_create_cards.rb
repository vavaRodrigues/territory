class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :number
      t.date :dt_start
      t.date :dt_end

      t.timestamps
    end
  end
end
