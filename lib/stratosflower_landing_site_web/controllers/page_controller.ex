defmodule StratosflowerLandingSiteWeb.PageController do
  use StratosflowerLandingSiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def bio(conn, _params) do
    render(conn, "bio.html")
  end

  def merch(conn, _params) do
    render(conn, "merch.html")
  end

  def contact(conn, _params) do
    render(conn, "contact.html")
  end
end
