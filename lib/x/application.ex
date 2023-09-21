defmodule X.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      XWeb.Telemetry,
      # Start the Ecto repository
      X.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: X.PubSub},
      # Start Finch
      {Finch, name: X.Finch},
      # Start the Endpoint (http/https)
      XWeb.Endpoint
      # Start a worker by calling: X.Worker.start_link(arg)
      # {X.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: X.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    XWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
