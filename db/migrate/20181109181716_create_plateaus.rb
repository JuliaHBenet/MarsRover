class CreatePlateaus < ActiveRecord::Migration[5.1]
  def change
    create_table :plateaus do |t|
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
