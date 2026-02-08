class CreateTopCasts < ActiveRecord::Migration[8.1]
  def change
    create_table :top_casts do |t|
      t.timestamps
    end
  end
end
