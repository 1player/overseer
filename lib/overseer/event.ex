defmodule Overseer.Event do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "events" do
    field :host
    field :service
    field :state
    field :time, Ecto.DateTime
    field :description
    field :tags, {:array, :string}
    field :metric, :float
    field :ttl, :integer
  end
end
