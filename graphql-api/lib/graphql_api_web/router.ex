defmodule GraphqlApiWeb.Router do
  use GraphqlApiWeb, :router
  alias GraphqlApiWeb.Schemas

  forward "/api", Absinthe.Plug,
    schema: Schemas.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Schemas.Schema
end
