defmodule ScyllaWeb.Router do
  use ScyllaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: ScyllaWeb.Schema,
      interface: :simple,
      context: %{pubsub: ScyllaWeb.Endpoint}
  end
end
