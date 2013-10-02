class ProfitPilot.Views.ProjectsEdit extends Backbone.View

	template: JST['projects/edit']

	render: ->
		$(@el).html(@template())
		this