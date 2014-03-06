class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.references :user, index: true
      t.references :playlist, index: true

      t.timestamps
    end
  end
end
