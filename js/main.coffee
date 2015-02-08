---
---

$ ->
  config = { formats: ["mp3"] }
  apito = new buzz.sound("sounds/apito", config)
  coracao = new buzz.sound("sounds/coracao", config)
  cuica = new buzz.sound("sounds/cuica", config)
  ganza = new buzz.sound("sounds/ganza", config)
  pandeiro = new buzz.sound("sounds/pandeiro", config)
  tamborim = new buzz.sound("sounds/tamborim", config)
  group = new buzz.group(apito, coracao, cuica, ganza, pandeiro, tamborim)

  group.play().loop()

  $('#apito').click () ->
    apito.toggleMute()
  $('#cuica').click () ->
    cuica.toggleMute()
  $('#chacoalho').click () ->
    ganza.toggleMute()
  $('#pandeiro').click () ->
    pandeiro.toggleMute()
  $('#tamborim').click () ->
    tamborim.toggleMute()
