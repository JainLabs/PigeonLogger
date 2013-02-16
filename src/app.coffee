class PigeonLogger
	constructor: ->
		document.addEventListener('deviceready', this.deviceready, false);

	deviceready: (e) ->
		alert "deviceready"

	capturePhoto: ->
		# capture callback
		captureSuccess = (mediaFiles) ->
			navigator.notification.alert "Total files: #{mediaFiles.length}"
			for i in [0...mediaFiles.length]
				img = document.createElement 'img'
				img.src = mediaFiles[i].fullPath
				document.body.appendChild img

		# capture error callback
		captureError = (error) ->
			navigator.notification.alert "Error code: " + error.code, null, "Capture Error"


		# start image capture
		navigator.device.capture.captureImage captureSuccess, captureError,
			limit: 2


window.app = new PigeonLogger()
