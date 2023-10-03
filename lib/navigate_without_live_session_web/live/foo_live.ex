defmodule NavigateWithoutLiveSessionWeb.FooLive do
  use NavigateWithoutLiveSessionWeb, :live_view
  require Logger
  
  def mount(_params, _session, socket) do
    Logger.debug("Foo connected = #{connected?(socket)}")
    
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Foo</h1>
    <.link navigate={~p"/bar"}>Bar</.link>
    """
  end
end
