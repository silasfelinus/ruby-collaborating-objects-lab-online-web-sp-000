class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path

  end

  def files
    Dir[@path](*.mp3)
  end


  def import

  end

end
