class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :fio
      t.integer :service_id
      t.text :body

      t.timestamps
    end
  end
end
