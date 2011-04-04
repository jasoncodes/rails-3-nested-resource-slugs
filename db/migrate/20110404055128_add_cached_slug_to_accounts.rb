class AddCachedSlugToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :cached_slug, :string
    add_index :accounts, :cached_slug, :unique => true
  end

  def self.down
    remove_column :accounts, :cached_slug
  end
end
