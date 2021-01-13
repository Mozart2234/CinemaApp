class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :plot, null: false
      t.float :ranking, default: 0.0
      t.float :imbd_ranking, default: 0.0
      t.string :director
      t.string :poster
      t.string :running_time
      t.decimal :budget, default: 0.0
      t.decimal :revenue, default: 0.0

      t.timestamps
    end
  end
end
