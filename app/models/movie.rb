class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13', 'R']
## or generate the enum from values in the database
#    distinct_ratings = Array.new
#    Movie.select("rating").order("rating").distinct.each { |rating| distinct_ratings.push(rating.read_attribute("rating")) }
#    distinct_ratings
  end
end
