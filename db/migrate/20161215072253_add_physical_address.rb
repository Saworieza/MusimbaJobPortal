class AddPhysicalAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :physical_address, :text
  end
end
