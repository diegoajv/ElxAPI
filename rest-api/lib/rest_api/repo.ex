defmodule RestApi.Repo do
  use Ecto.Repo,
    otp_app: :rest_api,
    adapter: Ecto.Adapters.Postgres
end
