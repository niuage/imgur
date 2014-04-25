module Imgur
  class Album < Model
    base_uri "https://api.imgur.com/3/album"

    def images
      @images ||= Imgur::Image.collection(attributes["images"])
    end

    def image_links
      @image_links ||= images.map &:link
    end

    def cover_link
      image = find_image_by_id(cover)
      image.link if image
    end

    def find_image_by_id(id)
      images.find { |i| i.id == id }
    end
  end
end
