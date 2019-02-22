defmodule RestApiWeb.ProjectView do
  use RestApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
