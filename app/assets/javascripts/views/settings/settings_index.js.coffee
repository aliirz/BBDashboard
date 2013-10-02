class ProfitPilot.Views.SettingsIndex extends Backbone.View

	template: JST['settings/index']

	render: ->
		$(@el).html(@template())
		this