require 'spec_helper'

describe Poquet do
  describe '.client' do
    it 'returns the Poquet::Client instance' do
      client = Poquet.client
      expect(client).to be_a(Poquet::Client)
    end
  end

  describe '.configure' do
    it 'stores the client configuration' do
      Poquet.configure do |configuration|
        configuration.consumer_key = '_a_consumer_key_here_'
      end

      configuration = Poquet.configuration

      expect(configuration.consumer_key).to eq("_a_consumer_key_here_")
    end
  end
end
