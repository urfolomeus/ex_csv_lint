defmodule ExCsvLint do
  def valid?(nil), do: {:error, "No content"}
  def valid?(""),  do: {:error, "No content"}
  def valid?(csv) do
    {:ok, csv}
  end
end
