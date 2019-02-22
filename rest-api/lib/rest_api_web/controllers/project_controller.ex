defmodule RestApiWeb.ProjectController do
  use RestApiWeb, :controller

  alias RestApi.Management
  alias RestApi.Management.Project

  action_fallback RestApiWeb.FallbackController

  def index(conn, _params) do
    projects = Management.list_projects()
    render(conn, "index.json-api", data: projects)
  end

  def show(conn, %{"id" => id}) do
    project = Management.get_project!(id)
    render(conn, "show.json-api", data: project)
  end
end
