class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :zipcode
      t.boolean :linkcard
      t.boolean :open_monday
      t.boolean :open_tuesday
      t.boolean :open_wednesday
      t.boolean :open_thursday
      t.boolean :open_friday
      t.boolean :open_saturday
      t.boolean :open_sunday

      t.timestamps
    end
  end
end
