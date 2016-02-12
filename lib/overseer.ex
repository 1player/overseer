defmodule Overseer do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Overseer.Repo, []),
      worker(Overseer.Backend, [])
    ]

    opts = [strategy: :one_for_one, name: Overseer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
