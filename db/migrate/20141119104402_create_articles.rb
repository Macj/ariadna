class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :short_desc
      t.text :desc

      t.timestamps
    end
    add_attachment :articles, :photo
  end
end
