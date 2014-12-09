module Poquet
  class Client; end

  def self.client
    @client ||= Client.new
  end
end
