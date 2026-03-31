class AddBirthdayAndAddressToPeople < ActiveRecord::Migration[8.1]
  def change
    add_column :people, :birthday, :date
    add_column :people, :address, :text
  end
end
