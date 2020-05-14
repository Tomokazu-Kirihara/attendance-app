class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.date :dayname, null: false
      t.text :absence, null: false
      t.text :body, null: false
      t.references :day, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
