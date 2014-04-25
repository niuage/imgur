module Imgur
  class Album < Model
    base_uri "https://api.imgur.com/3/album"

    def images
      @images ||= Imgur::Image.collection(attributes["images"])
    end

  end
end
