class AddNameAndStatusAndUniversityNameAndLabAndThumbnailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :status, :int
    add_column :users, :university_name, :string
    add_column :users, :lab, :string
    add_column :users, :thumbnail, :string
  end
end
