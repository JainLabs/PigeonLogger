class PigeonLogger
	constructor: ->
		document.addEventListener('deviceready', this.deviceready, false);

	deviceready: (e) ->
		alert "deviceready"

window.app = new PigeonLogger()
