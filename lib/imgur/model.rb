module Imgur
  class Model
    include HTTParty

    attr_accessor :errors, :response, :attributes

    def initialize(attributes)
      self.attributes = attributes
      self.errors = []
    end

    def self.find_by_id(id)
      response = get("/#{id}", headers: headers)
      return unless response["success"] == true

      album_data = ActiveSupport::JSON.decode(response.body)["data"]
      return unless album_data.present?

      new(album_data)
    end

    def attribute_keys
      @keys ||= attributes.keys
    end

    def method_missing(meth, *args, &block)
      return attributes[meth.to_s] if meth.to_s.in? attribute_keys
      super
    end

    def self.headers
      { "Authorization" => "Client-ID #{Imgur.config.client_id}" }
    end
  end
end
