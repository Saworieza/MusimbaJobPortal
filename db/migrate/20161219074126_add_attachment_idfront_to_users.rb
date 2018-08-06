class AddAttachmentIdfrontToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :idfront
    end
  end

  def self.down
    remove_attachment :users, :idfront
  end
end
