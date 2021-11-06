defmodule ElixirListFilterTest do
  use ExUnit.Case
  doctest ElixirListFilter

  test "should count numbers in a list" do
    assert ElixirListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
  end
end
