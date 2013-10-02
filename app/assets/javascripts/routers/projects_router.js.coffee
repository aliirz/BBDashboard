class ProfitPilot.Routers.Projects extends Backbone.Router
	routes:
		'dashboard':'index'
		'projects': 'showProject'

	index: ->
		alert "i work"

	showProject: ->
		alert 'right here'