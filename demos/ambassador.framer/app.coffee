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
	topics.image = 'images/topics_2.png'
next = new Layer
	superLayer: topics,
	x: 426,
	y: 50,
	width: 150,
	height: 70,
	backgroundColor: 'transparent'
next.on Events.Click, ->
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

share = new Layer
	x:520,
	scale: 0,
	height: 120,
	width: 120,
	image: 'images/share.png'

share_2 = new Layer
	rotationX: 90,
	originY: 1,
	height: 1136,
	width: 640,
	image: 'images/share_2.png'
	superLayer: app

back.states.add
	hide: {scale: 0}
	show: {scale: 1}
back.states.animationOptions = 
    curve: "spring(600,30,0)"

share.states.add
	hide: {scale: 0}
	show: {scale: 1}
share.states.animationOptions = 
    curve: "spring(600,30,0)"

share_2.states.add
	hide: {rotationX: 90}
	show: {rotationX: 0}
share_2.states.animationOptions = 
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
btn_add.states.add
	active: {rotationZ: 45}
	reset: {rotationZ:0}

btn_add.states.animationOptions = 
	curve: "spring(600,30,0)"

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
	hide: {rotationY: 90}
search.states.animationOptions =
	curve: "spring(600,30,0)"

plus = new Layer
	originX: 1,
	rotationY: 90,
	width: 640,
	height: 896,
	image: 'images/plus.png'
	superLayer: body
plus.states.add
	show: {rotationY:0}
	hide: {rotationY: 90}
plus.states.animationOptions =
	curve: "spring(600,30,0)"

inspire = new Layer
	originX: 1,
	rotationY: 90,
	width: 640,
	height: 1016,
	image: 'images/inspire.png'
	superLayer: body
inspire.states.add
	show: {rotationY:0}
	hide: {rotationY: 90}
inspire.states.animationOptions =
	curve: "spring(600,30,0)"

profile = new Layer
	originX: 1,
	rotationY: 90,
	width: 640,
	height: 1038,
	image: 'images/profile.png'
	superLayer: body
profile.states.add
	show: {rotationY:0}
	hide: {rotationY: 90}
profile.states.animationOptions =
	curve: "spring(600,30,0)"

btn_feed.on Events.Click, ->
	resetButtons()
	feed_container.states.switch("show")
btn_search.on Events.Click, ->
	resetButtons()
	search.states.switch("show")
btn_add.on Events.Click, ->
	resetButtons()
	plus.states.switch("show")
	btn_add.states.switch("active")
btn_inspire.on Events.Click, ->
	resetButtons()
	inspire.states.switch("show")
btn_profile.on Events.Click, ->
	resetButtons()
	profile.states.switch("show")

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
	image: 'images/instagram_2.png'
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
	share.states.switch("show")

tweet.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	tweet_2.center()
	back.states.switch("show")
	share.states.switch("show")

youtube.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	youtube_2.x = 0
	back.states.switch("show")
	share.states.switch("show")

pdf.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	pdf_2.x = 0
	back.states.switch("show")
	share.states.switch("show")

instagram.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	instagram_2.x = 0
	back.states.switch("show")
	share.states.switch("show")

slideshare.on Events.Click, ->
	card_container.states.switch("show")
	feed_container.states.switch("hide")
	slideshare_2.x = 0
	back.states.switch("show")
	share.states.switch("show")

back.on Events.Click, ->
	card_container.states.switch("hide")
	feed_container.states.switch("show")
	article_2.x = 640
	tweet_2.x = 640
	youtube_2.x = 640
	pdf_2.x = 640
	slideshare_2.x = 640
	instagram_2.x = 640
	back.states.switch("hide")
	share.states.switch("hide")

share.on Events.Click, ->
	share_2.states.switch("show")

share_2.on Events.Click, ->
	share_2.states.switch("hide")

resetButtons = () ->
	feed_container.states.switch("hide")
	search.states.switch("hide")
	plus.states.switch("hide")
	inspire.states.switch("hide")
	profile.states.switch("hide")
	btn_add.states.switch("reset")