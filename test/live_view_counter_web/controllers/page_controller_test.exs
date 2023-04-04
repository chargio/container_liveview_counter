defmodule LiveViewCounterWeb.PageControllerTest do
  use LiveViewCounterWeb.ConnCase

  test "GET /phoenix", %{conn: conn} do
    conn = get(conn, ~p"/phoenix")
    assert html_response(conn, 200) =~ "Peace of mind from prototype to production"
  end

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "The count is"
  end
end
