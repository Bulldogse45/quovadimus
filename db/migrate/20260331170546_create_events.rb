class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :time
      t.boolean :attending

      t.timestamps
    end
  end
end
