class CreateTopcasts < ActiveRecord::Migration[8.1]
  def change
    create_table :topcasts do |t|
      t.string "movie_name"
      t.string "actor_name"
      t.string "character_name"

      t.timestamps
    end
  end
end
