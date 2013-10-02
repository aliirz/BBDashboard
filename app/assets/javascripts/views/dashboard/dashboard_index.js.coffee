class ProfitPilot.Views.DashboardIndex extends Backbone.View

	template: JST['dashboard/index']

	render: ->
		$(@el).html(@template())
		this