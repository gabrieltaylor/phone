defmodule Phone.BR.AC do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(68)([2-5|89].{7}|9[89].{7})$/
  def area_name, do: "Acre"
  def area_type, do: "state"
  def area_abbreviation, do: "AC"

  matcher ["5568"]
end
