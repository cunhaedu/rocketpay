defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all test are valid, returns an user" do
      params = %{
        name: "FakeName",
        password: "FakePassword",
        nickname: "FakeNickname",
        email: "Fake@email.com",
        age: 31
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "FakeName", age: 31, id: ^user_id } = user
    end

    test "when there are invalid params, returns an error" do
      params = %{
        name: "FakeName",
        email: "Fake@email.com",
        nickname: "FakeNickname",
        age: 15
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["can't be blank"]
      }

      assert errors_on(changeset) == expected_response
    end
  end
end
