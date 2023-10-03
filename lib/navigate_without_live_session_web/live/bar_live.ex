defmodule NavigateWithoutLiveSessionWeb.BarLive do
  use NavigateWithoutLiveSessionWeb, :live_view
  require Logger

  def mount(_params, _session, socket) do
    Logger.debug("Bar connected = #{connected?(socket)}")
    
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Bar</h1>
    <.link navigate={~p"/foo"}>Foo</.link>
    """
  end
end
