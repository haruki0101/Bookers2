class AddProfileImageIdToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :profile_image_id, :string
  end
end
