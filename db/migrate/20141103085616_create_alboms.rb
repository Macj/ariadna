class CreateAlboms < ActiveRecord::Migration
  def change
    create_table :alboms do |t|
      t.string :title
      t.timestamp :when

      t.timestamps
    end
  end
end
