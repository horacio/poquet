require "poquet/client"
require "poquet/version"

module Poquet
  def self.client
    Poquet::Client.new
  end
end
