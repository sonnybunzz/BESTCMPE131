class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :title
      t.text :text
      t.string :time

      t.timestamps
    end
  end
end
