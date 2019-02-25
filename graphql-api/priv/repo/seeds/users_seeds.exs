alias GraphqlApi.Repo
alias GraphqlApi.Admin.User

Repo.insert!(%User{
  name: "Ryan Swapp",
  email: "ryan@ryan.com"
})

Repo.insert!(%User{
  name: "Rosie",
  email: "rosie@rosie.com"
})
