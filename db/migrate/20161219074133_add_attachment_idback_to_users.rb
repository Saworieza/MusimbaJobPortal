class AddAttachmentIdbackToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :idback
    end
  end

  def self.down
    remove_attachment :users, :idback
  end
end
