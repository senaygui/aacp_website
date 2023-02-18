class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.string :overview, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
