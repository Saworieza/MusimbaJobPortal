class AddAttachmentKcpeToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :kcpe
    end
  end

  def self.down
    remove_attachment :users, :kcpe
  end
end
