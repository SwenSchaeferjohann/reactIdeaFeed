defmodule ReactIdeaFeed.Repo do
  use Ecto.Repo,
    otp_app: :reactIdeaFeed,
    adapter: Ecto.Adapters.Postgres
end
