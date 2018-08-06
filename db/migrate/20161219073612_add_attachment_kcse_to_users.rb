class AddAttachmentKcseToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :kcse
    end
  end

  def self.down
    remove_attachment :users, :kcse
  end
end
