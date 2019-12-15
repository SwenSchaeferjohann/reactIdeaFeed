defmodule ReactIdeaFeedWeb.MainChannel do
  
  use ReactIdeaFeedWeb, :channel

  def join("room:lobby", payload, socket) do
    if authorized?(payload) do
      send(self(), :after_join)
      {:ok, socket}
    else
    end
  end

  defp authorized?(_payload) do
    true
  end

  def handleInfo(:after_join, socket) do
    
  end


  def handleIn("shout", payload, socket) do
    
  end


  def handleIn("ping", payload, socket) do
    
  end



end