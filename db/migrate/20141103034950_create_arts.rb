class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :category
      t.text :description
      t.string :url
      t.string :author

      t.timestamps
    end
  end
end
