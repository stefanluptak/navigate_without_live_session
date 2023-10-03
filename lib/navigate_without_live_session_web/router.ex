defmodule NavigateWithoutLiveSessionWeb.Router do
  use NavigateWithoutLiveSessionWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {NavigateWithoutLiveSessionWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", NavigateWithoutLiveSessionWeb do
    pipe_through :browser

    live "/foo", FooLive    
    live "/bar", BarLive    
  end
end
