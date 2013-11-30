class AddGhTokenToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.column :gh_token, :string
    end
  end
end
