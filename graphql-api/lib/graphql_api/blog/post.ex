defmodule GraphqlApi.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias GraphqlApi.Admin

  schema "posts" do
    field :title, :string
    field :body, :string
    field :data, :map
    belongs_to :user, Admin.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :user_id])
    |> validate_required([:title, :body, :user_id])
  end
end
