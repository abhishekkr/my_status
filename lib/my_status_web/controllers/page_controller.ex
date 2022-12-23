defmodule MyStatusWeb.PageController do
  use MyStatusWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
