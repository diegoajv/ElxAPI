defmodule GraphqlApiWeb.Schemas.Schema do
  use Absinthe.Schema
  alias GraphqlApiWeb.Resolvers
  import_types GraphqlApiWeb.Schemas.Types

  query do
    field :posts, list_of(:post) do
      resolve &Resolvers.PostResolver.all/2
    end

    field :users, list_of(:user) do
      resolve &Resolvers.UserResolver.all/2
    end
  end
end
