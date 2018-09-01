# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :scylla, ScyllaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xfYB0RhbHoDaU1LutyBXe1tKD6LLh6hd7PytCApmZ3vde0mUgnujXooxgvidrHnN",
  render_errors: [view: ScyllaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Scylla.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
