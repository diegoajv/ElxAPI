defmodule GraphqlApiWeb.Schemas.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: GraphqlApi.Repo
  alias GraphqlApiWeb.Resolvers

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string
    field :posts, list_of(:post), resolve: assoc(:posts)
  end

  object :attribute do
    field :site, :string, resolve: Resolvers.PostResolver.key("site")
    field :section, :string, resolve: Resolvers.PostResolver.key("section")
    field :topic, :string, resolve: Resolvers.PostResolver.key("topic")
  end

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :data, :attribute
    field :user, :user, resolve: assoc(:user)
  end
end
