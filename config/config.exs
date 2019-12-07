# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reactIdeaFeed,
  ecto_repos: [ReactIdeaFeed.Repo]

# Configures the endpoint
config :reactIdeaFeed, ReactIdeaFeedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OyheKUSf+mWSu7AhM9SPX7S7hPTKj9j6FKU6JT+DiUWG33QoBTH9C+IQuHlbpJ4+",
  render_errors: [view: ReactIdeaFeedWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReactIdeaFeed.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
