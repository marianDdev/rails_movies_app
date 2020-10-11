class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.timestamps
      t.text :title
      t.text :summary
      t.text :description
      t.text :img_src
    end
  end
end
