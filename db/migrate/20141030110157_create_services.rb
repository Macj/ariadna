class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :small_desc
      t.text :description

      t.timestamps
    end
    add_attachment :services, :photo
  end
end
