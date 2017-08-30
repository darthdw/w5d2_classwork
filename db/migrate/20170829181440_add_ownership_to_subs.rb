class AddOwnershipToSubs < ActiveRecord::Migration[5.1]
  def change
    add_column(:subs, :owner_id, :integer)
  end
end
