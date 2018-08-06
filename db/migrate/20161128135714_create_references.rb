class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.string :name
      t.string :company
      t.string :position
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
