defmodule RestApiWeb.Router do
  use RestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :json_api do
    plug :accepts, ["json-api"]
    plug JaSerializer.Deserializer
  end

  scope "/api", RestApiWeb do
    pipe_through :api

    resources "/documents", DocumentController, only: [:index, :show]
  end

  scope "/api", RestApiWeb do
    pipe_through :json_api

    resources "/projects", ProjectController, only: [:index, :show]
  end
end
