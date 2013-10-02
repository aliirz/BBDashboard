class ProfitPilot.Routers.Dashboard extends Backbone.Router
	routes: ->
		'' : 'index'
		'people' : 'people'
		'estimates' : 'estimates'
		'projects' : 'projects'
		'addproject': 'addProject'
		'costings' : 'costings'
		'calendar' : 'calendar'
		'settings' : 'settings'


	initialize: ->
		@collection = new ProfitPilot.Collections.Projects()
		@collection.fetch()

	index: ->
		view = new ProfitPilot.Views.DashboardIndex()
		$('#content').html(view.render().el)
	people: ->
		peopleView = new ProfitPilot.Views.PeopleIndex()
		$('#content').html(peopleView.render().el)
	estimates: ->
		estimatesView = new ProfitPilot.Views.EstimatesIndex()
		$('#content').html(estimatesView.render().el)
	projects: ->
		# alert 'test'
		projectsView = new ProfitPilot.Views.ProjectsIndex(collection: @collection)
		$('#content').html(projectsView.render().el)
	addProject: ->
		projectCreateView =  new  ProfitPilot.Views.ProjectsCreate(collection: @collection)
		$('#content').html(projectCreateView.render().el)
		# alert 'adding a new project are we?'
	costings: ->
		costingsView = new ProfitPilot.Views.CostingsIndex()
		$('#content').html(costingsView.render().el)
	calendar: ->
		calendarView = new ProfitPilot.Views.CalendarIndex()
		$('#content').html(calendarView.render().el)
	settings: ->
		settingsView = new ProfitPilot.Views.SettingsIndex()
		$('#content').html(settingsView.render().el)
