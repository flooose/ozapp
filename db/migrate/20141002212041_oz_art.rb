class OzArt < ActiveRecord::Migration
  def change
    create_table :oz_arts do |t|
      t.string :file
      t.string :comment
      t.float :lat
      t.float :long
      t.timestamps
    end
  end
end
