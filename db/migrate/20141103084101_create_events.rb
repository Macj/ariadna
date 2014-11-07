class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :when
      t.text :description

      t.timestamps
    end
    add_attachment :events, :photo
  end
end
