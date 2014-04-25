module Imgur
  class Image < Model
    base_uri "api.imgur.com/3/image"

    def self.collection(images)
      images.map do |image|
        new(image)
      end
    end
  end
end
