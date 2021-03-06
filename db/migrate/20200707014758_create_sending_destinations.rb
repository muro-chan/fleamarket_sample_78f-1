class CreateSendingDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :sending_destinations do |t|
      t.string :destination_first_name
      t.string :destination_family_name
      t.string :destination_first_name_kana
      t.string :destination_family_name_kana
      t.integer :post_code
      t.string :city
      t.string :house_number
      t.string :building_name
      t.integer :phone_number
      t.string :prefecture_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
