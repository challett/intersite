class AddPictureUrlToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :picture_url, :string
  end
end
