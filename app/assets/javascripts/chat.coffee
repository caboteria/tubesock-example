$ ->
  socket = new WebSocket("ws://#{window.location.host}/chat")

  $form = $("form#chat")
  $form.on "submit", (event) ->
    event.preventDefault()
    $input = $form.find("input#message")
    message = $input.val()
    socket.send(message)
    $input.val("")

  $output = $("#output")

  socket.onmessage = (event) ->
    $output.append(event.data + "\n")
