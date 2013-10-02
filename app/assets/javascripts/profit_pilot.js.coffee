window.ProfitPilot =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	# new ProfitPilot.Routers.Projects()
  	new ProfitPilot.Routers.Dashboard()
  	Backbone.history.start()

$(document).ready ->
  ProfitPilot.initialize()
