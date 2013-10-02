class ProfitPilot.Views.ProjectsCreate extends Backbone.View
	
	template: JST['projects/create']

	events:
		'submit #new_project':'createProject'

	render: ->
		$(@el).html(@template())
		this

	createProject: (event) ->
		event.preventDefault()
		@collection.create(
				name: $('#projectName').val()
				client: $('#clientSelect').val()
				amount: '1342.45'
				start: $('#startDate').val()
				end: $('#endDate').val()
				description: $('#notes').val()
			)
		window.location.href = '#projects'
