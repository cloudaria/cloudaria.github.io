app = new Layer
	width: 640,
	height: 1136,
	image: 'images/background.png'

splash = new Layer
	width: 640,
	height: 1136,
	image: 'images/splash.png'
splash.states.add
	hide: {scale: 0}
splash.states.animationOptions = 
	curve: "spring(600,30,0)"
splash.on Events.Click, ->
	splash.states.switch("hide")
	topics.states.switch("show")

topics = new Layer
	width: 581,
	height: 1043,
	originX: 1,
	rotationY: 90,
	image: 'images/topics.png'
topics.center()
topics.states.add
	hide: {scale: 0}
	show: {rotationY: 0}
topics.states.animationOptions = 
	curve: "spring(600,30,0)"
topics.on Events.Click, ->
	topics.states.switch("hide")
	main.states.switch("show")

main = new Layer
	originX: 1,
	rotationY: 90,
	height: 1136,
	width: 640,
	backgroundColor: 'transparent'
	superLayer: app
main.states.add
	show: {rotationY: 0}
main.states.animationOptions = 
	curve: "spring(600,30,0)"

header = new Layer
	height: 120,
	width: 640,
	backgroundColor: 'transparent',
	image: 'images/header.png',
	superLayer: main

back = new Layer
	scale: 0,
	height: 120,
	width: 120,
	image: 'images/back.png'

back.states.add
	hide: {scale: 0}
	show: {scale: 1}
back.states.animationOptions = 
    curve: "spring(600,30,0)"

toolbar = new Layer
	height: 120,
	width: 640,
	y: 1016,
	backgroundColor: '#282828',
	superLayer: main

btn_feed = new Layer
	width: 128,
	height: 120,
	superLayer: toolbar,
	image: 'images/btn_feed.png'
btn_feed.image = 'images/btn_feed_active.png'

btn_search = new Layer
	width: 128,
	height: 120,
	x:128,
	superLayer: toolbar,
	image: 'images/btn_search.png'

btn_inspire = new Layer
	width: 128,
	height: 120,
	x: 384,
	superLayer: toolbar,
	image: 'images/btn_inspire.png'

btn_add = new Layer
	width: 128,
	height: 120,
	x:256,
	superLayer: toolbar,
	image: 'images/add.png',
	backgroundColor: 'transparent'

btn_profile = new Layer
	width: 128,
	height: 120,
	x: 512,
	superLayer: toolbar,
	image: 'images/btn_profile.png'

body = new Layer
	y: 120,
	height: 896,
	width: 640,
	backgroundColor: 'transparent',
	superLayer: main

feed_container = new Layer
	x: 10,
	height: 896,
	width: 640,
	backgroundColor: 'transparent',
	superLayer: body

search = new Layer
	originX: 1,
	rotationY: 90,
	width: 640,
	height: 1038,
	image: 'images/search.png'
	superLayer: body
search.states.add
	show: {rotationY:0}
search.states.animationOptions =
	curve: "spring(600,30,0)"
btn_search.on Events.Click, ->
	search.states.switch("show")

article = new Layer
	width: 620,
	height: 953,
	superLayer: feed_container,
	image: 'images/article.png'

tweet = new Layer
	y: 983,
	width: 620,
	height: 315,
	superLayer: feed_container,
	image: 'images/tweet.png'

youtube = new Layer
	y: 1328,
	width: 620,
	height: 1015,
	superLayer: feed_container,
	image: 'images/youtube.png'

pdf = new Layer
	y: 2373,
	width: 620,
	height: 1247,
	superLayer: feed_container,
	image: 'images/pdf.png'

instagram = new Layer
	y: 3650,
	width: 620,
	height: 1044,
	superLayer: feed_container,
	image: 'images/instagram.png'

slideshare = new Layer
	y: 4724,
	width: 620,
	height: 922,
	superLayer: feed_container,
	image: 'images/slideshare.png'


card_container = new Layer
	superLayer: main,
	originX: 1,
	rotationY: 90,
	width: 640,
	height: 1136,
	backgroundColor: 'transparent',
	image: 'images/background.png'

card_container.states.animationOptions = 
    curve: "spring(600,30,0)"

card_container.states.add
	hide: {rotationY:90}
	show: {rotationY: 0}

article_2 = new Layer
	x: 640,
	width: 640,
	height: 1136,
	image: 'images/article_2.png',
	backgroundColor: 'transparent',
	superLayer: card_container

tweet_2 = new Layer
	x: 640,
	width: 640,
	height: 315,
	image: 'images/tweet.png'
	backgroundColor: 'transparent',
	superLayer: card_container
tweet_2.center()

youtube_2 = new Layer
	x: 640,
	width: 640,
	height: 1136,
	backgroundColor: 'transparent',
	superLayer: card_container
youtube_2.html = '<iframe width="640" height="480" style="margin-top:328px;" src="https://www.youtube.com/embed/XWd33sjWIT4"></iframe>'

pdf_2 = new Layer
	x: 640,
	width: 640,
	height: 1136,
	image: 'images/pdf_2.png'
	backgroundColor: 'transparent',
	superLayer: card_container

instagram_2 = new Layer
	x: 640,
	width: 640,
	height: 1136,
	backgroundColor: 'transparent',
	superLayer: card_container

slideshare_2 = new Layer
	x: 640,
	width: 640,
	height: 1136,
	backgroundColor: 'transparent',
	superLayer: card_container

slideshare_2.html = '<iframe width="640" height="1136" src="http://www.slideshare.net/slideshow/embed_code/40224494"></iframe>'


feed_container.scroll = true
card_container.scrll = true

feed_container.states.add
	hide: {scale:0}
	show: {scale: 1}
feed_container.states.animationOptions =
	curve: "spring(600,30,0)"

article.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	article_2.x = 0
	back.states.switch("show")

tweet.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	tweet_2.x = 0
	back.states.switch("show")

youtube.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	youtube_2.x = 0
	back.states.switch("show")

pdf.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	pdf_2.x = 0
	back.states.switch("show")

instagram.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	instagram_2.x = 0
	back.states.switch("show")

slideshare.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	slideshare_2.x = 0
	back.states.switch("show")

back.on Events.Click, ->
	card_container.states.switch("hide")
	feed_container.states.switch("show")
	article_2.x = 640
	tweet_2.x = 640
	youtube_2.x = 640
	pdf_2.x = 640
	slideshare_2.x = 640
	back.states.switch("hide")
