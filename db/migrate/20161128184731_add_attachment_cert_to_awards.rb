class AddAttachmentCertToAwards < ActiveRecord::Migration
  def self.up
    change_table :awards do |t|
      t.attachment :cert
    end
  end

  def self.down
    remove_attachment :awards, :cert
  end
end
