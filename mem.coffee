command: "ps -A -o %mem | awk '{s+=$1} END {printf \"%.1f\", s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="nerdbar.widget/assets/font-awesome/css/font-awesome.min.css" />
  <div class="mem"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:first-child", el).text("  #{output.substring(0, 4)}")
    $icon = $(".mem span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-hdd-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #c0c0c0
  font: 12px Input
  right: 268px
  width: 50px
  top: 4px
"""
