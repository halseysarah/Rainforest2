class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.string :url
      t.integer :price_in_cents
      t.string :description

      t.timestamps
    end
  end
end
