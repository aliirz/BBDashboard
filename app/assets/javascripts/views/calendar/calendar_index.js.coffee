class ProfitPilot.Views.CalendarIndex extends Backbone.View

	template: JST['calendar/index']

	render: ->
		$(@el).html(@template())
		this