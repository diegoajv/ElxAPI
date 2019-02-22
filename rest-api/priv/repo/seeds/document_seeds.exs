alias RestApi.Repo
alias RestApi.Management.Document

Repo.insert!(%Document{
  name: "First Document",
  content: "First Document Content",
  view_count: 1,
  published: true,
  project_id: 1
})
