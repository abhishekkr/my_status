import Phoenix.LiveViewTest

defmodule MyStatusWeb.ServiceLiveTest do
  use MyStatusWeb.ConnCase

  test "GET /service", %{conn: conn} do
    conn = get(conn, "/service")
    assert html_response(conn, 200) =~ "My Service Status"
  end
end
