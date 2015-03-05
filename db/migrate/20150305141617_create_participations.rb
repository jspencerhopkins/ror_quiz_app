class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :hobby_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
