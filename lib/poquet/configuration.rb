module Poquet
  class Configuration
    attr_accessor :consumer_key

    def initialize
      @consumer_key = ""
    end
  end

  def self.configure
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(configuration)
    @configuration = configuration
  end
end
