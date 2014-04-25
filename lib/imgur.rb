require "imgur/version"

require "imgur/model"
require "imgur/album"
require "imgur/image"

module Imgur
  class Configuration
    attr_accessor :client_id

    def initialize
      self.client_id = nil
    end
  end

  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Configuration.new
    yield(config)
  end
end
