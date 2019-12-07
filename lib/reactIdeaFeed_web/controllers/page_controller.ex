defmodule ReactIdeaFeedWeb.PageController do
  use ReactIdeaFeedWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
