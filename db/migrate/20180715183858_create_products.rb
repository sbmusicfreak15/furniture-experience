class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desription
      t.string :image_url

      t.timestamps
    end
  end
end
