class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string "movie_name"
      t.integer "year"
      t.string "MPAA_rating"
      t.string "studio"

      t.timestamps
    end
  end
end
