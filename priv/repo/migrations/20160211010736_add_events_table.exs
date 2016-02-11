defmodule Overseer.Repo.Migrations.AddEventsTable do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :host, :text
      add :service, :text
      add :state, :text
      add :time, :datetime
      add :description, :text
      add :tags, {:array, :string}, null: false
      add :metric, :float
      add :ttl, :integer, null: false
    end
    
  end
end
