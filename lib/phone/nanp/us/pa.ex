defmodule Phone.NANP.US.PA do
  use Helper.Area

  def regex, do: ~r/^(1)(215|267|272|412|484|570|610|717|724|814|878)([2-9].{6})$/
  def area_name, do: "Pennsylvania"
  def area_type, do: "state"
  def area_abbreviation, do: "PA"

  matcher ["1215", "1267", "1272", "1412", "1484", "1570", "1610", "1717", "1724",
           "1814", "1878"]
end
