class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :about_me
      t.string :city
      t.string :state
      t.attachment :avatar
      t.string :phone_no
      t.string :gender
      t.string :occupation
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
