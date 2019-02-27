alias GraphqlApi.Repo
alias GraphqlApi.Blog.Post

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  data: %{
    "site" => "ABC",
    "section" => "Sports",
    "topic" => "Soccer"
  },
  user_id: [1, 2] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  data: %{
    "site" => "DEF",
    "section" => "Politics",
    "topic" => "National"
  },
  user_id: [1, 2] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  data: %{
    "site" => "ABC",
    "section" => "Videogames",
    "topic" => "Xbox"
  },
  user_id: [1, 2] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  data: %{
    "site" => "DEF",
    "section" => "Economics",
    "topic" => "Asia"
  },
  user_id: [1, 2] |> Enum.take_random(1) |> hd
})

Repo.insert!(%Post{
  title: Faker.Lorem.sentence,
  body: Faker.Lorem.paragraph,
  data: %{
    "site" => "ABC",
    "section" => "Videogames",
    "topic" => "PS3"
  },
  user_id: [1, 2] |> Enum.take_random(1) |> hd
})
