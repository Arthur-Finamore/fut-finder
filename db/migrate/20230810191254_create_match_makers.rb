class CreateMatchMakers < ActiveRecord::Migration[7.0]
  def change
    create_table :match_makers do |t|

      t.timestamps
    end
  end
end
