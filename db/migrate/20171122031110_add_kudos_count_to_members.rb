class AddKudosCountToMembers < ActiveRecord::Migration
  def change
    add_column :members, :kudos_count, :integer
  end
end
