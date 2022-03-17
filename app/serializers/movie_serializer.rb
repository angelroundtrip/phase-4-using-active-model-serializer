class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary
  
  # a movie summary that consisted of the movie's title and the first 50 characters of its description
  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end