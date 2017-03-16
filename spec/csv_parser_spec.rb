require 'rspec'
require_relative '../csv_parser'

describe CsvParser do
  let(:filepath){'fixtures/basic.csv'}

  it 'parses a row into a hash' do
    dir = File.dirname(__FILE__)
    results = CsvParser.new.parse File.join(dir,filepath)
    expect(results.length).to eq 1
  end
end
