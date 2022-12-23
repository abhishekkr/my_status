defmodule MyStatusWeb.ServiceLive do
  use MyStatusWeb, :live_view

  def mount(_params, _session, socket) do
    fake_status = %{name: "example.com", url: "https://example.com", status: :bad}
    socket = assign(socket, :services, [fake_status])
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>My Service Status</h1>
    <%= for svc <- @services do %>
    <div class="row">
      <div class="column"><%= svc.name %></div>
      <div class="column"><%= svc.status %></div>
      <div class="column"><%= svc.url %></div>
    </div>
    <% end %>
    """
  end
end
