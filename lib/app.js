// Generated by CoffeeScript 1.4.0
(function() {
  var PigeonLogger;

  PigeonLogger = (function() {

    function PigeonLogger() {
      document.addEventListener('deviceready', this.deviceready, false);
    }

    PigeonLogger.prototype.deviceready = function(e) {
      return alert("deviceready");
    };

    return PigeonLogger;

  })();

  window.app = new PigeonLogger();

}).call(this);