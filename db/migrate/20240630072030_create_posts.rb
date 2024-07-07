class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :schedule_id
      t.string :title
      t.string :memo
      t.integer :startdate
      t.integer :enddate
      t.integer :allday
      t.integer :update

      t.timestamps
    end
  end
end
