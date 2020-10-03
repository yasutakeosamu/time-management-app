class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null:false
      t.string :text
      t.integer :inportance, null:false
      t.date :deadline, null:false
      t.string :hour, null:false
      t.references :user, foreign_key:true
      t.references :board, foreign_key:true
      t.boolean :check
      t.timestamps
    end
  end
end
