command: "echo $(/usr/local/bin/chunkc tiling::query --window name)"

refreshFrequency: 500 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #c0c0c0
  font: 12px Input
  height: 16px
  left: 10px
  overflow: hidden
  white-space: nowrap
  text-overflow: ellipsis
  top: 6px
  width: 498px
"""
