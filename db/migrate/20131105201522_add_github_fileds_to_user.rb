class AddGithubFiledsToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.column :gh_uid, :string
      t.column :gh_name, :string
      t.column :gh_login, :string
      t.column :gh_email, :string
      t.column :gh_profile, :string
      t.column :gh_website, :string  
      t.index :gh_uid  
      t.index :gh_login  
    end
  end
end
