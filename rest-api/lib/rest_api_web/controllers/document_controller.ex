defmodule RestApiWeb.DocumentController do
  use RestApiWeb, :controller

  alias RestApi.Management
  alias RestApi.Management.Document

  action_fallback RestApiWeb.FallbackController

  def index(conn, _params) do
    documents = Management.list_documents()
    render(conn, "index.json", documents: documents)
  end

  def show(conn, %{"id" => id}) do
    document = Management.get_document!(id)
    render(conn, "show.json", document: document)
  end
end
