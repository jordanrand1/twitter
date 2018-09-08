class RemoveProfileImagefromBio < ActiveRecord::Migration[5.2]
  def change
    remove_column :bios, :profile_image
  end
end
