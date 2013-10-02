class ProfitPilot.Views.CostingsIndex extends Backbone.View

	template: JST['costings/index']

	render: ->
		$(@el).html(@template())
		this