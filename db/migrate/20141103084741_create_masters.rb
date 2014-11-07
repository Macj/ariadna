class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :fio
      t.text :deserts

      t.timestamps
    end
    add_attachment :masters, :photo
  end
end
