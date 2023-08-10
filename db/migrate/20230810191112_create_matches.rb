class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :address
      t.float :price
      t.string :field_type
      t.datetime :datetime

      t.timestamps
    end
  end
end
