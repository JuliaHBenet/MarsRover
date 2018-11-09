class CreateRovers < ActiveRecord::Migration[5.1]
  def change
    create_table :rovers do |t|
      t.string :x
      t.string :y
      t.string :cardinal

      t.timestamps
    end
  end
end
