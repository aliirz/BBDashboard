class ProfitPilot.Views.ProjectsIndex extends Backbone.View

	template: JST['projects/index']

	render: ->
		$(@el).html(@template())
		this