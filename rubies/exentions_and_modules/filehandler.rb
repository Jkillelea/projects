class FileHandler < Dir

  def initialize
  end

# returns string array of items in directory
  public
  def list(directory = ".")
    Dir.entries(directory)
  end

  public
  def files_in(directory = ".")
    # Dir.entries(directory).select {|file_name| File.file? file_name}
    Dir["#{directory}/*"].select { |file_name| File.file? file_name  }
  end

  public
  def directories_in(directory = ".")
    Dir["#{directory}/*"].select { |file_name| File.directory? file_name  }
  end

  # TODO: make everything else work, maybe make this into module?

end
