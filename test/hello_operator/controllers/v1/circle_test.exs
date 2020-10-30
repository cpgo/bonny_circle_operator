defmodule HelloOperator.Controller.V1.CircleTest do
  @moduledoc false
  use ExUnit.Case, async: false
  alias HelloOperator.Controller.V1.Circle

  describe "add/1" do
    test "returns :ok" do
      event = %{}
      result = Circle.add(event)
      assert result == :ok
    end
  end

  describe "modify/1" do
    test "returns :ok" do
      event = %{}
      result = Circle.modify(event)
      assert result == :ok
    end
  end

  describe "delete/1" do
    test "returns :ok" do
      event = %{}
      result = Circle.delete(event)
      assert result == :ok
    end
  end

  describe "reconcile/1" do
    test "returns :ok" do
      event = %{}
      result = Circle.reconcile(event)
      assert result == :ok
    end
  end
end
