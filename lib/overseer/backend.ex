defmodule Overseer.Backend do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch
  
  def init(options) do
    options
  end
  
  def start_link do
    Plug.Adapters.Cowboy.http __MODULE__, []
  end

  get "/" do
    conn
    |> send_resp(200, "hello, world!")
  end
end
