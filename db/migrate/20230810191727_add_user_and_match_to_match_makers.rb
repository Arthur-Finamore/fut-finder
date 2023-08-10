class AddUserAndMatchToMatchMakers < ActiveRecord::Migration[7.0]
  def change
    add_reference :match_makers, :user, null: false, foreign_key: true
    add_reference :match_makers, :match, null: false, foreign_key: true
  end
end
