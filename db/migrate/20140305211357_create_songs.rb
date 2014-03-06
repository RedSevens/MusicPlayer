class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :file
      t.references :playlist, index: true

      t.timestamps
    end
  end
end
