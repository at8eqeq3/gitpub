class AddFieldsToRepos < ActiveRecord::Migration
  def change
    change_table :repos do |t|
      t.boolean :is_cloned
      t.datetime :pulled_at
    end
  end
end
