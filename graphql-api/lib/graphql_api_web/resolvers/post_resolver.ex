defmodule GraphqlApiWeb.Resolvers.PostResolver do
  alias GraphqlApi.Blog

  def all(_args, _info) do
    {:ok, Blog.list_posts()}
  end

  def key(key_name) do
    fn parent, _, _ ->
      {:ok, Map.get(parent, key_name)}
    end
  end
end
