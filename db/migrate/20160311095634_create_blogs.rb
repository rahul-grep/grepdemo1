class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :user
      t.string :title
      t.text :detail
      t.timestamps null: false
    end
  end
end
