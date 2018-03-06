command: "ps -A -o %cpu | awk '{s+=$1} END {printf \"%.1f\", s}'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="cpu"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cpu span:first-child", el).text("  #{output.substring(0,4)}")
    $icon = $(".cpu span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bar-chart")

style: """
  -webkit-font-smoothing: antialiased
  color: #c0c0c0
  font: 12px Input
  right: 315px
  width: 55px
  top: 4px
"""
