defmodule ReactIdeaFeedWeb.MainChannel do
  
  use ReactIdeaFeedWeb, :channel

  def join("room:lobby", payload, socket) do
    if authorized?(payload) do
      send(self(), :after_join) #1st action
      {:ok, socket} #2nd action
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  
  defp authorized?(_payload) do
    true #no auth
  end

  def handleInfo(:after_join, socket) do
    ReactIdeaFeed.Post.get_posts()
    |> Enum.each(fn p -> push(socket, "shout", ))
  end


  def handleIn("shout", payload, socket) do
    
  end


  def handleIn("ping", payload, socket) do
    
  end



end