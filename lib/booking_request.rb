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

end