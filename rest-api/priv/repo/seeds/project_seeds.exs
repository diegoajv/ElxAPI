alias RestApi.Repo
alias RestApi.Management.Project

Repo.insert!(%Project{
  title: "Project Title - 1",
  description: "Project Description - 1",
})

Repo.insert!(%Project{
  title: "Project Title - 2",
  description: "Project Description - 2",
})

Repo.insert!(%Project{
  title: "Project Title - 3",
  description: "Project Description - 3",
})
