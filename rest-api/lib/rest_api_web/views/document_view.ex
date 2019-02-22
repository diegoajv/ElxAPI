defmodule RestApiWeb.DocumentView do
  use RestApiWeb, :view
  alias RestApiWeb.DocumentView

  def render("index.json", %{documents: documents}) do
    %{data: render_many(documents, DocumentView, "document.json")}
  end

  def render("show.json", %{document: document}) do
    %{data: render_one(document, DocumentView, "document.json")}
  end

  def render("document.json", %{document: document}) do
    %{id: document.id,
      name: document.name,
      published: document.published,
      content: document.content,
      view_content: document.view_count,
      project_id: document.project_id}
  end
end
