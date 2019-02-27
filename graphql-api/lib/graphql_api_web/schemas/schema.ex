defmodule GraphqlApiWeb.Schemas.Schema do
  use Absinthe.Schema
  alias GraphqlApiWeb.Resolvers
  import_types GraphqlApiWeb.Schemas.Types

  input_object :user_filter do
    field :name, :string
    field :email, :string
  end

  query do

    field :posts, list_of(:post) do
      resolve &Resolvers.PostResolver.all/2
    end

    field :users, list_of(:user) do
      arg :filter, :user_filter
      resolve &Resolvers.UserResolver.all/3
    end

    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.UserResolver.find_user/3
    end
  end
end
