class CreateVillages < ActiveRecord::Migration[5.0]
  def change
    create_table :villages do |t|
      t.string :name
      t.belongs_to :sublocation, foreign_key: true

      t.timestamps
    end
  end
end
