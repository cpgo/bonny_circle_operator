defmodule HelloOperatorTest do
  use ExUnit.Case
  doctest HelloOperator

  test "greets the world" do
    assert HelloOperator.hello() == :world
  end
end
