defmodule ApiExample.UserTest do
  use ApiExample.ModelCase

  alias ApiExample.User

  @valid_attrs %{email: "some email", name: "some name", password: "some password", stooge: "some stooge"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
