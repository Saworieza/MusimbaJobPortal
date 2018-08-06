class AddAttachmentCoverletterToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :coverletter
    end
  end

  def self.down
    remove_attachment :users, :coverletter
  end
end
