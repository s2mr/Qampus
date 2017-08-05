class CreateUnivs < ActiveRecord::Migration[5.1]
  def change
    create_table :univs do |t|
      t.string :name

      t.timestamps
    end
  end
end
