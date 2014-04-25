require "imgur/version"

module Imgur
  autoload :Model, 'imgur/model'
  autoload :Album, 'imgur/album'
  autoload :Image, 'imgur/image'

  autoload :Configuration, 'imgur/configuration'

  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Configuration.new
    yield(config)
  end
end
