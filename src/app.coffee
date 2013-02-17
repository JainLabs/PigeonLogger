class PigeonLogger
	constructor: ->
		# document.addEventListener('deviceready', this.deviceready, false);
		document.querySelector('.take-photo').onclick = @capturePhoto

	# deviceready: (e) ->
		# alert "deviceready"

	capturePhoto: ->
		onSuccess = (imageData) ->
			image = document.getElementById("image")
			image.src = "data:image/jpeg;base64," + imageData
		onFail = (message) ->
			alert "Failed because: " + message
		navigator.camera.getPicture onSuccess, onFail,
			quality: 50
			destinationType: Camera.DestinationType.DATA_URL



window.app = new PigeonLogger()