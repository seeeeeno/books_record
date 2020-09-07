class AddProfileImageIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profileimage_id, :string
  end
end
