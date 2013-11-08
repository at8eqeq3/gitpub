class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name
      t.string :description
      t.string :gh_id
      t.string :gh_name
      t.references :user
      t.timestamps
    end
  end
end
