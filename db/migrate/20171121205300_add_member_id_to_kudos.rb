class AddMemberIdToKudos < ActiveRecord::Migration
  def change
    add_column :kudos, :member_id, :integer
  end
end
