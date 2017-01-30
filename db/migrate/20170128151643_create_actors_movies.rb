class CreateActorsMovies < ActiveRecord::Migration
  def change
    create_table :actors_movies, id:false do |t|
      t.integer :movie_id
      t.integer :actor_id
    end
  end
end
