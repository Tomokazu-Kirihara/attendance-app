class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :dayname, null: false
      t.text :member
      t.text :absence
      t.timestamps
    end
  end
end
