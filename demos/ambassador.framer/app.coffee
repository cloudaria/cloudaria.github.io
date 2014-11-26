app = Framer.Importer.load "imported/employee-app"
login = new Layer
	x:-10000,
	y:926,
	height: 103,
	width: 356,
	backgroundColor: 'transparent'

follow1 = new Layer
	x:-10000,
	y:196,
	width: 218,
	height: 66,
	backgroundColor: 'transparent'

follow2 = new Layer
	x:-10000,
	y:361,
	width: 218,
	height: 66,
	backgroundColor: 'transparent'

article_link = new Layer
	width: 640,
	height: 940,
	y: 100,
	x: -10000,
	backgroundColor: 'transparent'
	
next = new Layer
	x: -10000,
	y: 35,
	height: 62,
	width: 148,
	backgroundColor: 'transparent'
home = new Layer
	x: 24,
	y:1064,
	height: 80,
	width: 80,
	backgroundColor: 'transparent'
search = new Layer
	height: 80,
	width: 80,
	x: 154,
	y: 1064,
	backgroundColor: 'transparent'
inspire = new Layer
	height: 80,
	width: 80,
	x: 416,
	y: 1064,
	backgroundColor: 'transparent'
	
plus = new Layer
	height: 80,
	width: 80,
	y: 1064,
	backgroundColor: 'transparent'
plus.centerX()

back = new Layer
	x:-10000,
	image:"images/left-50.png"
	
share = new Layer
	x:-10000,
	y: 20,
	image: "images/share.png",
	height: 50,
	width: 36

app.intro2.x = -10000
app.intro3.x = -10000
app.intro4.x = -10000
app.topics.x = -10000
app.following1.x = -10000
app.following2.x = -10000
app.next.x = -10000
app.home.x = -10000
app.article.x = -10000
app.search.x = -10000
app.plus.x = -10000
app.inspire.x = -10000

app.intro1.on Events.Click, ->
	this.x = -10000
	app.intro2.centerX()
app.intro2.on Events.Click, ->
	this.x = -10000
	app.intro3.centerX()
app.intro3.on Events.Click, ->
	this.x = -10000
	app.intro4.centerX()
	login.x = 142

login.on Events.Click, ->
	app.intro1.x = -10000
	app.intro2.x = -10000
	app.intro3.x = -10000
	app.intro4.x = -10000
	app.splash.x = -10000
	app.topics.center()
	follow1.x = 397
	follow2.x = 397

follow1.on Events.Click, ->
	this.x = -10000
	app.following1.y = 196
	app.following1.x = 397
	app.next.y = 35
	app.next.x = 459
	next.x = 459

follow2.on Events.Click, ->
	this.x = -10000
	app.following2.y = 361
	app.following2.x = 397
	app.next.y = 35
	app.next.x = 459
	next.x = 459

next.on Events.Click, ->
	this.x = -10000
	app.topics.x = -10000
	app.home.center()
	article_link.x = 0

article_link.on Events.Click, ->
	this.x = -10000
	app.home.x = -10000
	app.article.center()
	back.x = 0
	share.x = 580

home.on Events.Click, ->
	app.search.x = -10000
	app.inspire.x = -10000
	app.home.center()
	article_link.x = 0
	
search.on Events.Click, ->
	app.home.x = -10000
	app.inspire.x = -10000
	app.plus.x = -10000
	app.search.center()
	
inspire.on Events.Click, ->
	app.home.x = -10000
	app.search.x = -10000
	app.plus.x = -10000
	app.inspire.center()
	
back.on Events.Click, ->
	this.x = -10000
	share.x = -10000
	app.home.center()
	article_link.x = 0

plus.on Events.Click, ->
	app.home.x = -10000
	app.search.x = -10000
	app.inspire.x = -10000
	app.plus.center()