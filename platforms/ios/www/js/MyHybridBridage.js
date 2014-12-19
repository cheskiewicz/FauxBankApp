var MyHybridBridge = (function() {
                      var PLUGIN_NAME                         = "MyHybridBridge";
                      var ACTION_SWITCH_APPS                 = "ACTION_SWITCH_APPS";
                      
                      this.switchApps = function () {
                      alert("s");
                      cordova.exec(null, null, PLUGIN_NAME, ACTION_SWITCH_APPS, []);
                      };
                      return this;
                      }());

