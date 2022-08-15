class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :series
      t.integer :repeat
      t.integer :weight

      t.timestamps
    end
  end
end
