defmodule PresenceChat.UserSocket do
  use Phoenix.Socket

  channel "room:lobby", PresenceChat.RoomChannel
  transport :websocket, Phoenix.Transports.WebSocket

  def connect(params, socket) do
    {:ok, assign(socket, :user, params["username"])}
  end

  def id(_socket), do: nil
end
