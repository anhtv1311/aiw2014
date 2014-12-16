class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string  :name
      t.string :author
      t.string :category
      t.string :description
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
