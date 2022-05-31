class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :author
      t.string :category
      t.string :cock_time
      t.string :integer
      t.string :cuisine
      t.string :image
      t.integer :prep_time
      t.float :ratings
      t.string :title
      t.text :ingredients[]

      t.timestamps
    end
  end
end
