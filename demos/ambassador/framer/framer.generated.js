// This is autogenerated by Framer Studio


// Generated by CoffeeScript 1.8.0
(function() {
  var lookupLine, properties, _RESULT,
    __slice = [].slice;

  if (window.FramerStudio == null) {
    window.FramerStudio = {};
  }

  window.onerror = null;

  window.midiCommand = window.midiCommand || function() {};

  if (Framer.Device) {
    properties = ["deviceScale", "contentScale", "deviceType", "keyboard", "orientation", "fullScreen"];
    properties.map(function(propertyName) {
      return Framer.Device.on("change:" + propertyName, function() {
        return window._bridge("device:change");
      });
    });
  }

  _RESULT = null;

  lookupLine = function(lineNumber) {
    var char, charIndex, errorColNumber, errorLine, errorLineIndex, errorLineNumber, loc, sourceLines, _i, _len;
    sourceLines = _RESULT.js.split("\n");
    errorLineIndex = lineNumber - 1;
    errorLine = sourceLines[errorLineIndex];
    if (!errorLine) {
      return lineNumber;
    }
    errorLineNumber = 1;
    errorColNumber = 0;
    for (charIndex = _i = 0, _len = errorLine.length; _i < _len; charIndex = ++_i) {
      char = errorLine[charIndex];
      loc = _RESULT.sourceMap.sourceLocation([errorLineIndex, charIndex]);
      if (loc && loc[0] > errorLineNumber) {
        errorLineNumber = loc[0] + 1;
        errorColNumber = loc[1];
      }
    }
    console.log("lineNumber", lineNumber);
    console.log("errorLineNumber", errorLineNumber);
    return errorLineNumber;
  };

  FramerStudio.compile = function(code) {
    var e, err, errorMessage;
    console.log("FramerStudio.compile");
    window.onerror = null;
    window.onresize = null;
    try {
      _RESULT = CoffeeScript.compile(code, {
        sourceMap: true,
        filename: "generated.js"
      });
    } catch (_error) {
      e = _error;
      console.log("Compile error:", e);
      if (e instanceof SyntaxError) {
        errorMessage = e.stack;
        err = new SyntaxError(e.message);
        err.line = e.location.first_line;
        err.lineNumber = e.location.first_line;
        err.lookup = true;
        window._bridge("StudioError", {
          message: e.message,
          line: e.location.first_line,
          lineNumber: e.location.first_line,
          errorType: "compile"
        });
        throw err;
      } else {
        throw e;
      }
    }
    window.onerror = function(errorMsg, url, lineNumber) {
      var error;
      console.log.apply(console, ["Eval error:"].concat(__slice.call(arguments)));
      error = new Error(errorMsg);
      error.line = lookupLine(lineNumber);
      window._bridge("StudioError", {
        message: errorMsg,
        line: error.line,
        lineNumber: error.line,
        errorType: "eval"
      });
      throw error;
    };
    return _RESULT.js;
  };

  if (typeof window._bridge === "function") {
    window._bridge("StudioScriptLoaded");
  }

}).call(this);

window.__imported__ = window.__imported__ || {};
window.__imported__["employee-app/layers.json.js"] = [
	{
		"id": 57,
		"name": "background",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/background.png",
			"frame": {
				"x": 0,
				"y": 0,
				"width": 640,
				"height": 1136
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "603119315"
	},
	{
		"id": 65,
		"name": "splash",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/splash.png",
			"frame": {
				"x": 145,
				"y": 51,
				"width": 352,
				"height": 977
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "2094619052"
	},
	{
		"id": 63,
		"name": "intro4",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/intro4.png",
			"frame": {
				"x": 127,
				"y": 429,
				"width": 389,
				"height": 435
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "1037129092"
	},
	{
		"id": 61,
		"name": "intro3",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/intro3.png",
			"frame": {
				"x": 151,
				"y": 657,
				"width": 356,
				"height": 207
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "1794285504"
	},
	{
		"id": 59,
		"name": "intro2",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/intro2.png",
			"frame": {
				"x": 73,
				"y": 657,
				"width": 512,
				"height": 207
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "1410981960"
	},
	{
		"id": 55,
		"name": "intro1",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/intro1.png",
			"frame": {
				"x": 98,
				"y": 657,
				"width": 464,
				"height": 207
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "227257068"
	},
	{
		"id": 116,
		"name": "topics",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/topics.png",
			"frame": {
				"x": 29,
				"y": 37,
				"width": 581,
				"height": 1043
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "1037051123"
	},
	{
		"id": 114,
		"name": "next",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/next.png",
			"frame": {
				"x": 459,
				"y": 25,
				"width": 151,
				"height": 61
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "22339557"
	},
	{
		"id": 118,
		"name": "following1",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/following1.png",
			"frame": {
				"x": 397,
				"y": 186,
				"width": 217,
				"height": 65
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "563040754"
	},
	{
		"id": 120,
		"name": "following2",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/following2.png",
			"frame": {
				"x": 397,
				"y": 350,
				"width": 217,
				"height": 65
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "1270753879"
	},
	{
		"id": 140,
		"name": "article",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/article.png",
			"frame": {
				"x": 0,
				"y": 0,
				"width": 640,
				"height": 1136
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "986336410"
	},
	{
		"id": 137,
		"name": "home",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/home.png",
			"frame": {
				"x": 0,
				"y": 0,
				"width": 640,
				"height": 1136
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "2147145272"
	},
	{
		"id": 154,
		"name": "search",
		"layerFrame": {
			"x": 0,
			"y": 0,
			"width": 640,
			"height": 1136
		},
		"maskFrame": null,
		"image": {
			"path": "images/search.png",
			"frame": {
				"x": 0,
				"y": 0,
				"width": 640,
				"height": 1136
			}
		},
		"imageType": "png",
		"children": [
			
		],
		"modification": "988111112"
	}
]
window.Framer.Defaults.DeviceView = {
  "deviceScale" : -1,
  "orientation" : 0,
  "contentScale" : 1,
  "deviceType" : "iphone-5s-silver-hand"
};

window.FramerStudioInfo = {
  "deviceImagesUrl" : "file:\/\/\/Applications\/Framer%20Studio.app\/Contents\/Resources\/DeviceImages\/"
};

Framer.Device = new Framer.DeviceView();
Framer.Device.setupContext();