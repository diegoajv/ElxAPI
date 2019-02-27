defmodule GraphqlApiWeb.Resolvers.UserResolver do
  alias GraphqlApi.Admin

  def all(_args, _info) do
    {:ok, Admin.list_users()}
  end
end
