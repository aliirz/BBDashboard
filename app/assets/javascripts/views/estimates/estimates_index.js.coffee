class ProfitPilot.Views.EstimatesIndex extends Backbone.View

	template: JST['estimates/index']

	render: ->
		$(@el).html(@template())
		this