require 'spec_helper'

describe Moysklad::Entities::Currency do

  before do
    stub_rest :Currency, :list, 0
  end

  let(:resource) { Moysklad::Resources::Currencies.indexed client: client }

  describe do
    let(:currency) { resource.all.first }

    subject { currency }

    it do
      expect(subject).to be_a Moysklad::Entities::Currency
    end

    it 'unicoded xml' do
      expect(subject.to_xml).to start_with '<?xml version="1.0" encoding="utf-8"?>'
    end

  end
end
