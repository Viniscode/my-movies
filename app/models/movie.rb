class Movie < ActiveRecord::Base
    validates :title, presence: true
    validates :title, uniqueness: {scope: :release_date,
    message: "%{value} Já tem um nome para este titulo"}
    
    belongs_to :director, class_name: "Director", foreign_key: "director_id"
    has_and_belongs_to_many :actors, association_foreign_key: 'actor_id', join_table: 'actors_movies'
    
end