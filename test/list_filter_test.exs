defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns 0 numbers odd of the list" do
      no_item = []
      expected_response = 0
      response = ListFilter.call(no_item)

      assert response === expected_response
    end

    test "returns 1 number odd of the list" do
      one_odd = ["banana", "1", "usa"]
      expected_response = 1
      response = ListFilter.call(one_odd)

      assert response === expected_response
    end

    test "returns 3 numbers odd of the list" do
      many_odd = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_response = 3
      response = ListFilter.call(many_odd)

      assert response === expected_response
    end
  end
end
