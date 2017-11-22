class RemoveOrganizationIdFromKudos < ActiveRecord::Migration
  def change
    remove_column :kudos, :organization_id, :integer
  end
end
