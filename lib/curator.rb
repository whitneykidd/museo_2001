class Curator
  attr_reader :photographs, :artists
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      id == artist.id
    end
  end

  def photographs_by_artist
    photos_by_artist = {}
    photo_id = @photographs.map do |photograph|
      photograph.artist_id
    end
  end
end
