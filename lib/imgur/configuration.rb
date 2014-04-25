module Imgur
  class Configuration
    attr_accessor :client_id

    def initialize
      self.client_id = nil
    end
  end
end
