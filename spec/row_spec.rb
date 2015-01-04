require 'row'

describe 'Row' do
  
  it 'is initialized with 50 seats as standard' do
    row = Row.new
    expect(row.seat_count).to eq 50
  end

  it 'can be initialized with any number of rows' do
    row = Row.new(75)
    expect(row.seat_count).to eq 75
  end

end