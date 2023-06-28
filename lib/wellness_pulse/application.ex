defmodule WellnessPulse.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      WellnessPulseWeb.Telemetry,
      # Start the Ecto repository
      WellnessPulse.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: WellnessPulse.PubSub},
      # Start Finch
      {Finch, name: WellnessPulse.Finch},
      # Start the Endpoint (http/https)
      WellnessPulseWeb.Endpoint
      # Start a worker by calling: WellnessPulse.Worker.start_link(arg)
      # {WellnessPulse.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WellnessPulse.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    WellnessPulseWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
