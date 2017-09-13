class CreateSushis < ActiveRecord::Migration[5.1]
  def change
    create_table :sushis do |t|
      t.string :name
      t.float :price
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
