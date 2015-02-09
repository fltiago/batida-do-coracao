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

  group.bind 'loadedmetadata', (e) ->
    group.play().loop()

  $('.apito').click () ->
    $(this).find('.small-png').toggle()
    $(this).find('.small-gif').toggle()
    apito.toggleMute()

  $('.cuica').click () ->
    $(this).find('.small-png').toggle()
    $(this).find('.small-gif').toggle()
    cuica.toggleMute()

  $('.chocalho').click () ->
    ganza.toggleMute()
    $(this).find('.small-png').toggle()
    $(this).find('.small-gif').toggle()

  $('.pandeiro').click () ->
    pandeiro.toggleMute()
    $(this).find('.small-png').toggle()
    $(this).find('.small-gif').toggle()

  $('.tamborim').click () ->
    tamborim.toggleMute()
    $(this).find('.small-png, .small-gif').toggle()


