require 'spec_helper'

describe Moysklad::Resources::Currencies do
  before do
    stub_rest 'Currency'
  end

  subject { described_class.new client: client }

  it do
    expect(subject.list.count).to eq 4
  end

  it  do
    expect(subject.send(:list_path)).to  eq "exchange/rest/ms/xml/Currency/list"
  end

  it do
    expect(subject.list.first).to be_a Moysklad::Entities::Currency
  end

end
