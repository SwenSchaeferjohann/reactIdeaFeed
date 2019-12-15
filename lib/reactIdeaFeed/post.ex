defmodule ReactIdeaFeed.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :comments, {:array, :string}
    field :creator, :string
    field :message, :string
    field :upvotes, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:message, :creator, :comments, :upvotes])
    |> validate_required([:message, :creator, :comments, :upvotes])
  end

  def get_posts(limit \\ 20) do
    ReactIdeaFeed.Repo.all(ReactIdeaFeed.Post, limit: limit)
  end
  
end
