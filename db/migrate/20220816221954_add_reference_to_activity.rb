class AddReferenceToActivity < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :workout, null: true, foreign_key: true
  end
end
