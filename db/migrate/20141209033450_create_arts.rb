class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string  :name
      t.string :author
      t.string :category
      t.text :description
      t.string :url
      t.timestamps
    end
  end
end
