require 'spec_helper'

describe Poquet do
  describe '.client' do
    it 'returns the Poquet::Client instance' do
      client = Poquet.client
      expect(client).to be_a(Poquet::Client)
    end
  end
end
