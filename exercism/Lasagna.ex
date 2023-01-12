defmodule Lasagna do
  def expected_minutes_in_oven() do 40 end

  def remaining_minutes_in_oven(elapsed) do
    expected_minutes_in_oven() - elapsed
  end

  def preparation_time_in_minutes(layer) do
    2 * layer
  end

  def total_time_in_minutes(add, already) do
    preparation_time_in_minutes(add) + already
  end

  def alarm() do "Ding!" end

end
