defmodule MyStatusWeb.PageControllerTest do
  use MyStatusWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "A Sample App"
  end
end
