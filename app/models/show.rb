class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    list_of_actors = []
    self.actors.each do |actor|
      list_of_actors << actor.full_name
    end
    list_of_actors
  end
end