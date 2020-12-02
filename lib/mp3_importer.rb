class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path

  end

  def files
    Dir.glob("#{@path}/*.mp3").sub(@path)
  end


  def import

  end

end
