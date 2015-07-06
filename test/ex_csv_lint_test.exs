defmodule ExCsvLintTest do
  use ExUnit.Case

  test "#valid? is valid if passed valid CSV" do
    csv = "a,b,c\n1,2,3\n4,5,6"
    assert {:ok, csv} = ExCsvLint.valid?(csv)
  end

  test "#valid? returns 'No content' error if passed nil" do
    assert {:error, "No content"} = ExCsvLint.valid?(nil)
  end

  test "#valid? returns 'No content' error if passed an empty string" do
    assert {:error, "No content"} = ExCsvLint.valid?("")
  end
end
