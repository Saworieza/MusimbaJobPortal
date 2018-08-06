class CreateBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :contact_person
      t.string :role
      t.string :box_number
      t.string :size
      t.string :phone
      t.string :email
      t.string :building
      t.string :street
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
