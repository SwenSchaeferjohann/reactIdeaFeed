defmodule ReactIdeaFeed.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :message, :string
      add :creator, :string
      add :comments, {:array, :string}
      add :upvotes, :integer

      timestamps()
    end

  end
end
