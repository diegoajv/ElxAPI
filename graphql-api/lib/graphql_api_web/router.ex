defmodule GraphqlApiWeb.Router do
  use GraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlApiWeb do
    pipe_through :api
  end
end
