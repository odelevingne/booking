class BookingRequest

  attr_reader :row

  def initialize(hash)
    @booking_info = hash
    @row = hash[:startrow]
  end

  def necessary_fields?
    @booking_info.size == 5
  end

  def valid_id?
    @booking_info[:id] >= 0
  end

  def single_row?
    @booking_info[:startrow] == @booking_info[:endrow]
  end

  def ascending_order?
    @booking_info[:firstseat] <= @booking_info[:lastseat]
  end

  def number_of_seats
    @booking_info[:lastseat] - @booking_info[:firstseat] + 1
  end

end