TubesockExample::Application.routes.draw do
  root to: "chat#index"
  get "/chat" => "chat#chat", as: "chat"
end
