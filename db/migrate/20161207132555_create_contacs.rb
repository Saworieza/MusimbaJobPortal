class CreateContacs < ActiveRecord::Migration[5.0]
  def change
    create_table :contacs do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
