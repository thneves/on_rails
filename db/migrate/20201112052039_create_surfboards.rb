class CreateSurfboards < ActiveRecord::Migration[6.0]
  def change
    create_table :surfboards do |t|
      t.string :shaper
      t.string :model
      t.float :size

      t.timestamps
    end
  end
end
