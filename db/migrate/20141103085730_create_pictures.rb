class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :albom_id

      t.timestamps
    end
    add_attachment :pictures, :image
  end
end
