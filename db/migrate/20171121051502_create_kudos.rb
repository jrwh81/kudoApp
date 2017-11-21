class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.text :description
      t.integer :organization_id
      t.integer :given_by_id

      t.timestamps null: false
    end
  end
end
