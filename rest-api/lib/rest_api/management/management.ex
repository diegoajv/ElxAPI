defmodule RestApi.Management do
  @moduledoc """
  The Management context.
  """

  import Ecto.Query, warn: false
  alias RestApi.Repo

  alias RestApi.Management.Project
  alias RestApi.Management.Document

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ## Examples

      iex> get_project!(123)
      %Project{}

      iex> get_project!(456)
      ** (Ecto.NoResultsError)

  """
  def get_project!(id) do
    Repo.get!(Project, id)
  end

  @doc """
  Returns the list of documents.

  ## Examples

    iex> list_documents()
    [%Document{}, ...]

  """
  def list_documents do
    Repo.all(Document)
  end

  @doc """
  Gets a single document.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ### Examples

    iex> get_project!(123)
    %Project{}

    iex> get_project!(456)
    ** (Ecto.NoResultsError)

  """
  def get_document!(id) do
    Repo.get(Document, id)
  end
end
