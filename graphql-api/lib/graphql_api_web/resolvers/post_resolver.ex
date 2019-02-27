defmodule GraphqlApiWeb.Resolvers.PostResolver do
  alias GraphqlApi.Blog

  def all(_args, _info) do
    {:ok, Blog.list_posts()}
  end
end
