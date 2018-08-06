class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :nssf
      t.string :nhif
      t.string :kra_pin

      t.timestamps
    end
  end
end
