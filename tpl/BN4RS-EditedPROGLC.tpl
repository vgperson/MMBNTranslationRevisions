@archive 6DE644
@size 255

script 0 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Want to save
	your progress?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 1 mmbn4-lc {
	checkFlag
		flag = 4454
		jumpIfTrue = continue
		jumpIfFalse = 2
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	This will erase any
	old save data. OK?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 2 mmbn4-lc {
	callSave
		jumpIfSuccessful = 3
		jumpIfFailed = continue
		jumpUnused = 4
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	It looks like
	the save failed…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	OK!
	Save complete!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	The data is corrupt
	and couldn't be saved.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 0,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	mugshotHide
	clearMsg
	"""
	The data is corrupt
	and couldn't be saved.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4s {
	"""
	Playtime
	"""
	end
}
script 7 mmbn4s {
	"""
	Library
	"""
	end
}
script 8 mmbn4s {
	"""
	BtlChips
	"""
	end
}
script 9 mmbn4s {
	"""
	Credits
	"""
	end
}
script 10 mmbn4s {
	"""
	  
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	end
}
script 11 mmbn4s {
	"""
	S/M/G
	"""
	end
}
script 12 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was too bad,Lan.
	Watch the rest?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We did it,Lan!
	We won a Free
	Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was some match!
	Let's make another
	attempt sometime!
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was close.
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	What will you do?
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Edit folder
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Equip folder
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Equipped
	
	"""
	printFolderName
		buffer = 1
		entry = 0
	"""
	!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You don't have
	30 chips in
	the folder!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Stop editing?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 4 of the
	same chip!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 1 of the
	same MegaChip!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 1 of the
	same GigaChip!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 total
	MegaChips!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can only
	use 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 total
	GigaChips!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	enough Regular
	Memory!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	What will you do?
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	Equip folder
	
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Spare Folder
	is locked!
	Can't switch!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	As I am now,
	I'm not able to
	use this folder.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Edit the folder
	and try again!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	What will you do?
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	Edit folder
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 40 mmbn4s {
	"""
	Recovers
	50HP!
	"""
	end
}
script 41 mmbn4s {
	"""
	Recovers
	HP fully!
	"""
	end
}
script 42 mmbn4s {
	"""
	Won't meet
	weak virus
	for a while
	"""
	end
}
script 43 mmbn4s {
	"""
	Clear traps
	on mystery
	data
	"""
	end
}
script 44 mmbn4s {
	"""
	Easier to
	encounter
	last enemy
	"""
	end
}
script 45 mmbn4s {
	"""
	Unlock
	encrypted
	data
	"""
	end
}
script 46 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Let's not use
	that yet!
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You want to
	use "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 48 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan
	recovered 50HP!
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan fully
	recovered HP!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	You used
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You're using
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"
	already!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	any locked
	mystery data!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	No viruses
	encountered
	here yet!
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 112
		jumpIfTrue = 80
		jumpIfFalse = continue
	checkFlag
		flag = 113
		jumpIfTrue = 77
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	"""
	waitHold
}
script 61 mmbn4s {
	"""
	Attack LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 62 mmbn4s {
	"""
	Speed  LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 63 mmbn4s {
	"""
	Charge LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 64 mmbn4s {
	ereaderDesc
		data = 2
	end
}
script 65 mmbn4s {
	ereaderDesc
		data = 3
	end
}
script 66 mmbn4s {
	ereaderDesc
		data = 4
	end
}
script 67 mmbn4s {
	ereaderDesc
		data = 5
	end
}
script 68 mmbn4s {
	ereaderDesc
		data = 6
	end
}
script 69 mmbn4s {
	ereaderDesc
		data = 7
	end
}
script 70 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transfer complete!
	"""
	keyWait
		any = false
	waitHold
}
script 71 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Rare chip data
	received,but you
	have it already.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Data will not
	be transferred.
	"""
	keyWait
		any = false
	waitHold
}
script 73 mmbn4s {
	"""
	Reg.Mem 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	[MB]
	"""
	end
}
script 74 mmbn4s {
	"""
	MegaChip 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 75 mmbn4s {
	"""
	GigaChip 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 76 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use the
	equipped folder
	anymore!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Since you have
	no Spare Folder,
	take this one!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundPlay
		track = 115
	"""
	Lan got:
	"
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	"!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'll switch to
	this folder!
	"""
	keyWait
		any = false
	waitHold
}
script 77 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	Records
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 78 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	NaviCust
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Records
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 79 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Rare chip inbound!
	
	"""
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Accept data
	
	"""
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Quit
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 80 mmbn4-lc {
	checkFlag
		flag = 113
		jumpIfTrue = 78
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	NaviCust
	
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 81 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Patch Card inbound!
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Install mod
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Quit
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 82 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Error in data
	transmission.
	"""
	keyWait
		any = false
	waitHold
}
script 83 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transmitting…
	"""
	keyWait
		any = false
	waitHold
}
script 84 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Communication
	error! Trans-
	mission failed.
	"""
	keyWait
		any = false
	waitHold
}
script 85 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Data received!
	"""
	keyWait
		any = false
	waitHold
}
script 86 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	"""
	Waiting for data.
	"""
	waitHold
}
script 87 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Receiving data…
	"""
	waitHold
}
script 88 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use the
	equipped folder.
	Using the Spare!
	"""
	keyWait
		any = false
	waitHold
}
script 89 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transmit OK!
	"""
	keyWait
		any = false
	waitHold
}
script 90 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You've got new
	mail!
	"""
	waitHold
}
script 91 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Read which mail?
	"""
	waitHold
}
script 92 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	No new mail…
	"""
	waitHold
}
script 93 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 94
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is for
	Blue Moon only.
	Cannot receive.
	"""
	keyWait
		any = false
	waitHold
}
script 94 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is for
	Red Sun only.
	Cannot receive.
	"""
	keyWait
		any = false
	waitHold
}
script 95 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I'm booting up
	the training
	program!
	"""
	keyWait
		any = false
	waitHold
}
script 100 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"""
	Quit programming
	and return to
	the menu screen?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 101 mmbn4s {
	"""
	RUN…
	"""
	end
}
script 102 mmbn4s {
	"""
	OK!
	"""
	end
}
script 103 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = Lan
	"""
	All right!
	RUN complete!
	"""
	keyWait
		any = false
	clearMsg
	"""
	How do you
	feel,MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4480
		jumpIfTrue = 105
		jumpIfFalse = 104
}
script 104 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	All systems
	normal!
	Good job,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the Navi
	Customizer?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 105 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	Hmmm… A little
	strange,but
	I'm OK!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the Navi
	Customizer?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 106 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"""
	Remove all
	programs?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 109 mmbn4s {
	"""
	OFF
	"""
	end
}
script 110 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Mod enabled!
	"""
	waitHold
}
script 111 mmbn4s {
	"""
	ON
	"""
	end
}
script 112 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Mod disabled!
	"""
	waitHold
}
script 113 mmbn4s {
	"""
	0A
	"""
	end
}
script 114 mmbn4s {
	"""
	0B
	"""
	end
}
script 115 mmbn4s {
	"""
	0C
	"""
	end
}
script 116 mmbn4s {
	"""
	0D
	"""
	end
}
script 117 mmbn4s {
	"""
	0E
	"""
	end
}
script 118 mmbn4s {
	"""
	0F
	"""
	end
}
script 119 mmbn4s {
	"""
	Mod
	"""
	end
}
script 120 mmbn4s {
	"""
	Standard
	"""
	end
}
script 121 mmbn4s {
	"""
	MegaChips
	"""
	end
}
script 122 mmbn4s {
	"""
	GigaChips
	"""
	end
}
script 123 mmbn4s {
	"""
	P.A.Memo
	"""
	end
}
script 124 mmbn4s {
	"""
	   ??
	"""
	end
}
script 125 mmbn4s {
	"""
	Secret
	"""
	end
}
script 126 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 127 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 128 mmbn4-lc {
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 129 mmbn4-lc {
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 130 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 131 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 132 mmbn4-lc {
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 133 mmbn4-lc {
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 140 mmbn4s {
	"""
	Pwr ChargeS
	"""
	end
}
script 141 mmbn4s {
	"""
	Pwr HeatLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 142 mmbn4s {
	"""
	Pwr AquaLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 143 mmbn4s {
	"""
	Pwr ElecLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 144 mmbn4s {
	"""
	Pwr WoodLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 145 mmbn4s {
	"""
	Pwr   Invis
	"""
	end
}
script 146 mmbn4s {
	"""
	Pwr    Cube
	"""
	end
}
script 147 mmbn4s {
	"""
	Pwr  WtrGun
	"""
	end
}
script 148 mmbn4s {
	"""
	Pwr  Flower
	"""
	end
}
script 149 mmbn4s {
	"""
	Pwr  Custom
	"""
	end
}
script 152 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	BM Record: 
	"""
	printRecordName
		buffer = 4
		name = 0
	"""
	
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Back  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Delete
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 153 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	BM Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 154 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 155 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 156 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 157 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 158 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Couldn't come
	to a decision…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 159 mmbn4s {
	"""
	      -
	"""
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	 W
	"""
	end
}
script 160 mmbn4s {
	"""
	      +
	"""
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	 W
	"""
	end
}
script 161 mmbn4s {
	"""
	VS BM Wins:
	"""
	end
}
script 162 mmbn4s {
	"""
	VS RS Wins:
	"""
	end
}
script 163 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	"""
	Good work,Lan!
	Nice operating!
	A perfect win!
	"""
	keyWait
		any = false
	waitHold
}
script 164 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	"""
	That was a total
	loss for us,Lan…
	"""
	keyWait
		any = false
	waitHold
}
script 165 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Couldn't come
	to a decision…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 166 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Ran away!
	"""
	keyWait
		any = false
	waitHold
}
script 167 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Communication
	error! Battle
	canceled.
	"""
	keyWait
		any = false
	waitHold
}
script 168 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can't both
	trade nothing!
	"""
	keyWait
		any = false
	waitHold
}
script 169 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Choose the
	same mode as
	your friend!
	"""
	keyWait
		any = false
	waitHold
}
script 170 mmbn4s {
	"""
	:-
	"""
	end
}
script 171 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 152
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	RS Record: 
	"""
	printRecordName
		buffer = 4
		name = 0
	"""
	
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Back  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Delete
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 172 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 153
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	RS Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 173 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Trade complete!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But… was there
	any point to
	that trade?
	"""
	keyWait
		any = false
	waitHold
}
script 174 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	mugshotAnimation
		animation = 0
	"""
	Communication
	error! Trade
	canceled!
	"""
	keyWait
		any = false
	waitHold
}
script 175 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Trade complete!
	"""
	keyWait
		any = false
	waitHold
}
script 176 mmbn4s {
	"""
	Selecting
	"""
	end
}
script 177 mmbn4s {
	"""
	None
	"""
	end
}
script 178 mmbn4s {
	"""
	VS Results
	"""
	end
}
script 179 mmbn4s {
	"""
	   
	"""
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	B
	"""
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	W
	"""
	end
}
script 180 mmbn4s {
	"""
	Menu
	"""
	end
}
script 181 mmbn4s {
	"""
	NetBattle
	"""
	end
}
script 182 mmbn4s {
	"""
	Compare
	"""
	end
}
script 183 mmbn4s {
	"""
	Trade
	"""
	end
}
script 184 mmbn4s {
	"""
	WaitingRoom
	"""
	end
}
script 185 mmbn4s {
	"""
	SinglBattle
	"""
	end
}
script 186 mmbn4s {
	"""
	TriplBattle
	"""
	end
}
script 187 mmbn4s {
	"""
	Rep Battle
	"""
	end
}
script 188 mmbn4s {
	"""
	Practice
	"""
	end
}
script 189 mmbn4s {
	"""
	For Keeps
	"""
	end
}
script 190 mmbn4s {
	"""
	DataLibrary
	"""
	end
}
script 191 mmbn4s {
	"""
	Records
	"""
	end
}
script 192 mmbn4s {
	"""
	BattleChips
	"""
	end
}
script 193 mmbn4s {
	"""
	Programs
	"""
	end
}
script 194 mmbn4s {
	"""
	Receive
	"""
	end
}
script 195 mmbn4s {
	"""
	Dispatch
	"""
	end
}
script 196 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Delete which
	entry?
	"""
	waitHold
}
script 197 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's the WaitingRoom!
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Receive entry
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Delete entry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 198 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Delete 
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	's
	entry?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 199 mmbn4s {
	"""
	-NO ENTRY-
	"""
	end
}
script 200 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Battle with a
	friend!
	"""
	waitHold
}
script 201 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Compare data and
	exchange info
	with friend!
	"""
	waitHold
}
script 202 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange chips
	or programs
	with a friend!
	"""
	waitHold
}
script 203 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Enter the
	WaitingRoom!
	"""
	waitHold
}
script 204 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A 1-round battle.
	Go for it!
	"""
	waitHold
}
script 205 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A 3-round battle!
	Whoever wins 2
	takes it!
	"""
	waitHold
}
script 206 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	3-round battle
	between opposing
	tournaments!
	"""
	waitHold
}
script 207 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Trade Data
	Library info
	with a friend!
	"""
	waitHold
}
script 208 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	record times
	with a friend!
	"""
	waitHold
}
script 209 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	BattleChips
	with a friend!
	"""
	waitHold
}
script 210 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	programs
	with a friend!
	"""
	waitHold
}
script 211 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Welcome a Navi
	from a friend's
	tournament!
	"""
	waitHold
}
script 212 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send a trusted
	Navi to visit
	your friend!
	"""
	waitHold
}
script 213 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Practice mode!
	Won't lose chips,
	so battle freely!
	"""
	waitHold
}
script 214 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A real-deal match!
	Loser gives up
	a chip!
	"""
	waitHold
}
script 215 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend
	isn't ready.
	Please wait.
	"""
	waitHold
}
script 216 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"""
	Comparing
	libraries!
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	controlUnlock
	waitHold
}
script 217 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	error. Please
	try again.
	"""
	waitHold
}
script 218 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	New data was
	recorded in the
	Data Library!
	"""
	waitHold
}
script 219 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Didn't get any
	new data for
	the Library…
	"""
	waitHold
}
script 220 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Choose the
	same mode as
	your friend!
	"""
	waitHold
}
script 221 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend is
	in a different
	tournament!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Must be in the
	same tournament
	to compare.
	"""
	waitHold
}
script 222 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"""
	Comparing records!
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	controlUnlock
	waitHold
}
script 223 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Records were
	updated!
	"""
	waitHold
}
script 224 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	No records
	were updated…
	"""
	waitHold
}
script 225 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Booting up
	the chip
	trade screen!
	"""
	waitHold
}
script 226 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Booting up
	the program
	trade screen!
	"""
	waitHold
}
script 227 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You don't have
	any non-GigaChips
	in your Pack!
	"""
	waitHold
}
script 228 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I have no allies
	I trust enough to
	send over yet…
	"""
	keyWait
		any = false
	waitHold
}
script 229 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Going to waiting
	screen!
	"""
	waitHold
}
script 230 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Going to dispatch
	screen!
	"""
	waitHold
}
script 231 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Deleted entry:
	
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printShortString
		bufferOffset = 1
	keyWait
		any = false
	waitHold
}
script 232 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The Navi seems
	to be in our
	tournament.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can't delete
	the entry!
	"""
	keyWait
		any = false
	waitHold
}
script 233 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Receiving entry!
	"""
	waitHold
}
script 234 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Accept entry
	
	"""
	printEnemy
		buffer = 2
		enemy = 0
	printBufferedShortString
		bufferOffset = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 235 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Huh? Looks like
	we failed to
	receive the data!
	"""
	keyWait
		any = false
	waitHold
}
script 236 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send which Navi?
	"""
	waitHold
}
script 237 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send 
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 0
		name = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 238 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	stopped.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 239 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Sending entry
	data…
	"""
	waitHold
}
script 240 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Sent successfully!
	"""
	keyWait
		any = false
	waitHold
}
script 241 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Entry completed!
	"""
	keyWait
		any = false
	waitHold
}
script 242 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Only two Navis
	of the same
	type may enter.
	"""
	keyWait
		any = false
	waitHold
}
script 243 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The WaitingRoom
	is full now.
	Overwrite who?
	"""
	waitHold
}
script 244 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The same Navi
	is here already!
	"""
	keyWait
		any = false
	waitHold
}
script 245 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Overwrite
	
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 246 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Friend didn't
	have enough chips.
	Battle canceled!
	"""
	waitHold
}
script 247 mmbn4-lc {
	"""
	We barely managed
	to win that one…
	That was tough!
	"""
	keyWait
		any = false
	waitHold
}
script 248 mmbn4-lc {
	"""
	We did it,Lan!
	Nice operating!
	"""
	keyWait
		any = false
	waitHold
}
script 249 mmbn4-lc {
	"""
	Aw,so close…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 250 mmbn4-lc {
	"""
	I'm sorry,Lan…
	I'm to blame too!
	"""
	keyWait
		any = false
	waitHold
}
script 251 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can't fight
	someone in the
	same tournament!
	"""
	waitHold
}
@archive 6E0A10
@size 255

script 0 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	SAVE GAME?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 1 mmbn4-lc {
	checkFlag
		flag = 4454
		jumpIfTrue = continue
		jumpIfFalse = 2
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	DATA EXISTS.
	OVERWRITE?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 2 mmbn4-lc {
	callSave
		jumpIfSuccessful = 3
		jumpIfFailed = continue
		jumpUnused = 4
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	SAVE FAILED.
	"""
	keyWait
		any = false
	clearMsg
	"""
	TRY AGAIN?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 2,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	SAVE COMPLETED!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	DATA IS CORRUPT AND
	COULD NOT BE SAVED.
	"""
	keyWait
		any = false
	clearMsg
	"""
	TRY AGAIN?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = 0,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	clearMsg
	"""
	DATA IS CORRUPT AND
	COULD NOT BE SAVED.
	"""
	keyWait
		any = false
	clearMsg
	"""
	TRY AGAIN?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4s {
	"""
	Playtime
	"""
	end
}
script 7 mmbn4s {
	"""
	Library
	"""
	end
}
script 8 mmbn4s {
	"""
	BtlChips
	"""
	end
}
script 9 mmbn4s {
	"""
	Credits
	"""
	end
}
script 10 mmbn4s {
	"""
	  
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	end
}
script 11 mmbn4s {
	"""
	S/M/G
	"""
	end
}
script 12 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 13 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was too bad,Lan.
	Watch the rest?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We did it,Lan!
	We won a Free
	Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was some match!
	Let's make another
	attempt sometime!
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That was close.
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	WHAT WILL IT BE?
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	EDIT FOLDER
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	EQUIP FOLDER
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	printFolderName
		buffer = 1
		entry = 0
	"""
	 HAS
	BEEN EQUIPPED.
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	FOLDER DOES NOT
	CONTAIN 30 CHIPS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	STOP EDITING?
	
	"""
	positionOptionHorizontal
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	YES  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	NO
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	YOU CAN ONLY
	USE 4 OF THE
	SAME CHIP.
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	YOU CAN ONLY
	USE 1 OF THE
	SAME MEGACHIP.
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	YOU CAN ONLY
	USE 1 OF THE
	SAME GIGACHIP.
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	YOU CAN ONLY
	USE 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 TOTAL
	MEGACHIPS.
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	YOU CAN ONLY
	USE 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 TOTAL
	GIGACHIPS.
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	"""
	NOT ENOUGH
	REGULAR
	MEMORY.
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	WHAT WILL IT BE?
	
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	EQUIP FOLDER
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	SPARE FOLDER
	IS LOCKED.
	CANNOT SWITCH.
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	UNABLE TO USE
	THIS FOLDER IN
	CURRENT STATE.
	"""
	keyWait
		any = false
	clearMsg
	"""
	EDIT THE FOLDER
	AND TRY AGAIN.
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	"""
	WHAT WILL IT BE?
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	EDIT FOLDER
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	waitHold
}
script 40 mmbn4s {
	"""
	Recovers
	50HP!
	"""
	end
}
script 41 mmbn4s {
	"""
	Recovers
	HP fully!
	"""
	end
}
script 42 mmbn4s {
	"""
	Won't meet
	weak virus
	for a while
	"""
	end
}
script 43 mmbn4s {
	"""
	Clear traps
	on mystery
	data
	"""
	end
}
script 44 mmbn4s {
	"""
	Easier to
	encounter
	last enemy
	"""
	end
}
script 45 mmbn4s {
	"""
	Unlock
	encrypted
	data
	"""
	end
}
script 46 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	THERE ISN'T A
	NEED TO USE
	THAT YET.
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	You want to
	use "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 48 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan
	recovered HP!
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	MegaMan fully
	recovered HP!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	"""
	You used
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You're using
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"
	already!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	There isn't
	any locked
	mystery data!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	No viruses
	encountered
	here yet!
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 112
		jumpIfTrue = 80
		jumpIfFalse = continue
	checkFlag
		flag = 113
		jumpIfTrue = 77
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	"""
	waitHold
}
script 61 mmbn4s {
	"""
	Attack LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 62 mmbn4s {
	"""
	Speed  LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 63 mmbn4s {
	"""
	Charge LV
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 64 mmbn4s {
	ereaderDesc
		data = 2
	end
}
script 65 mmbn4s {
	ereaderDesc
		data = 3
	end
}
script 66 mmbn4s {
	ereaderDesc
		data = 4
	end
}
script 67 mmbn4s {
	ereaderDesc
		data = 5
	end
}
script 68 mmbn4s {
	ereaderDesc
		data = 6
	end
}
script 69 mmbn4s {
	ereaderDesc
		data = 7
	end
}
script 70 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transfer complete!
	"""
	keyWait
		any = false
	waitHold
}
script 71 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Rare chip data
	received,but you
	have it already.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Data will not
	be transferred.
	"""
	keyWait
		any = false
	waitHold
}
script 73 mmbn4s {
	"""
	Reg.Mem 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	[MB]
	"""
	end
}
script 74 mmbn4s {
	"""
	MegaChip 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 75 mmbn4s {
	"""
	GigaChip 
	"""
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	end
}
script 76 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use the
	equipped folder
	anymore!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Since you have
	no Spare Folder,
	take this one!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundPlay
		track = 115
	"""
	Lan got:
	"
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	"!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'll switch to
	this folder!
	"""
	keyWait
		any = false
	waitHold
}
script 77 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	Records
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 78 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	NaviCust
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Records
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 79 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Rare chip inbound!
	
	"""
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Accept data
	
	"""
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Quit
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 80 mmbn4-lc {
	checkFlag
		flag = 113
		jumpIfTrue = 78
		jumpIfFalse = continue
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	My current status!
	
	"""
	positionOptionVertical
		width = 12
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 0
	space
		count = 1
	"""
	NaviCust
	
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 81 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Patch Card inbound!
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Install mod
	
	"""
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Quit
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 82 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Error in data
	transmission.
	"""
	keyWait
		any = false
	waitHold
}
script 83 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transmitting…
	"""
	keyWait
		any = false
	waitHold
}
script 84 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Communication
	error! Trans-
	mission failed.
	"""
	keyWait
		any = false
	waitHold
}
script 85 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Data received!
	"""
	keyWait
		any = false
	waitHold
}
script 86 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	"""
	Waiting for data.
	"""
	waitHold
}
script 87 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Receiving data…
	"""
	waitHold
}
script 88 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I can't use the
	equipped folder.
	Using the Spare!
	"""
	keyWait
		any = false
	waitHold
}
script 89 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	Transmit OK!
	"""
	keyWait
		any = false
	waitHold
}
script 90 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	NEW MAIL HAS
	ARRIVED.
	"""
	waitHold
}
script 91 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	SELECT A MAIL
	TO READ.
	"""
	waitHold
}
script 92 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	THERE IS NO MAIL.
	"""
	waitHold
}
script 93 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 94
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is for
	Blue Moon only.
	Cannot receive.
	"""
	keyWait
		any = false
	waitHold
}
script 94 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	"""
	This card is for
	Red Sun only.
	Cannot receive.
	"""
	keyWait
		any = false
	waitHold
}
script 95 mmbn4-lc {
	positionText
		left = 102
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 78
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I'm booting up
	the training
	program!
	"""
	keyWait
		any = false
	waitHold
}
script 100 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"""
	Quit programming
	and return to
	the menu screen?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 101 mmbn4s {
	"""
	RUN…
	"""
	end
}
script 102 mmbn4s {
	"""
	OK!
	"""
	end
}
script 103 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = Lan
	"""
	All right!
	RUN complete!
	"""
	keyWait
		any = false
	clearMsg
	"""
	How do you
	feel,MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4480
		jumpIfTrue = 105
		jumpIfFalse = 104
}
script 104 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	All systems
	normal!
	Good job,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the Navi
	Customizer?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 105 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	positionArrow
		left = 198
		top = 93
	mugshotShow
		mugshot = MegaMan
	"""
	Hmmm… A little
	strange,but
	I'm OK!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Quit the Navi
	Customizer?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 106 mmbn4-lc {
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	"""
	Remove all
	programs?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 109 mmbn4s {
	"""
	OFF
	"""
	end
}
script 110 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Mod enabled!
	"""
	waitHold
}
script 111 mmbn4s {
	"""
	ON
	"""
	end
}
script 112 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Mod disabled!
	"""
	waitHold
}
script 113 mmbn4s {
	"""
	0A
	"""
	end
}
script 114 mmbn4s {
	"""
	0B
	"""
	end
}
script 115 mmbn4s {
	"""
	0C
	"""
	end
}
script 116 mmbn4s {
	"""
	0D
	"""
	end
}
script 117 mmbn4s {
	"""
	0E
	"""
	end
}
script 118 mmbn4s {
	"""
	0F
	"""
	end
}
script 119 mmbn4s {
	"""
	Mod
	"""
	end
}
script 120 mmbn4s {
	"""
	Standard
	"""
	end
}
script 121 mmbn4s {
	"""
	MegaChips
	"""
	end
}
script 122 mmbn4s {
	"""
	GigaChips
	"""
	end
}
script 123 mmbn4s {
	"""
	P.A.Memo
	"""
	end
}
script 124 mmbn4s {
	"""
	   ??
	"""
	end
}
script 125 mmbn4s {
	"""
	Secret
	"""
	end
}
script 126 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 127 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 128 mmbn4-lc {
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 129 mmbn4-lc {
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 130 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 131 mmbn4-lc {
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 132 mmbn4-lc {
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 133 mmbn4-lc {
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 140 mmbn4s {
	"""
	Pwr ChargeS
	"""
	end
}
script 141 mmbn4s {
	"""
	Pwr HeatLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 142 mmbn4s {
	"""
	Pwr AquaLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 143 mmbn4s {
	"""
	Pwr ElecLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 144 mmbn4s {
	"""
	Pwr WoodLV
	"""
	printBuffer
		buffer = 0
		minLength = 1
		padZeros = false
		padLeft = true
	end
}
script 145 mmbn4s {
	"""
	Pwr   Invis
	"""
	end
}
script 146 mmbn4s {
	"""
	Pwr    Cube
	"""
	end
}
script 147 mmbn4s {
	"""
	Pwr  WtrGun
	"""
	end
}
script 148 mmbn4s {
	"""
	Pwr  Flower
	"""
	end
}
script 149 mmbn4s {
	"""
	Pwr  Custom
	"""
	end
}
script 152 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	BM Record: 
	"""
	printRecordName
		buffer = 4
		name = 0
	"""
	
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Back  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Delete
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 153 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	BM Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 154 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 126
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 127
		jumpIfNotEqual = continue
	"""
	Yeah! We showed 'em
	the mettle of the
	Red Sun Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 155 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 128
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 129
		jumpIfNotEqual = continue
	"""
	Too bad! We owe our
	Red Sun Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 156 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 130
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 131
		jumpIfNotEqual = continue
	"""
	Yeah! We showed 'em
	the mettle of the
	Blue Moon Tournament!
	"""
	keyWait
		any = false
	waitHold
}
script 157 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 132
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 133
		jumpIfNotEqual = continue
	"""
	Too bad! We owe our
	Blue Moon Tournament
	pals an apology…
	"""
	keyWait
		any = false
	waitHold
}
script 158 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Couldn't come
	to a decision…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 159 mmbn4s {
	"""
	      -
	"""
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	 W
	"""
	end
}
script 160 mmbn4s {
	"""
	      +
	"""
	printBuffer
		buffer = 2
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	 W
	"""
	end
}
script 161 mmbn4s {
	"""
	VS BM Wins:
	"""
	end
}
script 162 mmbn4s {
	"""
	VS RS Wins:
	"""
	end
}
script 163 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 247
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 248
		jumpIfNotEqual = continue
	"""
	Good work,Lan!
	Nice operating!
	A perfect win!
	"""
	keyWait
		any = false
	waitHold
}
script 164 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	checkGlobal
		variable = 4
		value = 0
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 1
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 2
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 3
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 4
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 5
		jumpIfEqual = 249
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 6
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 7
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 8
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 9
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	checkGlobal
		variable = 4
		value = 10
		jumpIfEqual = 250
		jumpIfNotEqual = continue
	"""
	That was a total
	loss for us,Lan…
	"""
	keyWait
		any = false
	waitHold
}
script 165 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Couldn't come
	to a decision…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 166 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Ran away!
	"""
	keyWait
		any = false
	waitHold
}
script 167 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Communication
	error! Battle
	canceled.
	"""
	keyWait
		any = false
	waitHold
}
script 168 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	You can't both
	trade nothing!
	"""
	keyWait
		any = false
	waitHold
}
script 169 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Choose the
	same mode as
	your friend!
	"""
	keyWait
		any = false
	waitHold
}
script 170 mmbn4s {
	"""
	:-
	"""
	end
}
script 171 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 152
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	RS Record: 
	"""
	printRecordName
		buffer = 4
		name = 0
	"""
	
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Back  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Delete
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 172 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 153
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	RS Record:
	Lan:
	
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 2
		minLength = 2
		padZeros = true
		padLeft = true
	"""
	:
	"""
	printBuffer
		buffer = 3
		minLength = 2
		padZeros = true
		padLeft = true
	keyWait
		any = false
	waitHold
}
script 173 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Trade complete!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But… was there
	any point to
	that trade?
	"""
	keyWait
		any = false
	waitHold
}
script 174 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	mugshotAnimation
		animation = 0
	"""
	Communication
	error! Trade
	canceled!
	"""
	keyWait
		any = false
	waitHold
}
script 175 mmbn4-lc {
	positionText
		left = 78
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 198
		top = 93
	positionMugshot
		left = 54
		top = 80
	mugshotShow
		mugshot = MegaMan
	"""
	Trade complete!
	"""
	keyWait
		any = false
	waitHold
}
script 176 mmbn4s {
	"""
	Selecting
	"""
	end
}
script 177 mmbn4s {
	"""
	None
	"""
	end
}
script 178 mmbn4s {
	"""
	VS Results
	"""
	end
}
script 179 mmbn4s {
	"""
	   
	"""
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	B
	"""
	printBuffer
		buffer = 1
		minLength = 3
		padZeros = false
		padLeft = true
	"""
	W
	"""
	end
}
script 180 mmbn4s {
	"""
	Menu
	"""
	end
}
script 181 mmbn4s {
	"""
	NetBattle
	"""
	end
}
script 182 mmbn4s {
	"""
	Compare
	"""
	end
}
script 183 mmbn4s {
	"""
	Trade
	"""
	end
}
script 184 mmbn4s {
	"""
	WaitingRoom
	"""
	end
}
script 185 mmbn4s {
	"""
	SinglBattle
	"""
	end
}
script 186 mmbn4s {
	"""
	TriplBattle
	"""
	end
}
script 187 mmbn4s {
	"""
	Rep Battle
	"""
	end
}
script 188 mmbn4s {
	"""
	Practice
	"""
	end
}
script 189 mmbn4s {
	"""
	For Keeps
	"""
	end
}
script 190 mmbn4s {
	"""
	DataLibrary
	"""
	end
}
script 191 mmbn4s {
	"""
	Records
	"""
	end
}
script 192 mmbn4s {
	"""
	BattleChips
	"""
	end
}
script 193 mmbn4s {
	"""
	Programs
	"""
	end
}
script 194 mmbn4s {
	"""
	Receive
	"""
	end
}
script 195 mmbn4s {
	"""
	Dispatch
	"""
	end
}
script 196 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Delete which
	entry?
	"""
	waitHold
}
script 197 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's the WaitingRoom!
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	Receive entry
	
	"""
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Delete entry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	wait
		frames = 1
	waitHold
}
script 198 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Delete 
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	's
	entry?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 199 mmbn4s {
	"""
	-NO ENTRY-
	"""
	end
}
script 200 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Battle with a
	friend!
	"""
	waitHold
}
script 201 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Compare data and
	exchange info
	with friend!
	"""
	waitHold
}
script 202 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange chips
	or programs
	with a friend!
	"""
	waitHold
}
script 203 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Enter the
	WaitingRoom!
	"""
	waitHold
}
script 204 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A 1-round battle.
	Go for it!
	"""
	waitHold
}
script 205 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A 3-round battle!
	Whoever wins 2
	takes it!
	"""
	waitHold
}
script 206 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	3-round battle
	between opposing
	tournaments!
	"""
	waitHold
}
script 207 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Trade Data
	Library info
	with a friend!
	"""
	waitHold
}
script 208 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	record times
	with a friend!
	"""
	waitHold
}
script 209 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	BattleChips
	with a friend!
	"""
	waitHold
}
script 210 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Exchange
	programs
	with a friend!
	"""
	waitHold
}
script 211 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Welcome a Navi
	from a friend's
	tournament!
	"""
	waitHold
}
script 212 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send a trusted
	Navi to visit
	your friend!
	"""
	waitHold
}
script 213 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Practice mode!
	Won't lose chips,
	so battle freely!
	"""
	waitHold
}
script 214 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A real-deal match!
	Loser gives up
	a chip!
	"""
	waitHold
}
script 215 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend
	isn't ready.
	Please wait.
	"""
	waitHold
}
script 216 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"""
	Comparing
	libraries!
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	controlUnlock
	waitHold
}
script 217 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	error. Please
	try again.
	"""
	waitHold
}
script 218 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	New data was
	recorded in the
	Data Library!
	"""
	waitHold
}
script 219 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Didn't get any
	new data for
	the Library…
	"""
	waitHold
}
script 220 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Choose the
	same mode as
	your friend!
	"""
	waitHold
}
script 221 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Your friend is
	in a different
	tournament!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Must be in the
	same tournament
	to compare.
	"""
	waitHold
}
script 222 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	controlLock
	"""
	Comparing records!
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	wait
		frames = 60
	"""
	.
	"""
	controlUnlock
	waitHold
}
script 223 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Records were
	updated!
	"""
	waitHold
}
script 224 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	No records
	were updated…
	"""
	waitHold
}
script 225 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Booting up
	the chip
	trade screen!
	"""
	waitHold
}
script 226 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Booting up
	the program
	trade screen!
	"""
	waitHold
}
script 227 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You don't have
	any non-GigaChips
	in your Pack!
	"""
	waitHold
}
script 228 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	I have no allies
	I trust enough to
	send over yet…
	"""
	keyWait
		any = false
	waitHold
}
script 229 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Going to waiting
	screen!
	"""
	waitHold
}
script 230 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Going to dispatch
	screen!
	"""
	waitHold
}
script 231 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Deleted entry:
	
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printShortString
		bufferOffset = 1
	keyWait
		any = false
	waitHold
}
script 232 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The Navi seems
	to be in our
	tournament.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can't delete
	the entry!
	"""
	keyWait
		any = false
	waitHold
}
script 233 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Receiving entry!
	"""
	waitHold
}
script 234 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Accept entry
	
	"""
	printEnemy
		buffer = 2
		enemy = 0
	printBufferedShortString
		bufferOffset = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 235 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Huh? Looks like
	we failed to
	receive the data!
	"""
	keyWait
		any = false
	waitHold
}
script 236 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send which Navi?
	"""
	waitHold
}
script 237 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Send 
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 0
		name = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 238 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Transmission
	stopped.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 239 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Sending entry
	data…
	"""
	waitHold
}
script 240 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Sent successfully!
	"""
	keyWait
		any = false
	waitHold
}
script 241 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Entry completed!
	"""
	keyWait
		any = false
	waitHold
}
script 242 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Only two Navis
	of the same
	type may enter.
	"""
	keyWait
		any = false
	waitHold
}
script 243 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The WaitingRoom
	is full now.
	Overwrite who?
	"""
	waitHold
}
script 244 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	The same Navi
	is here already!
	"""
	keyWait
		any = false
	waitHold
}
script 245 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Overwrite
	
	"""
	printEnemy
		buffer = 1
		enemy = 0
	printWaitingRoomName
		buffer = 2
		name = 0
	"""
	?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 246 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Friend didn't
	have enough chips.
	Battle canceled!
	"""
	waitHold
}
script 247 mmbn4-lc {
	"""
	We barely managed
	to win that one…
	That was tough!
	"""
	keyWait
		any = false
	waitHold
}
script 248 mmbn4-lc {
	"""
	We did it,Lan!
	Nice operating!
	"""
	keyWait
		any = false
	waitHold
}
script 249 mmbn4-lc {
	"""
	Aw,so close…
	We'll win next time!
	"""
	keyWait
		any = false
	waitHold
}
script 250 mmbn4-lc {
	"""
	I'm sorry,Lan…
	I'm to blame too!
	"""
	keyWait
		any = false
	waitHold
}
script 251 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can't fight
	someone in the
	same tournament!
	"""
	waitHold
}
@archive 6E2D1C
@size 136

script 134 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"Disable all mods."
	waitHold
}
script 135 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	"Enable all mods."
	waitHold
}
@archive 6E2D68
@size 20

script 0 mmbn4s {
	"""
	Training
	"""
	end
}
script 1 mmbn4s {
	"""
	Network Duel
	"""
	end
}
script 2 mmbn4s {
	"""
	Instructions
	"""
	end
}
script 3 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	1P Practice Mode.
	Features continuous
	battles with Navis.
	"""
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Network Duel Mode.
	Duel it out against
	your friends' Navis!
	"""
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	I,Mr.Famous,will
	instruct you in
	Operation Battle.
	"""
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Oops! There's been
	a connection error…
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	I'm processing the
	connection status.
	Give me a moment…
	"""
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Congratulations! I
	believe you're ready
	to duel a friend!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Too bad… but don't
	lose heart! Try
	again!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	This is a mode
	for one player!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Disconnect the cable,
	then select it again!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	No Navi data has
	been transmitted
	yet.
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Your friend isn't
	quite ready yet.
	Hold on a sec…
	"""
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Well done!
	Beautiful operation!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Too bad… but don't
	lose heart! Try
	again!
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Operation Battle!
	Insert a NaviChip &
	transmit your Navi!
	"""
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Operation Battle
	puts you in the role
	of Operator!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You'll send chips to
	your Navi and direct
	it as it fights!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The Navi will
	automatically act
	on its own,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but you can move it
	back and forward
	by using [SwitchLeftRight],
	"""
	keyWait
		any = false
	clearMsg
	"""
	change tactics with [SwitchDown],
	and change equipment
	with [SwitchUp]!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Yet the gauge drains
	while talking,so be
	quick and efficient!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Once the gauge fills,
	insert chips to send
	to your Navi!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The gauge's color
	determines what type
	of chips you can send.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If it's filled up to
	yellow,you can send
	Standard Chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If it's filled up to
	blue,you can send
	MegaChips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	And if it's filled up
	to red,you can send
	GigaChips!
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,you can only
	use each chip a set
	number of times.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Though the gauge fills
	over time,it depletes
	if you take damage…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Skilled Navi control
	to let the gauge fill
	is key to victory!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Last up is [SwitchL]…
	But I'll let you figure
	that one out yourself!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This ends my
	explanation!
	I wish you luck!
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Oops! There's been
	a connection error…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Check the Chip Gate
	connection.
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 18,
			jump = continue
		]
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	The Chip Gate is not
	connected!
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 57
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	callDisableMugshotBrighten
	mugshotShow
		mugshot = MrFamous
	"""
	Check the Chip Gate
	connection.
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 18,
			jump = continue
		]
	waitHold
}
@archive 6E31DC
@size 11

script 0 mmbn4s {
	"Fldr1"
	end
}
script 1 mmbn4s {
	"Fldr2"
	end
}
script 2 mmbn4s {
	"HackFldr"
	end
}
script 3 mmbn4s {
	"XtraFldr"
	end
}
script 4 mmbn4s {
	"ApprFldr"
	end
}
script 5 mmbn4s {
	"FamFoldr"
	end
}
script 6 mmbn4s {
	"HackFldr"
	end
}
script 7 mmbn4s {
	"HackFldr"
	end
}
script 10 mmbn4s {
	"Pack"
	end
}
@archive 6E3238
@size 102

script 0 mmbn4s {
	"Dad"
	end
}
script 1 mmbn4s {
	"Lan"
	end
}
script 2 mmbn4s {
	"DublSoul"
	end
}
script 3 mmbn4s {
	"________"
	end
}
script 4 mmbn4s {
	"Lan"
	end
}
script 5 mmbn4s {
	"I have Chisao"
	end
}
script 6 mmbn4s {
	"Chisao"
	end
}
script 7 mmbn4s {
	"Lan"
	end
}
script 8 mmbn4s {
	"Help!"
	end
}
script 9 mmbn4s {
	"JomonEle"
	end
}
script 10 mmbn4s {
	"Mr.Lan"
	end
}
script 11 mmbn4s {
	"Maintenance"
	end
}
script 12 mmbn4s {
	"DenEZine"
	end
}
script 13 mmbn4s {
	"Mr.Lan"
	end
}
script 14 mmbn4s {
	"Daily Fortune!"
	end
}
script 15 mmbn4s {
	"ENBA"
	end
}
script 16 mmbn4s {
	"Mr.Lan"
	end
}
script 17 mmbn4s {
	"Notice"
	end
}
script 18 mmbn4s {
	"Mom"
	end
}
script 19 mmbn4s {
	"Lan"
	end
}
script 20 mmbn4s {
	"Back home"
	end
}
script 21 mmbn4s {
	"WNBA"
	end
}
script 22 mmbn4s {
	"Mr.Lan"
	end
}
script 23 mmbn4s {
	"Meeting Place"
	end
}
script 24 mmbn4s {
	"Roll"
	end
}
script 25 mmbn4s {
	"Lan"
	end
}
script 26 mmbn4s {
	"Challenge"
	end
}
script 27 mmbn4s {
	"Den News"
	end
}
script 28 mmbn4s {
	"ACDC ML"
	end
}
script 29 mmbn4s {
	"Virus Scans"
	end
}
script 30 mmbn4s {
	"Sal"
	end
}
script 31 mmbn4s {
	"Lan"
	end
}
script 32 mmbn4s {
	"Hey there!"
	end
}
script 33 mmbn4s {
	"Sal"
	end
}
script 34 mmbn4s {
	"Lan"
	end
}
script 35 mmbn4s {
	"Please help!"
	end
}
script 36 mmbn4s {
	"Dad"
	end
}
script 37 mmbn4s {
	"Lan"
	end
}
script 38 mmbn4s {
	"NaviCust"
	end
}
script 39 mmbn4s {
	"Mom"
	end
}
script 40 mmbn4s {
	"Lan"
	end
}
script 41 mmbn4s {
	"Please help?"
	end
}
script 42 mmbn4s {
	"J.Bomber"
	end
}
script 43 mmbn4s {
	"Lan"
	end
}
script 44 mmbn4s {
	"Bring it on!"
	end
}
script 45 mmbn4s {
	"C.Master"
	end
}
script 46 mmbn4s {
	"Lan"
	end
}
script 47 mmbn4s {
	"In a bind?"
	end
}
script 48 mmbn4s {
	"Dad"
	end
}
script 49 mmbn4s {
	"Lan"
	end
}
script 50 mmbn4s {
	"GutsSoul"
	end
}
script 51 mmbn4s {
	"Dad"
	end
}
script 52 mmbn4s {
	"Lan"
	end
}
script 53 mmbn4s {
	"FireSoul"
	end
}
script 54 mmbn4s {
	"Dad"
	end
}
script 55 mmbn4s {
	"Lan"
	end
}
script 56 mmbn4s {
	"RollSoul"
	end
}
script 57 mmbn4s {
	"Dad"
	end
}
script 58 mmbn4s {
	"Lan"
	end
}
script 59 mmbn4s {
	"WindSoul"
	end
}
script 60 mmbn4s {
	"Dad"
	end
}
script 61 mmbn4s {
	"Lan"
	end
}
script 62 mmbn4s {
	"ThunSoul"
	end
}
script 63 mmbn4s {
	"Dad"
	end
}
script 64 mmbn4s {
	"Lan"
	end
}
script 65 mmbn4s {
	"SrchSoul"
	end
}
script 66 mmbn4s {
	"Dad"
	end
}
script 67 mmbn4s {
	"Lan"
	end
}
script 68 mmbn4s {
	"AquaSoul"
	end
}
script 69 mmbn4s {
	"Dad"
	end
}
script 70 mmbn4s {
	"Lan"
	end
}
script 71 mmbn4s {
	"NumSoul"
	end
}
script 72 mmbn4s {
	"Dad"
	end
}
script 73 mmbn4s {
	"Lan"
	end
}
script 74 mmbn4s {
	"WoodSoul"
	end
}
script 75 mmbn4s {
	"Dad"
	end
}
script 76 mmbn4s {
	"Lan"
	end
}
script 77 mmbn4s {
	"MetalSoul"
	end
}
script 78 mmbn4s {
	"Dad"
	end
}
script 79 mmbn4s {
	"Lan"
	end
}
script 80 mmbn4s {
	"JunkSoul"
	end
}
script 81 mmbn4s {
	"Dad"
	end
}
script 82 mmbn4s {
	"Lan"
	end
}
script 83 mmbn4s {
	"ProtoSoul"
	end
}
script 84 mmbn4s {
	"Chaud"
	end
}
script 85 mmbn4s {
	"Lan"
	end
}
script 86 mmbn4s {
	"Undernet"
	end
}
script 87 mmbn4s {
	"WeathCen"
	end
}
script 88 mmbn4s {
	"Battlers"
	end
}
script 89 mmbn4s {
	"Weather update"
	end
}
script 90 mmbn4s {
	"Yai"
	end
}
script 91 mmbn4s {
	"Lan"
	end
}
script 92 mmbn4s {
	"Get to it!"
	end
}
script 93 mmbn4s {
	"Dex"
	end
}
script 94 mmbn4s {
	"Lan"
	end
}
script 95 mmbn4s {
	"You the man!"
	end
}
script 96 mmbn4s {
	"JomonEle"
	end
}
script 97 mmbn4s {
	"Mr.Lan"
	end
}
script 98 mmbn4s {
	"Notice"
	end
}
script 99 mmbn4s {
	"HotelNet"
	end
}
script 100 mmbn4s {
	"Mr.Lan"
	end
}
script 101 mmbn4s {
	"Dear customer"
	end
}
@archive 6E3520
@size 101

script 0 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	It looks like
	MegaMan acquired
	a new ability!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's soul
	harmonized with
	another Navi's soul,
	"""
	keyWait
		any = false
	clearMsg
	"""
	allowing him to
	temporarily draw upon
	that Navi's strength.
	"""
	keyWait
		any = false
	clearMsg
	"""
	This ability is
	known as…
	"""
	keyWait
		any = false
	clearMsg
	"""
	DublSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I've attached a
	training program,
	so give it a try!
	"""
	keyWait
		any = false
	flagSet
		flag = 157
	flagSet
		flag = 869
	end
}
script 1 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	I have Chisao.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you want him back,
	accept my challenge.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I've prepared
	several clues that
	lead to my location.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Use them to find me.
	If you fail…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Chisao forfeits his
	life. There is one
	condition:
	"""
	keyWait
		any = false
	clearMsg
	"""
	only Lan can accept
	this challenge.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If anyone else
	interferes,
	the hostage dies.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Here is the first
	clue:
	"""
	keyWait
		any = false
	clearMsg
	"""
	OMIQR
	LANUE
	DNSA!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Top to bottom.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you can figure
	this out,the way
	will be revealed…
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Heeelp! I'm at the
	park squi…
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	In appreciation of
	your continued
	patronage,we are
	"""
	keyWait
		any = false
	clearMsg
	"""
	offering our customers
	free PET maintenance
	checks at DenDome.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We recommend any
	tournament entrants
	try out our service.
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	CyberMail Magazine:
	Here's your fortune
	for today!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You are likely to
	drown today!
	Beware of water!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 50
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Hello. This is the
	Electopia NetBattle
	Association.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We are pleased to
	announce we will host
	the Eagle Tournament,
	"""
	keyWait
		any = false
	clearMsg
	"""
	to determine the
	strongest NetBattler
	in Electopia!
	"""
	keyWait
		any = false
	clearMsg
	"""
	We would welcome
	your participation,
	Mr.Lan.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We will contact you
	with details at a
	later date.
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Lan,someone's
	here to see you.
	Come back home.
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Hello. This is the
	World NetBattle
	Association.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Upon your arrival
	in Netopia,please
	proceed to the plaza
	"""
	keyWait
		any = false
	clearMsg
	"""
	by the river,where a
	local representative
	will meet you.
	"""
	keyWait
		any = false
	clearMsg
	"""
	He will be able to
	assist you until the
	tournament begins.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Good luck!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Thanks for helping
	me earlier,Lan,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but don't expect me
	to forfeit!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Jack into the toy
	in Mayl's room
	and I'll show you
	"""
	keyWait
		any = false
	clearMsg
	"""
	just how well I can
	fight!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Is everyone
	performing regular
	virus scans?
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you don't,your
	electronic devices may
	suddenly break down.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Try to regularly
	check for viruses
	every day!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Long time no see,
	Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Looks like
	we're facing each
	other next match.
	"""
	keyWait
		any = false
	clearMsg
	"""
	May the best one
	win!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Say,I'm selling
	sandwiches at ACDC
	Park.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Why don't you
	come on by?
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Lan,how did it go
	at the stadium?
	Did you get hurt?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I was able to convince
	everyone over here,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but after sending
	WoodMan to the
	Park Area…
	"""
	keyWait
		any = false
	clearMsg
	"""
	I lost contact
	with him!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Oh,I don't know
	what I should do…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Lan,could you
	please help?
	I'm at Castillo now.
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	I'm counting on you
	to look after Mom
	while I'm away.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm giving back
	the NaviCustomizer
	Mom took from you,
	"""
	keyWait
		any = false
	clearMsg
	"""
	hoping it'd keep you
	out of trouble.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You remember how to
	use it,right?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll explain it
	again just in case…
	"""
	keyWait
		any = false
	clearMsg
	"""
	By installing and
	running the NaviCust
	on your PET,
	"""
	keyWait
		any = false
	clearMsg
	"""
	you can add all sorts
	of handy programs
	to MegaMan.
	"""
	keyWait
		any = false
	clearMsg
	"""
	As long as your
	programming skills
	are up to it,
	"""
	keyWait
		any = false
	clearMsg
	"""
	you can customize
	MegaMan to make him
	much stronger!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm attaching a few
	programs for you
	to practice with.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Also,you may
	have to switch
	folders depending
	"""
	keyWait
		any = false
	clearMsg
	"""
	on your custom
	settings,so I'll
	attach this as well.
	"""
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 131
		jumpIfTrue = 100
		jumpIfFalse = continue
	soundPlay
		track = 115
	itemGiveNaviCustProgram
		program = 52
		color = 1
		amount = 1
	itemGiveNaviCustProgram
		program = 136
		color = 2
		amount = 1
	itemGiveNaviCustProgram
		program = 140
		color = 1
		amount = 1
	startGiveFolder
		slot = 2
		folder = 3
	"""
	Lan got:
	NaviCustomizer and
	NaviCust programs
	"""
	keyWait
		any = false
	clearMsg
	"""
	"
	"""
	printNaviCustProgram
		buffer = 0
		program = 13
	"""
	",
	"
	"""
	printNaviCustProgram
		buffer = 0
		program = 34
	"""
	",
	and "
	"""
	printNaviCustProgram
		buffer = 0
		program = 35
	"""
	"!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Lan also got:
	"
	"""
	printFolderName
		buffer = 0
		entry = 3
	"""
	"!!
	"""
	keyWait
		any = false
	flagSet
		flag = 131
	flagSet
		flag = 1114
	end
}
script 13 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Lan,there's smoke
	coming out of your
	PC!
	"""
	keyWait
		any = false
	clearMsg
	"""
	What should I do?!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Have you put on the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"?
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you have,jack
	into the GoddessComp
	by the river plaza!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll show you
	just how scary
	FootBomb can be!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	You seem to be
	in a bind…
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you want,I can
	initiate you in the
	secret arts of curry.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm waiting for you
	in Park Area 2's
	Cooking Dojo!
	"""
	keyWait
		any = false
	clearMsg
	"""
	-Cooking Master
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice panel-
	breaking chips such as
	CrakOut for GutsSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Panel-breaking and
	\[None\] element chips
	will do +30 damage.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release
	[SwitchB] to GutPunch
	the panel in front,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and press it rapidly
	to fire the GutsMGun
	with invincibility!
	"""
	keyWait
		any = false
	clearMsg
	"""
	GutsSoul is a mix of
	guts and strategy!
	Good luck!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice \[Fire\]
	chips like HeatShot
	for FireSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's element
	will change to
	\[Fire\],
	"""
	keyWait
		any = false
	clearMsg
	"""
	so he takes
	double damage from
	\[Water\] attacks.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Some panels turn to
	grass,and holding and
	releasing [SwitchA]
	"""
	keyWait
		any = false
	clearMsg
	"""
	when using a \[Fire\]
	chip launches a
	FireArm.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for a 3-square range
	flamethrower!
	"""
	keyWait
		any = false
	clearMsg
	"""
	FireSoul is a hot
	one to handle!
	Good luck!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice recovery
	chips like Recov10
	for RollSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for a RollArrow that
	destroys enemy chips!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Also,each time you
	use a chip while
	using RollSoul,
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan will
	recover 10% of
	his maximum HP!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So it's effective to
	use it when you can
	select many chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Healing and strategy
	are in harmony with
	RollSoul! Good luck!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice \[Wind\] chips
	such as AirShot
	for WindSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	When you unite,a
	NorthWind blows away
	barriers and auras!
	"""
	keyWait
		any = false
	clearMsg
	"""
	WindSoul lets you
	travel over cracked
	panels and holes,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and blows wind on the
	enemy's side to bring
	them close-range!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Furthermore,all
	\[Wind\]-type chips
	deal +10 damage!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Press [SwitchB] to blow away
	enemies with an
	AirShot,
	"""
	keyWait
		any = false
	clearMsg
	"""
	or hold+release it to
	blast enemies to the
	back with a WindRack.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Control the wind and
	conquer battles with
	WindSoul. Good luck!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice \[Elec\]
	chips like Thunder1
	for ThunSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's element
	will change to
	\[Elec\],
	"""
	keyWait
		any = false
	clearMsg
	"""
	so he takes
	double damage from
	\[Wood\] attacks.
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,\[Elec\] and
	\[None\] chips gain
	a paralyzing effect!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for a paralyzing
	ZapRing!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Back-to-back attacks
	are what ThunSoul's
	all about! Good luck!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice hiding-
	type chips such as
	Invis for SrchSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Upon unite,it forces
	your opponent out of
	Invis or PopUp state!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for a ScopeGun,aiming
	at targets anywhere.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can also shuffle
	the chips available on
	the Custom Screen!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This aids strategies
	that call for getting
	Program Advances.
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,you can only
	shuffle up to 3 times
	per chip selection.
	"""
	keyWait
		any = false
	clearMsg
	"""
	SrchSoul can up your
	odds for a sudden
	comeback! Good luck!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice \[Aqua\]
	chips such as Bubbler
	for AquaSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's element
	will change to
	\[Aqua\].
	"""
	keyWait
		any = false
	clearMsg
	"""
	He won't slip on ice,
	but takes double
	damage from \[Wood\].
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for AquaShot. On hit,
	it bubbles forward 1.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold [SwitchA] to charge
	\[Aqua\] chips for
	double damage!
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,you can't
	charge chips that
	stop time.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Stock plenty of
	\[Aqua\] chips in your
	folder for big damage!
	"""
	keyWait
		any = false
	clearMsg
	"""
	AquaSoul is a
	specialist at water
	warfare. Good luck!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice number-
	altering chips such as
	Atk+10 for NumSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	When united,MegaMan's
	\[None\] element chips
	inflict +10 damage.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Chips that do
	multiple hits benefit
	the most from this!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	to throw a DiceBomb
	3 squares ahead.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Its attack power
	depends on the
	number it lands on!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can also
	select 10 chips from
	the Custom Screen!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Utilize the power of
	numbers with
	NumSoul! Good luck!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice \[Wood\]
	chips such as
	Boomer1 for WoodSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's element
	will change to
	\[Wood\].
	"""
	keyWait
		any = false
	clearMsg
	"""
	Grass heals his HP,
	but he'll take double
	damage from \[Fire\].
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	to fire a Twister
	2 squares ahead.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Also,\[Wood\] chips can
	assume the power of
	the next \[None\] chip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Absorb the attack of
	powerful \[None\] chips
	for serious damage.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You also gain immunity
	to effects like
	paralysis/confusion.
	"""
	keyWait
		any = false
	clearMsg
	"""
	WoodSoul harnesses
	nature's kindness and
	ferocity! Good luck!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice Break-type
	chips such as AirHoc1
	for MetalSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's Buster
	becomes a BreakBuster
	that breaks guards!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	to pound the panel in
	front with MetalFist!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold [SwitchA] to charge
	Break/\[None\] chips
	for double damage!
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,you can't
	charge chips that
	stop time.
	"""
	keyWait
		any = false
	clearMsg
	"""
	MetalSoul is the
	epitome of manly
	might! Good luck!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice object-type
	chips such as RockCube
	for JunkSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Upon uniting,MegaMan
	will cause enemies
	to be confused!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	for a Poltergeist that
	tosses obstacles!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Also,on the Custom
	Screen,you can
	select "JunkChips",
	"""
	keyWait
		any = false
	clearMsg
	"""
	chips which were
	already used in
	the battle!
	"""
	keyWait
		any = false
	clearMsg
	"""
	JunkSoul embodies
	both destruction and
	recycling! Good luck!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Sacrifice sword chips
	such as WideSwrd
	for ProtoSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	While united,you can
	reflect back attacks
	with [SwitchB]+[SwitchLeft]!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hold and release [SwitchB]
	to use a WideSwrd!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Charge sword chips
	with [SwitchA] to leap
	2 squares ahead,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and cut for double
	the damage!
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,you can't
	charge chips that
	stop time.
	"""
	keyWait
		any = false
	clearMsg
	"""
	ProtoSoul offers
	superior offense and
	defense! Good luck!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	I have some news…
	"""
	keyWait
		any = false
	clearMsg
	"""
	ProtoMan has gone
	into the Undernet.
	As I'm sure you know,
	"""
	keyWait
		any = false
	clearMsg
	"""
	the entrance to the
	Undernet is in the
	back of Sharo Area.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Nebula is very likely
	involved,as with all
	DarkChip matters.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Be on your guard!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	The sudden blizzard
	menacing Netopia
	"""
	keyWait
		any = false
	clearMsg
	"""
	is thought to have
	been caused by a cold
	air mass from Sharo.
	"""
	keyWait
		any = false
	clearMsg
	"""
	The reason for its
	movement to Netopia
	is as yet unknown.
	"""
	keyWait
		any = false
	clearMsg
	"""
	The weather in the
	Sharo region is
	generally managed
	"""
	keyWait
		any = false
	clearMsg
	"""
	by the weather
	satellite at the
	Sharo SpaceCenter,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but Officials
	believe it may be
	malfunctioning.
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Go find Roll!
	Here,this may come
	in handy!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 146
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	soundPlay
		track = 115
	itemGive
		item = 146
		amount = 1
	"""
	Lan got:
	"
	"""
	printItem
		buffer = 0
		item = 146
	"""
	"!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	I heard Roll made
	it back all right.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I knew you could
	do it,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Here's a little
	somethin' to show
	my respect!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 145
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	soundPlay
		track = 115
	itemGive
		item = 145
		amount = 1
	"""
	Lan got:
	"
	"""
	printItem
		buffer = 0
		item = 145
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	To our esteemed
	customers:
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thank you for your
	continued support.
	"""
	keyWait
		any = false
	clearMsg
	"""
	On behalf of
	everyone at Jomon
	Elec,we are sending
	"""
	keyWait
		any = false
	clearMsg
	"""
	you our HP Banner
	as a token of our
	appreciation.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We will continue to
	strive to be closer
	"""
	keyWait
		any = false
	clearMsg
	"""
	to everyone and to
	meet your needs.
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 156
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 468
	soundPlay
		track = 115
	itemGive
		item = 156
		amount = 1
	"""
	Lan got:
	"
	"""
	printItem
		buffer = 0
		item = 156
	"""
	"!!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 51
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Thank you for
	staying at our hotel
	the other day.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We would like to
	present participants
	in the Red Sun
	"""
	keyWait
		any = false
	clearMsg
	"""
	Tournament with our
	hotel HP Banner.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Please visit us
	again on your next
	trip to Netopia!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 158
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 466
	soundPlay
		track = 115
	itemGive
		item = 158
		amount = 1
	"""
	Lan got:
	"
	"""
	printItem
		buffer = 0
		item = 158
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Hello. This is the
	Electopia NetBattle
	Association.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We are pleased to
	announce we will host
	the Hawk Tournament,
	"""
	keyWait
		any = false
	clearMsg
	"""
	to determine the
	strongest NetBattler
	in Electopia!
	"""
	keyWait
		any = false
	clearMsg
	"""
	We would welcome
	your participation,
	Mr.Lan.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We will contact you
	with details at a
	later date.
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	positionText
		left = 64
		top = 107
		arrowDistance = 3
	colorBuffered
		buffer = 0
	textSpeed
		delay = 1
	positionArrow
		left = 222
		top = 139
	"""
	Thank you for
	staying at our hotel
	the other day.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We would like to
	present participants
	in the Blue Moon
	"""
	keyWait
		any = false
	clearMsg
	"""
	Tournament with our
	hotel HP Banner.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Please visit us
	again on your next
	trip to Netopia!
	"""
	keyWait
		any = false
	clearMsg
	checkItem
		item = 158
		amount = 1
		jumpIfEqual = 100
		jumpIfGreater = 100
		jumpIfLess = continue
	flagClear
		flag = 466
	soundPlay
		track = 115
	itemGive
		item = 158
		amount = 1
	"""
	Lan got:
	"
	"""
	printItem
		buffer = 0
		item = 158
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4s {
	end
}
@archive 6E4890
@size 23

script 0 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan!
	"
	"""
	printItem
		buffer = 0
		item = 180
	"""
	"
	just expired!
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan!
	"
	"""
	printItem
		buffer = 0
		item = 178
	"""
	"
	just expired!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	checkChapter
		lower = 59
		upper = 59
		jumpIfInRange = 3
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we need a
	special vehicle to
	cross this rail!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 4
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we need a
	special vehicle to
	cross this rail!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Bwan!
	(Lan!)
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bwe beed a bebbal
	behible (We need a
	special vehicle)
	"""
	keyWait
		any = false
	clearMsg
	"""
	bu bwoss bis bwail!
	(to cross this rail!)
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,
	you've got mail!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,
	you've got mail!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's from Chaud!
	I'll read it!
	"""
	keyWait
		any = false
	clearMsg
	"""
	"I have some news…
	"""
	keyWait
		any = false
	clearMsg
	"""
	 ProtoMan has gone
	 into the Undernet.
	 As I'm sure you know,
	"""
	keyWait
		any = false
	clearMsg
	"""
	 the entrance to the
	 Undernet is in the
	 back of Sharo Area.
	"""
	keyWait
		any = false
	clearMsg
	"""
	 Nebula is very likely
	 involved,as with all
	 DarkChip matters.
	"""
	keyWait
		any = false
	clearMsg
	"""
	 Be on your guard!"
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's head to the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,
	you've got mail!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's from Mom!
	I'll read it!
	"""
	keyWait
		any = false
	clearMsg
	"""
	"Lan,there's smoke
	 coming out of your
	 PC!
	"""
	keyWait
		any = false
	clearMsg
	"""
	 What should I do?!"
	"""
	keyWait
		any = false
	clearMsg
	"""
	Oh no! We have to go
	back home!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4s {
	"""
	THANK YOU FOR PLAYING!
	YOU COMPLETED BN4!!
	"""
	end
}
script 21 mmbn4s {
	"""
	PRESS [SwitchPlus]
	"""
	end
}
script 22 mmbn4-lc {
	msgOpen
	textSpeed
		delay = 0
	positionText
		left = 32
		top = 108
		arrowDistance = 2
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	From save point
	
	"""
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Start game 
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
@archive 6E4BEC
@size 197

script 0 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's your PET - your
	PErsonal Terminal.
	I'm installed here.
	"""
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	High-tech earbuds
	that can block out
	outside sounds.
	"""
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Repair data,used
	for fixing Mr.Progs.
	"""
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A type of virus that
	uses sonic waves to
	mess up computers.
	"""
	waitHold
}
script 4 mmbn4-lc {
	checkFlag
		flag = 788
		jumpIfTrue = 195
		jumpIfFalse = continue
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This mystery data
	has a distinct air
	of maliciousness…
	"""
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This data activates
	the sonar system in
	the ElTwrComp!
	"""
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This data activates
	the sonar system in
	the ElTwrComp!
	"""
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's proof of being
	the best NetBattler
	in all of DenCity!
	"""
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Looks like a key for
	opening a door on
	the Net somewhere.
	"""
	waitHold
}
script 9 mmbn4-lc {
	checkFlag
		flag = 1674
		jumpIfTrue = 192
		jumpIfFalse = continue
	checkFlag
		flag = 1675
		jumpIfTrue = 193
		jumpIfFalse = continue
	checkFlag
		flag = 1676
		jumpIfTrue = 194
		jumpIfFalse = continue
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A memo.
	"""
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	"si ivan neerg eht
	!eerht aera nwot ni"
	"""
	keyWait
		any = false
	clearMsg
	"""
	I wonder what the
	heck that means?
	"""
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	might try looking in
	You             side
	!flowers of vase the
	"""
	keyWait
		any = false
	clearMsg
	"""
	Spiral.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I wonder what this
	is hinting at?
	"""
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Data,labeled "1."
	Wonder what it does?
	"""
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Data,labeled "2."
	Wonder what it does?
	"""
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Data,labeled "3."
	Wonder what it does?
	"""
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Data,labeled "4."
	Wonder what it does?
	"""
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Data,labeled "5."
	Wonder what it does?
	"""
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's an electrically-
	powered top. Looks
	like it spins fast!
	"""
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	NetBattle Club
	Secret Technique 1:
	"Falling On Heads!"
	"""
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	NetBattle Club
	Secret Technique 2:
	"Spin 'n Slam!"
	"""
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	NetBattle Club
	Secret Technique 3:
	"Zigzag Top Attack!"
	"""
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	NetBattle Club
	Secret Technique 4:
	"Spin and Guard!"
	"""
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's data concerning
	Mettaur physiology.
	"""
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a rare goldbug!
	This one's a male!
	He's awfully rowdy.
	"""
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a rare goldbug!
	This one's female!
	She's totally still…
	"""
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a membership
	for the old folks'
	NetBattle Club.
	"""
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It says that it's
	an admission ticket
	for Castillo!
	"""
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A scoop of ice cream
	spilling from a cone!
	Wish I could eat it…
	"""
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This'll let me
	breathe even
	under cyber-water!
	"""
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a key for
	getting into
	Shuko's area!
	"""
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a program that
	converts sunlight
	into energy!
	"""
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's proof of being
	the best NetBattler
	in Electopia!
	"""
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's proof of being
	the best NetBattler
	in the world!
	"""
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This'll let us go
	to Nets all around
	the world!
	"""
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's key-shaped data
	that will activate
	if we get all four.
	"""
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's key-shaped data
	that will activate
	if we get all four.
	"""
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's key-shaped data
	that will activate
	if we get all four.
	"""
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's key-shaped data
	that will activate
	if we get all four.
	"""
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Mirror."
	"""
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Comb."
	"""
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"BigTree."
	"""
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Statue."
	"""
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"MghtyBlw."
	"""
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"StrmKiss."
	"""
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Lecture."
	"""
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"WizCat."
	"""
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"WizRat."
	"""
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"WzDragon."
	"""
	waitHold
}
script 48 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"MagcSeal."
	"""
	waitHold
}
script 49 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"WildDnce."
	"""
	waitHold
}
script 50 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"BadJoke."
	"""
	waitHold
}
script 51 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"GoodNose."
	"""
	waitHold
}
script 52 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Scratch."
	"""
	waitHold
}
script 53 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"GoodEyes."
	"""
	waitHold
}
script 54 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Thrust."
	"""
	waitHold
}
script 55 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"War."
	"""
	waitHold
}
script 56 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Emotion."
	"""
	waitHold
}
script 57 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Comedy."
	"""
	waitHold
}
script 58 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Pride."
	"""
	waitHold
}
script 59 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Bird."
	"""
	waitHold
}
script 60 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Dance."
	"""
	waitHold
}
script 61 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Lance."
	"""
	waitHold
}
script 62 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Zombie."
	"""
	waitHold
}
script 63 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"ToyPart."
	"""
	waitHold
}
script 64 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Dancer."
	"""
	waitHold
}
script 65 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Politicn."
	"""
	waitHold
}
script 66 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"FarmRobo."
	"""
	waitHold
}
script 67 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"GunDelSol."
	"""
	waitHold
}
script 68 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"CrmScarf."
	"""
	waitHold
}
script 69 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"RedUWear."
	"""
	waitHold
}
script 70 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"WalshP37."
	"""
	waitHold
}
script 71 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Otenko."
	"""
	waitHold
}
script 72 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Sunlight."
	"""
	waitHold
}
script 73 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Moonlght."
	"""
	waitHold
}
script 74 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"MissSun."
	"""
	waitHold
}
script 75 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Skylight."
	"""
	waitHold
}
script 76 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Taiyohh!"
	"""
	waitHold
}
script 77 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"Mo-o-m!"
	"""
	waitHold
}
script 78 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Storytelling data!
	The label reads
	"BaldHead."
	"""
	waitHold
}
script 79 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A vehicle for
	speeding around
	the Cyberworld!
	"""
	waitHold
}
script 80 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a key for the
	door in Town Area 2.
	"""
	waitHold
}
script 81 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's a letter from
	Dad to you,Lan!
	"""
	waitHold
}
script 82 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A scroll of Cyber-
	Sutras for exorcising
	Navi ghosts!
	"""
	waitHold
}
script 83 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A strange crystal
	that can detect
	Navi ghosts!
	"""
	waitHold
}
script 84 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A plane ticket for
	traveling abroad!
	"""
	waitHold
}
script 85 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	some door on the Net.
	"""
	waitHold
}
script 86 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of bravery,
	bestowed in Netopia
	since times of old!
	"""
	waitHold
}
script 87 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of strength,
	bestowed in Netopia
	since times of old!
	"""
	waitHold
}
script 88 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of wisdom,
	bestowed in Netopia
	since times of old!
	"""
	waitHold
}
script 89 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of kindness,
	bestowed in Netopia
	since times of old!
	"""
	waitHold
}
script 90 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Flyers for Higsby's!
	We've got 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 left!
	"""
	waitHold
}
script 91 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for Higsby's
	warehouse in town!
	"""
	waitHold
}
script 92 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Lilly's flute.
	It has the power
	to stop WindMan!
	"""
	waitHold
}
script 93 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Liquor capable of
	knocking out the
	strongest viruses!
	"""
	waitHold
}
script 94 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Gourmet beef jerky.
	Delicious and chewy!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's also a perfect
	bar snack!
	"""
	waitHold
}
script 95 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A video with data
	to cancel VideoMan's
	"rewind" effect!
	"""
	waitHold
}
script 96 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A video with data
	to cancel VideoMan's
	"rewind" effect!
	"""
	waitHold
}
script 97 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A video with data
	to cancel VideoMan's
	"rewind" effect!
	"""
	waitHold
}
script 98 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	FootBomb shoes
	from Netopia.
	"""
	waitHold
}
script 99 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key to the junkyard
	in Yumland Area.
	"""
	waitHold
}
script 100 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A transmitter. Lets
	you track where I am
	from the real world!
	"""
	waitHold
}
script 101 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of completing
	KendoMan's training.
	"""
	waitHold
}
script 102 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of completing
	KendoMan's training.
	"""
	waitHold
}
script 103 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Proof of completing
	KendoMan's training.
	"""
	waitHold
}
script 104 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key to the door
	that leads to
	Tamako's master.
	"""
	waitHold
}
script 105 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A water gun for
	putting out fires
	in the Cyberworld.
	"""
	waitHold
}
script 106 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A powerful buster
	that uses water
	to extinguish fires!
	"""
	waitHold
}
script 107 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A snow shovel. Made
	in Sharo,of course!
	"""
	waitHold
}
script 108 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A program in the
	shape of a board.
	Wonder what it is?
	"""
	waitHold
}
script 109 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A jet program,for
	propulsion.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But it isn't really
	useful by itself…
	"""
	waitHold
}
script 110 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A program in the
	shape of a wing.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But it isn't really
	useful by itself…
	"""
	waitHold
}
script 111 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 112 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 113 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 114 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 115 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 116 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	by Nebula.
	"""
	waitHold
}
script 117 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key to open up the
	bad guys' hideout.
	"""
	waitHold
}
script 118 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A program to restore
	the WaterGod.
	"""
	waitHold
}
script 119 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key for opening
	the doors set up
	NetFrica Area.
	"""
	waitHold
}
script 120 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A doll that holds a
	curse put on me.
	Scary…
	"""
	waitHold
}
script 121 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A mysterious key
	that Nebula members
	seem to hold.
	"""
	waitHold
}
script 122 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A key to a
	Cooking Dojo on
	the Net!
	"""
	waitHold
}
script 123 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Ingredients for curry.
	"""
	waitHold
}
script 124 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	This data shows the
	meaning of kindness.
	"""
	waitHold
}
script 125 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	the JomonElec HP.
	"""
	waitHold
}
script 126 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A cyber-sword. It's
	made for training,
	so it's heavy.
	"""
	waitHold
}
script 127 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A WaterGod statue.
	With this,we can
	become Champion!
	"""
	waitHold
}
script 128 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin white
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 129 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin pink
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 130 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin yellow
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 131 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin red
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 132 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin blue
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 133 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	You can spin green
	NaviCust programs
	by pressing [SwitchL]/[SwitchR]!
	"""
	waitHold
}
script 144 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	Mayl's HP.
	"""
	waitHold
}
script 145 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	Dex's HP.
	"""
	waitHold
}
script 146 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	Yai's HP.
	"""
	waitHold
}
script 147 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to the
	Netopia Hotel HP.
	"""
	waitHold
}
script 148 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	Yumland StatueComp.
	"""
	waitHold
}
script 149 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	NupopoComp.
	"""
	waitHold
}
script 150 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	Sharo's ComputerComp.
	"""
	waitHold
}
script 151 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to
	the Castillo HP.
	"""
	waitHold
}
script 152 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	Text with the code
	for connecting to the
	Sharo SpaceCenter HP.
	"""
	waitHold
}
script 153 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for Mayl's
	HP!
	"""
	waitHold
}
script 154 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for Dex's
	HP!
	"""
	waitHold
}
script 155 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for Yai's
	HP!
	"""
	waitHold
}
script 156 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for the
	JomonElec HP!
	"""
	waitHold
}
script 157 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for the
	Castillo HP!
	"""
	waitHold
}
script 158 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for the
	Netopia Hotel HP!
	"""
	waitHold
}
script 159 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A banner for the
	Sharo SpaceCenter
	HP!
	"""
	waitHold
}
script 160 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Increases max HP
	+20
	"""
	waitHold
}
script 161 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Enlarges Memory
	Map in the
	NaviCust
	"""
	waitHold
}
script 162 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Regular System
	memory +1!
	"""
	waitHold
}
script 163 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Regular System
	memory +2!
	"""
	waitHold
}
script 164 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Regular System
	memory +3!
	"""
	waitHold
}
script 165 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SubChip carrying
	capacity increased!
	"""
	waitHold
}
script 175 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	waitHold
}
script 176 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	50HP!
	"""
	waitHold
}
script 177 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	HP fully!
	"""
	waitHold
}
script 178 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Won't meet
	weak virus
	for a while
	"""
	waitHold
}
script 179 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Clear traps
	on mystery
	data
	"""
	waitHold
}
script 180 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Easier to
	encounter
	last enemy
	"""
	waitHold
}
script 181 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Analyzing encrypted
	Mystery Data…
	"""
	waitHold
}
script 192 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Net-
	Dealers in Town Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: Number of hotdogs
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: In Town Area 3,
	number of triangles
	pointing up or down
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of vending
	machines in ElecTown
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: Number of trees
	with visible trunks
	in ACDC Town
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: Number of house
	markers in ACDC Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: 15 + 2 + 3 - 14 =
	"""
	waitHold
}
script 193 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Jomons
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: How many streets
	radiate from the
	square in ACDC 2?
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: How many
	"
	"""
	printItem
		buffer = 0
		item = 3
	"""
	s" are
	there?
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of Navis
	in ElTwrComp right
	now
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: Number of ramps
	in Town Area 2
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: In Town Area 3,
	number of triangles
	pointing up or down
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: Number of stuffed
	bears in ACDC Town
	"""
	waitHold
}
script 194 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Mr.Progs
	in the LCDComp
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: 15 + 2 + 3 - 14 =
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: Number of hotdogs
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of Net-
	Dealers in Town Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: How many streets
	radiate from the
	square in ACDC 2?
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: Number of Navis
	in ElTwrComp right
	now
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: Number of trees
	visible in ACDC Town
	"""
	waitHold
}
script 195 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	A DarkChip. Higsby
	told us not to use it,
	remember?
	"""
	waitHold
}
script 196 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	positionMugshot
		left = 30
		top = 128
	mugshotShow
		mugshot = MegaMan
	"""
	It's your PET - your
	PErsonal Terminal.
	I'm installed here.
	"""
	waitHold
}
@archive 6E5B94
@size 197

script 0 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A PERSONAL TERMINAL.
	MEGAMAN IS INSTALLED
	ON THIS PET.
	"""
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	HIGH-TECH EARBUDS
	THAT CAN BLOCK OUT
	OUTSIDE SOUNDS.
	"""
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	REPAIR DATA,USED
	FOR FIXING MR.PROGS.
	"""
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A TYPE OF VIRUS THAT
	USES SONIC WAVES TO
	SCRAMBLE COMPUTERS.
	"""
	waitHold
}
script 4 mmbn4-lc {
	checkFlag
		flag = 788
		jumpIfTrue = 195
		jumpIfFalse = continue
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	THIS CHIP HAS AN
	AIR OF MALICIOUSNESS.
	"""
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	THIS DATA ACTIVATES
	THE SONAR SYSTEM IN
	THE ELTWRCOMP.
	"""
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	THIS DATA ACTIVATES
	THE SONAR SYSTEM IN
	THE ELTWRCOMP.
	"""
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A TROPHY FOR BEING
	THE STRONGEST NET
	BATTLER IN DENCITY.
	"""
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	LOOKS LIKE A KEY FOR
	OPENING A DOOR ON
	THE NET SOMEWHERE.
	"""
	waitHold
}
script 9 mmbn4-lc {
	checkFlag
		flag = 1674
		jumpIfTrue = 192
		jumpIfFalse = continue
	checkFlag
		flag = 1675
		jumpIfTrue = 193
		jumpIfFalse = continue
	checkFlag
		flag = 1676
		jumpIfTrue = 194
		jumpIfFalse = continue
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A memo.
	"""
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	"si ivan neerg eht
	!eerht aera nwot ni"
	"""
	keyWait
		any = false
	clearMsg
	"""
	THAT'S WHAT IT SAYS.
	"""
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	might try looking in
	You             side
	!flowers of vase the
	"""
	keyWait
		any = false
	clearMsg
	"""
	Spiral.
	"""
	keyWait
		any = false
	clearMsg
	"""
	THAT'S WHAT IT SAYS.
	"""
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA,LABELED "1."
	"""
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA,LABELED "2."
	"""
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA,LABELED "3."
	"""
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA,LABELED "4."
	"""
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA,LABELED "5."
	"""
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	AN ELECTRICALLY
	POWERED TOP.
	"""
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NETBATTLE CLUB
	SECRET TECHNIQUE 1.
	"""
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NETBATTLE CLUB
	SECRET TECHNIQUE 2.
	"""
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NETBATTLE CLUB
	SECRET TECHNIQUE 3.
	"""
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NETBATTLE CLUB
	SECRET TECHNIQUE 4.
	"""
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DATA CONCERNING
	METTAUR PHYSIOLOGY.
	"""
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A RARE GOLDBUG
	MALE.
	"""
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A RARE GOLDBUG
	FEMALE.
	"""
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NETBATTLE CLUB
	MEMBERSHIP.
	"""
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	AN ADMISSION
	TICKET FOR
	CASTILLO.
	"""
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TASTY-LOOKING ICE
	CREAM.
	"""
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A TANK THAT LETS
	YOU BREATHE EVEN
	IN CYBER-WATER.
	"""
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A KEY FOR GETTING
	INTO SHUKO'S AREA.
	"""
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	THIS PROGRAM CHANGES
	SUNLIGHT INTO ENERGY.
	"""
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	Trophy 2
	"""
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	Trophy 3
	"""
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NetPassp
	"""
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KeyDataA
	"""
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KeyDataB
	"""
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KeyDataC
	"""
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KeyDataD
	"""
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat1
	"""
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat2
	"""
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat3
	"""
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat4
	"""
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat5
	"""
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat6
	"""
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat7
	"""
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat8
	"""
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StorDat9
	"""
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat10
	"""
	waitHold
}
script 48 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat11
	"""
	waitHold
}
script 49 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat12
	"""
	waitHold
}
script 50 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat13
	"""
	waitHold
}
script 51 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat14
	"""
	waitHold
}
script 52 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat15
	"""
	waitHold
}
script 53 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat16
	"""
	waitHold
}
script 54 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat17
	"""
	waitHold
}
script 55 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat18
	"""
	waitHold
}
script 56 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat19
	"""
	waitHold
}
script 57 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat20
	"""
	waitHold
}
script 58 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat21
	"""
	waitHold
}
script 59 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat22
	"""
	waitHold
}
script 60 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat23
	"""
	waitHold
}
script 61 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat24
	"""
	waitHold
}
script 62 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat25
	"""
	waitHold
}
script 63 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat26
	"""
	waitHold
}
script 64 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat27
	"""
	waitHold
}
script 65 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat28
	"""
	waitHold
}
script 66 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat29
	"""
	waitHold
}
script 67 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat30
	"""
	waitHold
}
script 68 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat31
	"""
	waitHold
}
script 69 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat32
	"""
	waitHold
}
script 70 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat33
	"""
	waitHold
}
script 71 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat34
	"""
	waitHold
}
script 72 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat35
	"""
	waitHold
}
script 73 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat36
	"""
	waitHold
}
script 74 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat37
	"""
	waitHold
}
script 75 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat38
	"""
	waitHold
}
script 76 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat39
	"""
	waitHold
}
script 77 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat40
	"""
	waitHold
}
script 78 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StoDat41
	"""
	waitHold
}
script 79 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	C-Slider
	"""
	waitHold
}
script 80 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A KEY FOR OPENING
	THE CYBER DOOR IN
	TOWN AREA 2.
	"""
	waitHold
}
script 81 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DadsNote
	"""
	waitHold
}
script 82 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	CODES FOR DELETING
	THE RESIDUAL MEMORY
	OF A NAVI.
	"""
	waitHold
}
script 83 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A CRYSTAL TO READ
	THE RESIDUAL MEMORY
	OF A NAVI.
	"""
	waitHold
}
script 84 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	PlTicket
	"""
	waitHold
}
script 85 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A KEY FOR OPENING
	A DOOR ON THE NET
	SOMEWHERE.
	"""
	waitHold
}
script 86 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BraveryM
	"""
	waitHold
}
script 87 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	StrngthM
	"""
	waitHold
}
script 88 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	WisdomM
	"""
	waitHold
}
script 89 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KindnesM
	"""
	waitHold
}
script 90 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	FLYERS FOR HIGSBY'S.
	YOU HAVE 
	"""
	printBuffer
		buffer = 1
		minLength = 1
		padZeros = false
		padLeft = true
	"""
	 LEFT.
	"""
	waitHold
}
script 91 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A CYBER-KEY FOR
	HIGSBY'S WAREHOUSE
	IN THE TOWN AREA.
	"""
	waitHold
}
script 92 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	LILLY'S FLUTE.
	IT HAS THE POWER
	TO STOP WINDMAN.
	"""
	waitHold
}
script 93 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	LIQUOR CAPABLE OF
	KNOCKING OUT THE
	STRONGEST VIRUSES.
	"""
	waitHold
}
script 94 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	GOURMET BEEF JERKY.
	TASTES BETTER THE
	MORE YOU CHEW IT.
	"""
	waitHold
}
script 95 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A VIDEO WITH DATA
	TO CANCEL VIDEOMAN'S
	"REWIND" EFFECT.
	"""
	waitHold
}
script 96 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A VIDEO WITH DATA
	TO CANCEL VIDEOMAN'S
	"REWIND" EFFECT.
	"""
	waitHold
}
script 97 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A VIDEO WITH DATA
	TO CANCEL VIDEOMAN'S
	"REWIND" EFFECT.
	"""
	waitHold
}
script 98 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BmbShoes
	"""
	waitHold
}
script 99 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	Key to garbage area
	"""
	waitHold
}
script 100 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	Transmtr
	"""
	waitHold
}
script 101 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	License1
	"""
	waitHold
}
script 102 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	License2
	"""
	waitHold
}
script 103 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	License3
	"""
	waitHold
}
script 104 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A KEY TO THE DOOR
	THAT LEADS TO
	TAMAKO'S MASTER.
	"""
	waitHold
}
script 105 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A WATER GUN FOR
	PUTTING OUT FIRES
	IN THE CYBERWORLD.
	"""
	waitHold
}
script 106 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A POWERFUL BUSTER
	THAT USES WATER
	TO EXTINGUISH FIRES.
	"""
	waitHold
}
script 107 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	Shovel
	"""
	waitHold
}
script 108 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A PROGRAM IN THE
	SHAPE OF A BOARD.
	USE UNKNOWN…
	"""
	waitHold
}
script 109 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A JET PROGRAM,
	FOR PROPULSION.
	"""
	keyWait
		any = false
	clearMsg
	"""
	IT ISN'T USEFUL
	BY ITSELF.
	"""
	waitHold
}
script 110 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A PROGRAM SHAPED
	LIKE WINGS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	IT ISN'T USEFUL
	BY ITSELF.
	"""
	waitHold
}
script 111 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY A
	"""
	waitHold
}
script 112 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY B
	"""
	waitHold
}
script 113 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY C
	"""
	waitHold
}
script 114 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY D
	"""
	waitHold
}
script 115 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY E
	"""
	waitHold
}
script 116 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KEY F
	"""
	waitHold
}
script 117 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	CopyKey
	"""
	waitHold
}
script 118 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	RecvrDrp
	"""
	waitHold
}
script 119 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	LionKey
	"""
	waitHold
}
script 120 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	CursDoll
	"""
	waitHold
}
script 121 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NebulaCd
	"""
	waitHold
}
script 122 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A KEY TO A
	COOKING DOJO ON
	THE NET.
	"""
	waitHold
}
script 123 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	INGREDIENTS FOR
	MAKING CURRY.
	"""
	waitHold
}
script 124 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	KindData
	"""
	waitHold
}
script 125 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TEXT WITH THE CODE
	FOR CONNECTING TO
	THE JOMONELEC HP.
	"""
	waitHold
}
script 128 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN WHITE
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 129 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN PINK
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 130 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN YELLOW
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 131 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN RED
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 132 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN BLUE
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 133 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YOU CAN SPIN GREEN
	NAVICUST PROGRAMS
	BY PRESSING [SwitchL]/[SwitchR].
	"""
	waitHold
}
script 144 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TEXT WITH THE CODE
	FOR CONNECTING TO
	MAYL'S HP.
	"""
	waitHold
}
script 145 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TEXT WITH THE CODE
	FOR CONNECTING TO
	DEX'S HP.
	"""
	waitHold
}
script 146 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TEXT WITH THE CODE
	FOR CONNECTING TO
	YAI'S HP.
	"""
	waitHold
}
script 147 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	HotelCde
	"""
	waitHold
}
script 148 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YumlandC
	"""
	waitHold
}
script 149 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	NetFricC
	"""
	waitHold
}
script 150 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	SharoCde
	"""
	waitHold
}
script 151 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	TEXT WITH THE CODE
	FOR CONNECTING TO
	THE CASTILLO HP.
	"""
	waitHold
}
script 152 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	SpaceCde
	"""
	waitHold
}
script 153 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	MAYL'S BANNER.
	"""
	waitHold
}
script 154 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	DEX'S BANNER.
	"""
	waitHold
}
script 155 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	YAI'S BANNER.
	"""
	waitHold
}
script 156 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BANNER FOR JOMON'S
	HP.
	"""
	waitHold
}
script 157 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BANNER FOR THE
	CASTILLO HP.
	"""
	waitHold
}
script 158 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BANNER FOR NETOPIA
	HOTEL HP.
	"""
	waitHold
}
script 159 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	BANNER FOR SHARO
	SPACECENTER HP.
	"""
	waitHold
}
script 160 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	HP MAX INCREASED
	+20
	"""
	waitHold
}
script 161 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	NAVICUST
	MEMORY MAP
	INCREASED
	"""
	waitHold
}
script 162 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	REGULAR SYSTEM
	MEMORY +1
	"""
	waitHold
}
script 163 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	REGULAR SYSTEM
	MEMORY +2
	"""
	waitHold
}
script 164 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	REGULAR SYSTEM
	MEMORY +3
	"""
	waitHold
}
script 165 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SUBCHIP CARRYING
	CAPACITY INCREASED
	"""
	waitHold
}
script 175 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	waitHold
}
script 176 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	50 HP RECOVERED
	"""
	waitHold
}
script 177 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MAX HP RECOVERED
	"""
	waitHold
}
script 178 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	NOW YOU WILL NOT
	ENCOUNTER ANY WEAK
	VIRUSES FOR A WHILE
	"""
	waitHold
}
script 179 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MYSTERY DATA TRAP
	DEACTIVATED
	"""
	waitHold
}
script 180 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	HIGHER CHANCE OF
	ENEMY AGAIN
	"""
	waitHold
}
script 181 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ANALYZING ENCRYPTED
	MYSTERY DATA…
	"""
	waitHold
}
script 192 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Net-
	Dealers in Town Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: Number of hotdogs
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: In Town Area 3,
	number of triangles
	pointing up or down
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of vending
	machines in ElecTown
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: Number of trees
	with visible trunks
	in ACDC Town
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: Number of house
	markers in ACDC Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: 15 + 2 + 3 - 14 =
	"""
	waitHold
}
script 193 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Jomons
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: How many streets
	radiate from the
	square in ACDC 2?
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: How many
	"
	"""
	printItem
		buffer = 0
		item = 3
	"""
	s" are
	there?
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of Navis
	in ElTwrComp right
	now
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: Number of ramps
	in Town Area 2
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: In Town Area 3,
	number of triangles
	pointing up or down
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: Number of stuffed
	bears in ACDC Town
	"""
	waitHold
}
script 194 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	1: Number of Mr.Progs
	in the LCDComp
	"""
	keyWait
		any = false
	clearMsg
	"""
	2: 15 + 2 + 3 - 14 =
	"""
	keyWait
		any = false
	clearMsg
	"""
	3: Number of hotdogs
	"""
	keyWait
		any = false
	clearMsg
	"""
	4: Number of Net-
	Dealers in Town Area
	"""
	keyWait
		any = false
	clearMsg
	"""
	5: How many streets
	radiate from the
	square in ACDC 2?
	"""
	keyWait
		any = false
	clearMsg
	"""
	6: Number of Navis
	in ElTwrComp right
	now
	"""
	keyWait
		any = false
	clearMsg
	"""
	7: Number of trees
	visible in ACDC Town
	"""
	waitHold
}
script 195 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A DARKCHIP…
	MUST NOT BE USED.
	"""
	waitHold
}
script 196 mmbn4-lc {
	positionText
		left = 54
		top = 108
		arrowDistance = 3
	textSpeed
		delay = 0
	positionArrow
		left = 222
		top = 141
	"""
	A PERSONAL TERMINAL.
	MEGAMAN IS INSTALLED
	ON THIS PET.
	"""
	waitHold
}
@archive 6E66B8
@size 48

script 0 mmbn4s {
	"NONE"
	end
}
script 1 mmbn4s {
	"SprArmr"
	end
}
script 2 mmbn4s {
	"Custom1"
	end
}
script 3 mmbn4s {
	"Custom2"
	end
}
script 4 mmbn4s {
	"MegFldr1"
	end
}
script 5 mmbn4s {
	"MegFldr2"
	end
}
script 6 mmbn4s {
	"GigFldr1"
	end
}
script 7 mmbn4s {
	"FstBarr"
	end
}
script 8 mmbn4s {
	"Shield"
	end
}
script 9 mmbn4s {
	"Reflect"
	end
}
script 10 mmbn4s {
	"AntiMagc"
	end
}
script 11 mmbn4s {
	"FlotShoe"
	end
}
script 12 mmbn4s {
	"AirShoes"
	end
}
script 13 mmbn4s {
	"UnderSht"
	end
}
script 14 mmbn4s {
	"SneakRun"
	end
}
script 15 mmbn4s {
	"OilBody"
	end
}
script 16 mmbn4s {
	"Fish"
	end
}
script 17 mmbn4s {
	"Battery"
	end
}
script 18 mmbn4s {
	"Jungle"
	end
}
script 19 mmbn4s {
	"Collect"
	end
}
script 20 mmbn4s {
	"Humor"
	end
}
script 21 mmbn4s {
	"BustPack"
	end
}
script 22 mmbn4s {
	"BodyPack"
	end
}
script 23 mmbn4s {
	"HubBatc"
	end
}
script 24 mmbn4s {
	"BugStop"
	end
}
script 25 mmbn4s {
	"SoulClen"
	end
}
script 26 mmbn4s {
	"Rush"
	end
}
script 27 mmbn4s {
	"Beat"
	end
}
script 28 mmbn4s {
	"Tango"
	end
}
script 29 mmbn4s {
	"HeatWepn"
	end
}
script 30 mmbn4s {
	"AquaWepn"
	end
}
script 31 mmbn4s {
	"ElecWepn"
	end
}
script 32 mmbn4s {
	"WoodWepn"
	end
}
script 33 mmbn4s {
	"Invisibl"
	end
}
script 34 mmbn4s {
	"Attack+1"
	end
}
script 35 mmbn4s {
	"Speed+1"
	end
}
script 36 mmbn4s {
	"Charge+1"
	end
}
script 37 mmbn4s {
	"AttckMAX"
	end
}
script 38 mmbn4s {
	"SpeedMAX"
	end
}
script 39 mmbn4s {
	"ChargMAX"
	end
}
script 40 mmbn4s {
	"WeapLV+1"
	end
}
script 41 mmbn4s {
	"HP+50"
	end
}
script 42 mmbn4s {
	"HP+100"
	end
}
script 43 mmbn4s {
	"HP+200"
	end
}
script 44 mmbn4s {
	"HP+300"
	end
}
script 45 mmbn4s {
	"HP+400"
	end
}
script 46 mmbn4s {
	"HP+500"
	end
}
script 47 mmbn4s {
	"  RUN!"
	end
}
@archive 6E6888
@size 48

script 0 mmbn4s {
	end
}
script 1 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Don't get
	pushed
	back!
	"""
	waitHold
	end
}
script 2 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can pick
	1 more
	chip!
	"""
	waitHold
	end
}
script 3 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can pick
	2 more
	chips!
	"""
	waitHold
	end
}
script 4 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	1 more
	MegaChip
	in folder!
	"""
	waitHold
	end
}
script 5 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	2 more
	MegaChips
	in folder!
	"""
	waitHold
	end
}
script 6 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	1 more
	GigaChip
	in folder!
	"""
	waitHold
	end
}
script 7 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Barrier
	activated
	at start
	"""
	waitHold
	end
}
script 8 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Zero dmg
	with
	[SwitchB]+[SwitchLeft]!
	"""
	waitHold
	end
}
script 9 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Return
	dmg with
	[SwitchB]+[SwitchLeft]!
	"""
	waitHold
	end
}
script 10 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	When hit,
	[SwitchB]+[SwitchLeft]
	hurls star
	"""
	waitHold
	end
}
script 11 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	No effect
	from panel
	type!
	"""
	waitHold
	end
}
script 12 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Walk even
	if no
	panels!
	"""
	waitHold
	end
}
script 13 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Keep 1HP
	even on
	fatal hit!
	"""
	waitHold
	end
}
script 14 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Weak ene-
	mies stop
	appearing!
	"""
	waitHold
	end
}
script 15 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Fire
	viruses!
	"""
	waitHold
	end
}
script 16 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Aqua
	viruses!
	"""
	waitHold
	end
}
script 17 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Elec
	viruses!
	"""
	waitHold
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attracts
	Wood
	viruses!
	"""
	waitHold
	end
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Find more
	chip data
	on enemies
	"""
	waitHold
	end
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Install
	and try
	[SwitchL]!
	"""
	waitHold
	end
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Atk/Spd
	/Charge
	+3 each!
	"""
	waitHold
	end
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Armr,Sht
	Flot,Air
	4-pack!
	"""
	waitHold
	end
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Maximizes
	your
	potential
	"""
	waitHold
	end
}
script 24 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Prevents
	bugs
	"""
	waitHold
	end
}
script 25 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cleanses
	evil
	thoughts
	"""
	waitHold
	end
}
script 26 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Tracks
	enemies
	"""
	waitHold
	end
}
script 27 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Snatches
	MegaChps
	"""
	waitHold
	end
}
script 28 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VS only!
	Heals
	low HP
	"""
	waitHold
	end
}
script 29 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	HeatWepn
	"""
	waitHold
	end
}
script 30 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	AquaWepn
	"""
	waitHold
	end
}
script 31 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ElecWepn
	"""
	waitHold
	end
}
script 32 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodWepn
	"""
	waitHold
	end
}
script 33 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Invisibl
	"""
	waitHold
	end
}
script 34 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	Attack+1!
	"""
	waitHold
	end
}
script 35 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	Speed+1!
	"""
	waitHold
	end
}
script 36 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	Charge+1!
	"""
	waitHold
	end
}
script 37 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	AttackMAX!
	"""
	waitHold
	end
}
script 38 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	Speed MAX!
	"""
	waitHold
	end
}
script 39 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaBstr
	ChargeMAX!
	"""
	waitHold
	end
}
script 40 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Weapon
	LV+1!
	"""
	waitHold
	end
}
script 41 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+50!
	"""
	waitHold
	end
}
script 42 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+100!
	"""
	waitHold
	end
}
script 43 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+200!
	"""
	waitHold
	end
}
script 44 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+300!
	"""
	waitHold
	end
}
script 45 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+400!
	"""
	waitHold
	end
}
script 46 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Max HP
	+500!
	"""
	waitHold
	end
}
script 47 mmbn4s {
	"""
	RUN?
	"""
	end
}
@archive 6E6F00
@size 244

script 0 mmbn4s {
	"*test msg*"
	end
}
script 1 mmbn4s {
	"___ACDC Town■"
	end
}
script 2 mmbn4s {
	"_Lan's House■"
	end
}
script 3 mmbn4s {
	"__Lan's Room■"
	end
}
script 4 mmbn4s {
	"_Mayl's Room■"
	end
}
script 5 mmbn4s {
	"__Dex's Room■"
	end
}
script 6 mmbn4s {
	"__Yai's Room■"
	end
}
script 7 mmbn4s {
	"____Higsby's■"
	end
}
script 10 mmbn4s {
	"___ElecTown1■"
	end
}
script 11 mmbn4s {
	"___ElecTown2■"
	end
}
script 12 mmbn4s {
	"______Square■"
	end
}
script 18 mmbn4s {
	"_____DenDome■"
	end
}
script 19 mmbn4s {
	"____DomeHall■"
	end
}
script 20 mmbn4s {
	"_DomeWaiting■"
	end
}
script 21 mmbn4s {
	"_____Stadium■"
	end
}
script 23 mmbn4s {
	end
}
script 24 mmbn4s {
	"____Entrance■"
	end
}
script 25 mmbn4s {
	"CenterSquare■"
	end
}
script 26 mmbn4s {
	"_WaitingRoom■"
	end
}
script 27 mmbn4s {
	"__SkyStadium■"
	end
}
script 28 mmbn4s {
	"__TaleSquare■"
	end
}
script 29 mmbn4s {
	"VampireManor■"
	end
}
script 36 mmbn4s {
	"_____Netopia■"
	end
}
script 37 mmbn4s {
	"ColosseumAve■"
	end
}
script 38 mmbn4s {
	"__Guest Room■"
	end
}
script 39 mmbn4s {
	"_ColosseumRm■"
	end
}
script 40 mmbn4s {
	"___Colosseum■"
	end
}
script 41 mmbn4s {
	"_____Yumland■"
	end
}
script 42 mmbn4s {
	"____YumRuins■"
	end
}
script 43 mmbn4s {
	"____NetFrica■"
	end
}
script 44 mmbn4s {
	"_______Sharo■"
	end
}
script 45 mmbn4s {
	"_SpaceCenter■"
	end
}
script 50 mmbn4s {
	"__ObservRoom■"
	end
}
script 51 mmbn4s {
	"________Roof■"
	end
}
script 52 mmbn4s {
	"________NAXA■"
	end
}
script 53 mmbn4s {
	"___NAXALobby■"
	end
}
script 55 mmbn4s {
	"__ElTwrComp1■"
	end
}
script 56 mmbn4s {
	"__ElTwrComp2■"
	end
}
script 58 mmbn4s {
	"ToyRoboComp1■"
	end
}
script 59 mmbn4s {
	"ToyRoboComp2■"
	end
}
script 60 mmbn4s {
	"ToyRoboComp3■"
	end
}
script 61 mmbn4s {
	"ToyRoboComp4■"
	end
}
script 65 mmbn4s {
	"AstroidComp1■"
	end
}
script 66 mmbn4s {
	"AstroidComp2■"
	end
}
script 67 mmbn4s {
	"AstroidComp3■"
	end
}
script 68 mmbn4s {
	"AstroidComp4■"
	end
}
script 69 mmbn4s {
	"_ControlArea■"
	end
}
script 75 mmbn4s {
	"____Lan's HP■"
	end
}
script 76 mmbn4s {
	"___Mayl's HP■"
	end
}
script 77 mmbn4s {
	"____Dex's HP■"
	end
}
script 78 mmbn4s {
	"____Yai's HP■"
	end
}
script 79 mmbn4s {
	"____Hotel HP■"
	end
}
script 80 mmbn4s {
	"_Castillo HP■"
	end
}
script 81 mmbn4s {
	"JomonElec HP■"
	end
}
script 82 mmbn4s {
	"_SpaceCtr HP■"
	end
}
script 83 mmbn4s {
	"____OvenComp■"
	end
}
script 84 mmbn4s {
	"__StereoComp■"
	end
}
script 85 mmbn4s {
	"__HotdogComp■"
	end
}
script 86 mmbn4s {
	"_DomeNBMComp■"
	end
}
script 87 mmbn4s {
	"CyberTopComp■"
	end
}
script 88 mmbn4s {
	"_____LCDComp■"
	end
}
script 89 mmbn4s {
	"_CastNBMComp■"
	end
}
script 90 mmbn4s {
	"__StatueComp■"
	end
}
script 91 mmbn4s {
	"__NupopoComp■"
	end
}
script 92 mmbn4s {
	"ComputerComp■"
	end
}
script 93 mmbn4s {
	"_____ToyComp■"
	end
}
script 94 mmbn4s {
	"_ColoNBMComp■"
	end
}
script 95 mmbn4s {
	"____LionComp■"
	end
}
script 96 mmbn4s {
	"DoghouseComp■"
	end
}
script 97 mmbn4s {
	"____GameComp■"
	end
}
script 98 mmbn4s {
	"_VendMchComp■"
	end
}
script 100 mmbn4s {
	"____CardComp■"
	end
}
script 101 mmbn4s {
	"___WaterComp■"
	end
}
script 102 mmbn4s {
	"__TicketComp■"
	end
}
script 103 mmbn4s {
	"___StandComp■"
	end
}
script 104 mmbn4s {
	"AntennaComp1■"
	end
}
script 105 mmbn4s {
	"AntennaComp2■"
	end
}
script 106 mmbn4s {
	"AntennaComp3■"
	end
}
script 107 mmbn4s {
	"AntennaComp4■"
	end
}
script 108 mmbn4s {
	"__BuddhaComp■"
	end
}
script 109 mmbn4s {
	"_GoddessComp■"
	end
}
script 110 mmbn4s {
	"____HeroComp■"
	end
}
script 111 mmbn4s {
	"____CookComp■"
	end
}
script 116 mmbn4s {
	"_WtrGodComp1■"
	end
}
script 117 mmbn4s {
	"_WtrGodComp2■"
	end
}
script 118 mmbn4s {
	"_WtrGodComp3■"
	end
}
script 119 mmbn4s {
	"_WtrGodComp4■"
	end
}
script 120 mmbn4s {
	"_WtrGodComp5■"
	end
}
script 121 mmbn4s {
	"_WtrGodComp6■"
	end
}
script 122 mmbn4s {
	"_WtrGodComp7■"
	end
}
script 123 mmbn4s {
	"_WtrGodComp8■"
	end
}
script 124 mmbn4s {
	"_WtrGodComp9■"
	end
}
script 125 mmbn4s {
	"WtrGodComp10■"
	end
}
script 126 mmbn4s {
	"WtrGodComp11■"
	end
}
script 127 mmbn4s {
	"WtrGodComp12■"
	end
}
script 128 mmbn4s {
	"WtrGodComp13■"
	end
}
script 129 mmbn4s {
	"WtrGodComp14■"
	end
}
script 130 mmbn4s {
	"WtrGodComp15■"
	end
}
script 131 mmbn4s {
	"WtrGodComp16■"
	end
}
script 132 mmbn4s {
	"__ACDC Area1■"
	end
}
script 133 mmbn4s {
	"__ACDC Area2■"
	end
}
script 134 mmbn4s {
	"__ACDC Area3■"
	end
}
script 137 mmbn4s {
	"__Town Area1■"
	end
}
script 138 mmbn4s {
	"__Town Area2■"
	end
}
script 139 mmbn4s {
	"__Town Area3■"
	end
}
script 140 mmbn4s {
	"__Town Area4■"
	end
}
script 142 mmbn4s {
	"__Park Area1■"
	end
}
script 143 mmbn4s {
	"__Park Area2■"
	end
}
script 144 mmbn4s {
	"__Park Area3■"
	end
}
script 147 mmbn4s {
	"Yumland Area■"
	end
}
script 148 mmbn4s {
	"Netopia Area■"
	end
}
script 149 mmbn4s {
	"NetFricaArea■"
	end
}
script 150 mmbn4s {
	"__Sharo Area■"
	end
}
script 152 mmbn4s {
	"___Undernet1■"
	end
}
script 153 mmbn4s {
	"___Undernet2■"
	end
}
script 154 mmbn4s {
	"___Undernet3■"
	end
}
script 155 mmbn4s {
	"___Undernet4■"
	end
}
script 156 mmbn4s {
	"___Undernet5■"
	end
}
script 157 mmbn4s {
	"___Undernet6■"
	end
}
script 158 mmbn4s {
	"_BlackEarth1■"
	end
}
script 159 mmbn4s {
	"_BlackEarth2■"
	end
}
script 240 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 4
		padZeros = false
		padLeft = true
	"/"
	printBuffer
		buffer = 1
		minLength = 4
		padZeros = false
		padLeft = true
	end
}
script 241 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"[z]"
	end
}
script 242 mmbn4s {
	" "
	printBuffer
		buffer = 0
		minLength = 4
		padZeros = false
		padLeft = true
	end
}
script 243 mmbn4-lc {
	"NAME "
	$F9 $00
	end
}
@archive 6E789C
@size 40

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	This is the
	NaviCust screen.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Right now,the NetNavi
	program "MegaMan.EXE"
	has been shut down…
	"""
	keyWait
		any = false
	clearMsg
	"""
	That is to say,
	he's sleeping.
	"""
	keyWait
		any = false
	clearMsg
	"""
	While he's shut down,
	you can put together
	a program here
	"""
	keyWait
		any = false
	clearMsg
	"""
	to customize and
	enhance MegaMan's
	abilities.
	"""
	keyWait
		any = false
	clearMsg
	flagSet
		flag = 38
	"""
	Customization is
	done by filling
	the Memory Map…
	"""
	waitFlag
		flag = 39
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Dad
	msgOpenQuick
	flagSet
		flag = 38
	"""
	…with programs
	such as these.
	"""
	waitFlag
		flag = 39
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Dad
	msgOpenQuick
	"""
	All right. Let's
	try installing
	the "UnderSht",
	"""
	keyWait
		any = false
	clearMsg
	"""
	which allows you to
	survive a lethal
	attack at 1HP!
	"""
	keyWait
		any = false
	clearMsg
	"""
	First select
	"UnderSht" from the
	list in the top-right,
	"""
	keyWait
		any = false
	clearMsg
	"""
	then place it on
	the Memory Map…
	"""
	keyWait
		any = false
	clearMsg
	"""
	But there is a rule
	you must follow!
	"""
	keyWait
		any = false
	clearMsg
	"""
	See the line in the
	middle of the
	Memory Map?
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	That's called the
	Command Line.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Programs must go
	on this line,or else
	they won't function.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Even just one square
	being on the line
	is enough!
	"""
	keyWait
		any = false
	clearMsg
	"""
	OK,let's install
	the "UnderSht"!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Oops! That's not
	"UnderSht"!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	There's no need to
	select that now.
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Oops!
	That isn't touching
	the Command Line!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Good. Next,let's
	install an "Attack+1."
	"""
	keyWait
		any = false
	clearMsg
	"""
	Select the program.
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Oops! That's not
	"Attack+1"!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	There's no need to
	select that now.
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	You can just leave
	that program where
	it is for now.
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Now for the second
	rule. Take a look at
	the "Attack+1."
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	See the square
	pattern on it?
	"""
	keyWait
		any = false
	clearMsg
	"""
	Programs like this are
	called "Plus Parts."
	"""
	keyWait
		any = false
	clearMsg
	"""
	You should never put
	Plus Parts on the
	Command Line.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Now then,let's install
	the "Attack+1."
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	The "Attack+1" is
	a Plus Part…
	"""
	keyWait
		any = false
	clearMsg
	"""
	So you mustn't put it
	on the Command Line.
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	"UnderSht" is
	already installed
	there!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Good. Let's finish
	by installing a
	"Speed+1."
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	There's no need to
	select that now.
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	You can just leave
	that program where
	it is for now.
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Now to tell you
	the third rule.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can't have
	two programs of the
	same color touching!
	"""
	keyWait
		any = false
	clearMsg
	"""
	For example,
	this "UnderSht"…
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 29 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	is the same color
	as the "Speed+1"
	you just selected.
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	end
}
script 30 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Be careful they
	don't touch each
	other.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Now,try placing it!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	The "Speed+1" is
	a Plus Part…
	"""
	keyWait
		any = false
	clearMsg
	"""
	So you mustn't put it
	on the Command Line.
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Another program is
	already installed
	there.
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Hey! Same-colored
	programs must not be
	next to each other!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Good. Now I'll talk
	about "RUN"!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The RUN command boots
	the NetNavi program
	MegaMan.EXE.
	"""
	keyWait
		any = false
	clearMsg
	"""
	When you press RUN,
	MegaMan will awaken
	"""
	keyWait
		any = false
	clearMsg
	"""
	with the effects of
	the programs you
	installed active.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Press RUN now,Lan.
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	You can just leave
	that program where
	it is for now.
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	RUN complete! Go ask
	MegaMan how he is.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I hope he's okay…
	MegaMan,how do you
	feel?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	…U-Uhhh…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Huh…?
	MegaMan?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	*yawn*… Morning,Lan!
	Seems it went well!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm feeling stronger
	already!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Whew! Don't scare me
	like that!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	Congratulations!
	If you acquire any
	new programs,
	"""
	keyWait
		any = false
	clearMsg
	"""
	just install them
	the same way!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	All right! I'm going
	to make MegaMan the
	strongest Navi ever!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	Now,Lan,be sure to
	follow the three
	rules I told you.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you don't program
	correctly,it can
	result in bugs!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Oh,one more thing.
	You can't just use
	any colors you like.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can only use
	4 different colors of
	program at a time.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you install 5 or
	more,MegaMan will be
	overloaded,
	"""
	keyWait
		any = false
	clearMsg
	"""
	resulting in a bug.
	The number of
	program colors
	"""
	keyWait
		any = false
	clearMsg
	"""
	currently installed
	is shown here for
	your reference.
	"""
	keyWait
		any = false
	clearMsg
	"""
	So long as it's
	inside the frame,
	you're OK.
	"""
	keyWait
		any = false
	flagSet
		flag = 38
	waitHold
}
script 38 mmbn4-lc {
	callDisableMugshotBrighten
	mugshotShow
		mugshot = Lan
	msgOpenQuick
	"""
	I got it.
	Thanks,Dad!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Dad
	"""
	This concludes my
	explanation of the
	NaviCustomizer.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Good luck,you two!
	"""
	keyWait
		any = false
	end
}
@archive 6E7F10
@size 160

script 0 mmbn4s {
	"""
	DrkLine *
	BugChain*
	Bass    X
	"""
	end
}
script 1 mmbn4s {
	"""
	DrkLine *
	BugChain*
	BassAnlyX
	"""
	end
}
script 2 mmbn4s {
	end
}
script 3 mmbn4s {
	end
}
script 4 mmbn4s {
	end
}
script 5 mmbn4s {
	"""
	HeatShotB
	HeatShotC
	HeatShotD
	"""
	end
}
script 6 mmbn4s {
	"""
	Heat-V C
	Heat-V D
	Heat-V E
	"""
	end
}
script 7 mmbn4s {
	"""
	HeatSideD
	HeatSideE
	HeatSideF
	"""
	end
}
script 8 mmbn4s {
	"""
	HeatShotD
	Heat-V  D
	HeatSideD
	"""
	end
}
script 9 mmbn4s {
	end
}
script 10 mmbn4s {
	"""
	Bubbler P
	Bubbler Q
	Bubbler R
	"""
	end
}
script 11 mmbn4s {
	"""
	Bub-V C
	Bub-V D
	Bub-V E
	"""
	end
}
script 12 mmbn4s {
	"""
	BublSideD
	BublSideE
	BublSideF
	"""
	end
}
script 13 mmbn4s {
	end
}
script 14 mmbn4s {
	end
}
script 15 mmbn4s {
	"""
	Cannon A
	Cannon B
	Cannon C
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	end
}
script 18 mmbn4s {
	end
}
script 19 mmbn4s {
	end
}
script 20 mmbn4s {
	"""
	HiCannonC
	HiCannonD
	HiCannonE
	"""
	end
}
script 21 mmbn4s {
	end
}
script 22 mmbn4s {
	end
}
script 23 mmbn4s {
	end
}
script 24 mmbn4s {
	end
}
script 25 mmbn4s {
	"""
	M-CannonE
	M-CannonF
	M-CannonG
	"""
	end
}
script 26 mmbn4s {
	end
}
script 27 mmbn4s {
	end
}
script 28 mmbn4s {
	end
}
script 29 mmbn4s {
	end
}
script 30 mmbn4s {
	"""
	WideSht1C
	WideSht1D
	WideSht1E
	"""
	end
}
script 31 mmbn4s {
	end
}
script 32 mmbn4s {
	end
}
script 33 mmbn4s {
	end
}
script 34 mmbn4s {
	end
}
script 35 mmbn4s {
	"""
	WideSht2L
	WideSht2M
	WideSht2N
	"""
	end
}
script 36 mmbn4s {
	end
}
script 37 mmbn4s {
	end
}
script 38 mmbn4s {
	end
}
script 39 mmbn4s {
	end
}
script 40 mmbn4s {
	"""
	WideSht3S
	WideSht3T
	WideSht3U
	"""
	end
}
script 41 mmbn4s {
	end
}
script 42 mmbn4s {
	end
}
script 43 mmbn4s {
	end
}
script 44 mmbn4s {
	end
}
script 45 mmbn4s {
	"""
	FlmLine1F
	FlmLine1G
	FlmLine1H
	"""
	end
}
script 46 mmbn4s {
	end
}
script 47 mmbn4s {
	end
}
script 48 mmbn4s {
	end
}
script 49 mmbn4s {
	end
}
script 50 mmbn4s {
	"""
	FlmLine2D
	FlmLine2E
	FlmLine2F
	"""
	end
}
script 51 mmbn4s {
	end
}
script 52 mmbn4s {
	end
}
script 53 mmbn4s {
	end
}
script 54 mmbn4s {
	end
}
script 55 mmbn4s {
	"""
	FlmLine3J
	FlmLine3K
	FlmLine3L
	"""
	end
}
script 56 mmbn4s {
	end
}
script 57 mmbn4s {
	end
}
script 58 mmbn4s {
	end
}
script 59 mmbn4s {
	end
}
script 60 mmbn4s {
	"""
	Boomer1 L
	Boomer1 M
	Boomer1 N
	"""
	end
}
script 61 mmbn4s {
	end
}
script 62 mmbn4s {
	end
}
script 63 mmbn4s {
	end
}
script 64 mmbn4s {
	end
}
script 65 mmbn4s {
	"""
	Boomer2 L
	Boomer2 M
	Boomer2 N
	"""
	end
}
script 66 mmbn4s {
	end
}
script 67 mmbn4s {
	end
}
script 68 mmbn4s {
	end
}
script 69 mmbn4s {
	end
}
script 70 mmbn4s {
	"""
	Boomer3 S
	Boomer3 T
	Boomer3 U
	"""
	end
}
script 71 mmbn4s {
	end
}
script 72 mmbn4s {
	end
}
script 73 mmbn4s {
	end
}
script 74 mmbn4s {
	end
}
script 75 mmbn4s {
	"""
	TwnFng1 A
	TwnFng1 B
	TwnFng1 C
	"""
	end
}
script 76 mmbn4s {
	end
}
script 77 mmbn4s {
	end
}
script 78 mmbn4s {
	end
}
script 79 mmbn4s {
	end
}
script 80 mmbn4s {
	"""
	TwnFng2 O
	TwnFng2 P
	TwnFng2 Q
	"""
	end
}
script 81 mmbn4s {
	end
}
script 82 mmbn4s {
	end
}
script 83 mmbn4s {
	end
}
script 84 mmbn4s {
	end
}
script 85 mmbn4s {
	"""
	TwnFng3 F
	TwnFng3 G
	TwnFng3 H
	"""
	end
}
script 86 mmbn4s {
	end
}
script 87 mmbn4s {
	end
}
script 88 mmbn4s {
	end
}
script 89 mmbn4s {
	end
}
script 90 mmbn4s {
	"""
	AirHoc1 D
	AirHoc1 E
	AirHoc1 F
	"""
	end
}
script 91 mmbn4s {
	end
}
script 92 mmbn4s {
	end
}
script 93 mmbn4s {
	end
}
script 94 mmbn4s {
	end
}
script 95 mmbn4s {
	"""
	AirHoc2 I
	AirHoc2 J
	AirHoc2 K
	"""
	end
}
script 96 mmbn4s {
	end
}
script 97 mmbn4s {
	end
}
script 98 mmbn4s {
	end
}
script 99 mmbn4s {
	end
}
script 100 mmbn4s {
	"""
	AirHoc3 U
	AirHoc3 V
	AirHoc3 W
	"""
	end
}
script 101 mmbn4s {
	end
}
script 102 mmbn4s {
	end
}
script 103 mmbn4s {
	end
}
script 104 mmbn4s {
	end
}
script 105 mmbn4s {
	"""
	MagBolt1B
	MagBolt1C
	MagBolt1D
	"""
	end
}
script 106 mmbn4s {
	end
}
script 107 mmbn4s {
	end
}
script 108 mmbn4s {
	end
}
script 109 mmbn4s {
	end
}
script 110 mmbn4s {
	"""
	MagBolt2E
	MagBolt2F
	MagBolt2G
	"""
	end
}
script 111 mmbn4s {
	end
}
script 112 mmbn4s {
	end
}
script 113 mmbn4s {
	end
}
script 114 mmbn4s {
	end
}
script 115 mmbn4s {
	"""
	MagBolt3A
	MagBolt3B
	MagBolt3C
	"""
	end
}
script 116 mmbn4s {
	end
}
script 117 mmbn4s {
	end
}
script 118 mmbn4s {
	end
}
script 119 mmbn4s {
	end
}
script 120 mmbn4s {
	"""
	Sword   E
	WideSwrdE
	LongSwrdE
	"""
	end
}
script 121 mmbn4s {
	"""
	Sword   L
	WideSwrdL
	LongSwrdL
	"""
	end
}
script 122 mmbn4s {
	"""
	Sword   S
	WideSwrdS
	LongSwrdS
	"""
	end
}
script 123 mmbn4s {
	"""
	Sword   S
	WideBldeS
	LongBldeS
	"""
	end
}
script 124 mmbn4s {
	end
}
script 125 mmbn4s {
	"""
	GunDelS1G
	GunDelS2G
	GunDelS3G
	"""
	end
}
script 126 mmbn4s {
	end
}
script 127 mmbn4s {
	end
}
script 128 mmbn4s {
	end
}
script 129 mmbn4s {
	end
}
script 130 mmbn4s {
	"""
	TimeBombJ
	TimeBombK
	TimeBombL
	"""
	end
}
script 131 mmbn4s {
	end
}
script 132 mmbn4s {
	end
}
script 133 mmbn4s {
	end
}
script 134 mmbn4s {
	end
}
script 135 mmbn4s {
	"""
	Hole    *
	DrkLine *
	Anubis  A
	"""
	end
}
script 136 mmbn4s {
	end
}
script 137 mmbn4s {
	end
}
script 138 mmbn4s {
	end
}
script 139 mmbn4s {
	end
}
script 140 mmbn4s {
	"""
	AntiDmg M
	AntiNaviM
	MuramasaM
	"""
	end
}
script 141 mmbn4s {
	end
}
script 142 mmbn4s {
	end
}
script 143 mmbn4s {
	end
}
script 144 mmbn4s {
	end
}
script 145 mmbn4s {
	"""
	SpreaderL
	SpreaderM
	SpreaderN
	"""
	end
}
script 146 mmbn4s {
	end
}
script 147 mmbn4s {
	end
}
script 148 mmbn4s {
	end
}
script 149 mmbn4s {
	end
}
script 150 mmbn4s {
	end
}
script 151 mmbn4s {
	end
}
script 152 mmbn4s {
	end
}
script 153 mmbn4s {
	end
}
script 154 mmbn4s {
	end
}
script 155 mmbn4s {
	end
}
script 156 mmbn4s {
	end
}
script 157 mmbn4s {
	end
}
script 158 mmbn4s {
	end
}
script 159 mmbn4s {
	end
}
@archive 6E82DC
@size 41

script 0 mmbn4s {
	"Mirror"
	end
}
script 1 mmbn4s {
	"Comb"
	end
}
script 2 mmbn4s {
	"BigTree"
	end
}
script 3 mmbn4s {
	"Statue"
	end
}
script 4 mmbn4s {
	"MghtyBlw"
	end
}
script 5 mmbn4s {
	"StrmKiss"
	end
}
script 6 mmbn4s {
	"Lecture"
	end
}
script 7 mmbn4s {
	"WizCat"
	end
}
script 8 mmbn4s {
	"WizRat"
	end
}
script 9 mmbn4s {
	"WzDragon"
	end
}
script 10 mmbn4s {
	"MagcSeal"
	end
}
script 11 mmbn4s {
	"WildDnce"
	end
}
script 12 mmbn4s {
	"BadJoke"
	end
}
script 13 mmbn4s {
	"GoodNose"
	end
}
script 14 mmbn4s {
	"Scratch"
	end
}
script 15 mmbn4s {
	"GoodEyes"
	end
}
script 16 mmbn4s {
	"Thrust"
	end
}
script 17 mmbn4s {
	"War"
	end
}
script 18 mmbn4s {
	"Emotion"
	end
}
script 19 mmbn4s {
	"Comedy"
	end
}
script 20 mmbn4s {
	"Pride"
	end
}
script 21 mmbn4s {
	"Bird"
	end
}
script 22 mmbn4s {
	"Dance"
	end
}
script 23 mmbn4s {
	"Lance"
	end
}
script 24 mmbn4s {
	"Zombie"
	end
}
script 25 mmbn4s {
	"ToyPart"
	end
}
script 26 mmbn4s {
	"Dancer"
	end
}
script 27 mmbn4s {
	"Politicn"
	end
}
script 28 mmbn4s {
	"FarmRobo"
	end
}
script 29 mmbn4s {
	"GunDlSol"
	end
}
script 30 mmbn4s {
	"CrmScarf"
	end
}
script 31 mmbn4s {
	"RdUndies"
	end
}
script 32 mmbn4s {
	"WalshP37"
	end
}
script 33 mmbn4s {
	"Otenko"
	end
}
script 34 mmbn4s {
	"Sunlight"
	end
}
script 35 mmbn4s {
	"Moonlght"
	end
}
script 36 mmbn4s {
	"MissSun"
	end
}
script 37 mmbn4s {
	"Skylight"
	end
}
script 38 mmbn4s {
	"Taiyohh!"
	end
}
script 39 mmbn4s {
	"Mo-o-m!"
	end
}
script 40 mmbn4s {
	"BaldHead"
	end
}
@archive 6E8448
@size 255

script 0 mmbn4-lc {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 10,
			ratio = 32
			jump = 20,
			ratio = 32
			jump = 30
		]
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 1,
			ratio = 32
			jump = 2,
			ratio = 32
			jump = 3
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hear Django once
	chased Dracky all
	the way to Sharo.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Oh yeah?
	What happened?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	He came back with
	frostbite!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's not funny…
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	OK,OK! Why couldn't
	Dracky's wife get to
	sleep?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I don't think I even
	want to know…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Because of his coffin!
	Nyuk! Nyuk! Nyuk!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Are you enjoying
	yourself,MegaMan?
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey Lan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Huh?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	What do you get when
	you cross TinMan with
	a pair of male deer?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Uh… I give up. What?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Tin Buck Two!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ouch!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey Lan,I brought a
	guest along today!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	A guest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'd like you to meet
	him. It'll only take
	a second…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Are you ready?
	Here he is!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Otenko
	"""
	"Taiyohhhhhhh!!"
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	No way! Master
	Otenko!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You had me going
	there for a minute!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oh no,m-my face…!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Aaaarrrrghhhhh!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 239
	"""
	KA-BOOOM!!
	"""
	keyWait
		any = false
	clearMsg
	soundEnableTextSFX
	mugshotShow
		mugshot = Lan
	"""
	MegaMan!
	What happened?!
	Are you OK?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	"""
	.
	"""
	wait
		frames = 30
	"""
	.
	"""
	wait
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Higsby
	"""
	Uh… u-uhh…
	I… I'm all right… huh!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Aaaahhh!!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 11,
			ratio = 32
			jump = 12,
			ratio = 32
			jump = 13
		]
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hey,MegaMan.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I hear Chaud picks
	his nose…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Really?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 156
	"""
	Briiiiing!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	soundEnableTextSFX
	"""
	Lan,phone call!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Hello?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Chaud
	"""
	Lan. Were you just
	talking about me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	N-No! Why would I be
	doing that?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Chaud
	"""
	Hmph…
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 209
	"""
	*click!*
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	soundEnableTextSFX
	"""
	…He's got big ears,
	too.
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	soundDisableTextSFX
	soundPlay
		track = 156
	"""
	Briiiiing!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Not again!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Two people from
	Sharo were sitting
	in a kayak.
	"""
	keyWait
		any = false
	clearMsg
	"""
	It was freezing out,
	but when they lit a
	fire in their craft,
	"""
	keyWait
		any = false
	clearMsg
	"""
	it sank!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's awful!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Well,it just goes to
	show…
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can't have your
	kayak and heat it
	too!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I walked right into
	that one,didn't I?
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey Lan,where do
	people in Sharo keep
	their money?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I don't know. Where?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	In snow banks!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I took a survey the
	other day at NAXA.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Oh yeah?
	What was it about?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I asked them what
	their favorite key
	on the keyboard was.
	"""
	keyWait
		any = false
	clearMsg
	"""
	And all the astronauts
	had the same answer!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Oh yeah? What was
	their favorite key?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	The space bar!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha ha ha!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 21,
			ratio = 32
			jump = 22,
			ratio = 32
			jump = 23
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan. There's something
	I've always wanted
	to say to you.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Oh yeah? What?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	All right,
	here goes
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	 A-HEM!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's go,Lan!
	Battle routine,
	"""
	waitSkip
		frames = 30
	"""
	set!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Execute!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hey! You expect me
	to fight?!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = BlueShirtBoy
	msgOpen
	"""
	Hey Lan!
	Do you have any
	good jokes?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Good jokes…?
	Um,I can't think of
	any right now…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Wait,who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = BlueShirtBoy
	"""
	Oops!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Sorry,I forgot to
	put on my helmet.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'm kidding!
	I'm kidding!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	All right,Lan.
	I've got one for you.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Fire away!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Three men walk into a
	hotel to rent a room.
	"""
	keyWait
		any = false
	clearMsg
	"""
	The clerk charges
	them 30 Zennys.
	They each pay 10z.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Later on,the clerk
	realizes he over-
	charged them,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and gives the bellboy
	5z to give back to
	the men.
	"""
	keyWait
		any = false
	clearMsg
	"""
	On his way there,the
	bellboy realizes he
	can't split it evenly,
	"""
	keyWait
		any = false
	clearMsg
	"""
	so he keeps 2z
	and gives them back
	1z each.
	"""
	keyWait
		any = false
	clearMsg
	"""
	So they end up
	having paid 9z each.
	"""
	keyWait
		any = false
	clearMsg
	"""
	3 times 9z is 27z,
	plus the 2z the
	bellboy kept is 29z.
	"""
	keyWait
		any = false
	clearMsg
	"""
	What happened to the
	other Zenny?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's weir…
	Wait! What's so
	funny about that?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	The look on your
	face! Hahahahaha!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Did you hear the one
	about Otenko?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	No. How's it go?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Forget it.
	It's over your head.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Huh?
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	jumpRandom
		unused = true
		untrap = false
		targets = [
			ratio = 32
			jump = continue,
			ratio = 32
			jump = 31,
			ratio = 32
			jump = 32,
			ratio = 32
			jump = 33
		]
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey Lan,I think I'm
	finally getting a hang
	of this Humor program.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Oh yeah? Give me
	your best shot!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Knock-knock.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who's there?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Jomon.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Jomon who?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Benjomon Frankl…
	"""
	wait
		frames = 90
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Stop! I'm not
	hearing this!!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You know… I'm getting
	kind of tired of
	my hair style.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I think it's time
	for a change…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What kind of hair
	do you want?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Actually,there is a
	style I'm kind of
	fond of…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's see
	"""
	mugshotAnimation
		animation = 1
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	mugshotAnimation
		animation = 2
	"""
	 Voila!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = BlackMan
	mugshotAnimation
		animation = 0
	wait
		frames = 60
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I don't want that!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'm just kidding!
	"""
	keyWait
		any = false
	clearMsg
	mugshotAnimation
		animation = 1
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	"""
	.
	"""
	waitSkip
		frames = 30
	mugshotAnimation
		animation = 2
	"""
	Hmph.
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	So the other day
	this lady says to me…
	"""
	keyWait
		any = false
	clearMsg
	"""
	"Didn't I see you in
	 that tournament on
	 TV?"
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah? What'd you
	tell her?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	The truth.
	I just said…
	"""
	keyWait
		any = false
	clearMsg
	"""
	"I don't know.
	 I can't see out the
	 other way!"
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,I just want to
	say… thanks for
	everything.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What's gotten into
	you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	I'm tired of
	fighting day in and
	day out…
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's over between us,
	Lan.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Wh-what?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Don't worry,I've
	arranged for another
	Navi to take my place.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Farewell,Lan…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Wait! MegaMaaaannn!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	"""
	There is nothing to
	worry about.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You will be fine in
	my hands.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Wh-who's there?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = ShadeMan
	"""
	Mwa-ha-ha-ha-ha-ha!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Aaaaaahhhhh!!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Did I scare you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Not funny,MegaMan.
	Definitely not funny.
	"""
	keyWait
		any = false
	end
}
@archive 6F9DF4
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hiya! It's your admin
	Dex here! Welcome
	to my HP!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I,the #1 NetBattler in
	ACDC Town,will answer
	your questions
	"""
	keyWait
		any = false
	clearMsg
	"""
	about NetBattling and
	virus busting alongside
	GutsMan! Ask away!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I expect to hear from
	you guys in Class 6-A,
	too!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	So,you really built
	your own HP and
	Battle BBS… Not bad!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Very well,I'll bite.
	Does anyone know how
	to beat that boomerang-
	"""
	keyWait
		any = false
	clearMsg
	"""
	wielding virus that
	looks like a clothespin?
	"""
	keyWait
		any = false
	clearMsg
	"""
	My Navi Glyde just
	can't dodge its attacks,
	and his just bounce off!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yeeee-haaaaaaawwww!
	Guts here!
	I'll help ya out!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You gotta stand your
	ground and face him
	like a man!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Just keep blasting him
	with the GutsBuster!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Oh,GutsMan! That's
	not how you do it!
	That virus is called
	"""
	keyWait
		any = false
	clearMsg
	"""
	"Boomer." It blocks
	attacks when it's
	holding its boomerang.
	"""
	keyWait
		any = false
	clearMsg
	"""
	So at first,you should
	actually stand in the
	center row where
	"""
	keyWait
		any = false
	clearMsg
	"""
	its boomerang can't
	hit you. When it
	throws the boomerang,
	"""
	keyWait
		any = false
	clearMsg
	"""
	move into Boomer's row
	and make your attack!
	Isn't that right,Dex?
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Uh… y-yeah! That's
	what I was gonna say…
	more or less!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hey,I didn't know you
	were so good at virus
	busting,Mayl!
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Tee hee! Well,Lan's
	always coming to my
	rescue,so I figured
	"""
	keyWait
		any = false
	clearMsg
	"""
	the least I could do
	is learn how to fight
	viruses myself.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'd like to try Net-
	Battling sometime,too!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I'm having trouble with
	that stingray virus
	with the glasses.
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yo! Koetsu in da house!
	I'll answer,Masabumi!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You must be talking
	about the Lark.
	Wide attacks,high HP…
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's a tricky one,
	but not to worry!
	Know about Elements?
	"""
	keyWait
		any = false
	clearMsg
	"""
	\[Fire\] beats \[Wood\],
	\[Wood\] beats \[Elec\],
	"""
	keyWait
		any = false
	clearMsg
	"""
	\[Elec\] beats \[Aqua\],
	\[Aqua\] beats \[Fire\]!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You'll double your
	attack if you use the
	right Element!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Since Larks are \[Aqua\],
	use an \[Elec\] chip,
	like Thunder1!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Good luck!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Wow,are you really
	THE Cyber Sage Koetsu?
	Can I ask a question?
	"""
	keyWait
		any = false
	clearMsg
	"""
	The other day,
	I saw something
	pretty unusual…
	"""
	keyWait
		any = false
	clearMsg
	"""
	There was Mystery Data
	in the middle of a
	virus battle!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thing is,the viruses
	destroyed it… Still!
	What was inside it?!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yo! Koetsu here!
	My friend Goh,you
	witnessed a rarity!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Yes,there's a small
	chance Mystery Data
	can appear in battle.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you can win the
	battle without you or
	a virus destroying it,
	"""
	keyWait
		any = false
	clearMsg
	"""
	it's yours! Who knows
	what'll be inside,but
	it's sure to be rare!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hey,check this out!
	In a battle the other
	day,my chips fused!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I think it was three
	Cannons that combined
	into a GigaCan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I just can't seem to
	do it again,though…
	What was that about?!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hey! Dex here! I can
	answer this one!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Some chips have Chip
	Codes in sequential
	order,like A-B-C!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you pick 'em in
	order to send to your
	Navi… well,just see!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Oh yeah,and it's OK
	to use one *-code chip
	for the sequence.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hah! How's that for
	administrating?
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hi there! I'm working
	part-time at Castillo.
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's fun,and I get to
	wear a Navi costume,
	but the thing is…
	"""
	keyWait
		any = false
	clearMsg
	"""
	I also have to
	perform maintenance
	work on the costume,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and I often run into
	this really strong
	virus called Moloko.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Can anyone tell me
	how to beat it?
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Molokos are cute but
	tough little buggers.
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can attack them
	with a sword after
	knocking off their wool,
	"""
	keyWait
		any = false
	clearMsg
	"""
	or stand back and use
	a rapid-fire chip
	like Vulcan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Both ways will
	take some courage,
	but keep trying!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I finally got a Navi
	Customizer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I always thought
	programming would be
	hard and never tried,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but it's actually kind
	of fun - like solving
	a puzzle!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm going to install
	lots of programs and
	boost up my Navi!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Say,does anyone know
	of a good program
	store?
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	If you're looking for
	programs,I know an
	awesome obscure shop!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's at the Castillo
	home page! They have
	lots of great stuff!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The other day,
	I bought Shield and
	FstBarr programs!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I was having trouble
	dodging VolGear's
	flames and stuff,see.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Cover weaknesses or
	enhance strengths -
	it's your choice!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Earlier I saw a Navi
	on the Net,Glyde,
	who kept turning left.
	"""
	keyWait
		any = false
	clearMsg
	"""
	He said his body
	was involuntarily
	moving to the left…
	"""
	keyWait
		any = false
	clearMsg
	"""
	I wonder if he has
	a programming error
	in his NaviCust?
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Wh-what in the world?!
	How could I,genius
	programmer Yai,
	"""
	keyWait
		any = false
	clearMsg
	"""
	neglect to place the
	UnderSht on the
	Command Line?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Well,nobody's perfect,
	I suppose…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Perhaps I'll buy a
	BugStop so this won't
	ever happen again.
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	My friend's Navi's
	been looking a little…
	blackish lately.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Maybe he got a tan?
	No… It doesn't look
	healthy.
	"""
	keyWait
		any = false
	clearMsg
	"""
	He's got this kind of
	foreboding look to him…
	"""
	keyWait
		any = false
	clearMsg
	"""
	And his max HP's
	dropped to a weirdly
	uneven number,98…
	"""
	keyWait
		any = false
	clearMsg
	"""
	What could be wrong
	with him?
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Goh… That sounds
	an awful lot like
	the effects from
	"""
	keyWait
		any = false
	clearMsg
	"""
	those DarkChips
	everyone's talking
	about lately.
	"""
	keyWait
		any = false
	clearMsg
	"""
	They're incredibly
	powerful chips going
	around the Undernet…
	"""
	keyWait
		any = false
	clearMsg
	"""
	But I hear using them
	can cause bugs,and
	reduce max HP by 1!
	"""
	keyWait
		any = false
	clearMsg
	"""
	They even seem to
	have a corrupting
	influence on Navis…
	"""
	keyWait
		any = false
	clearMsg
	"""
	And once you use one,
	you can't stop.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Apparently there's
	been reports of
	withdrawal symptoms.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Like discarded Dark-
	Chips showing back up
	on the Custom Screen…
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Are you for real,
	Zono?! DarkChips?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	To think you'd lose
	your maximum HP
	when you use them…
	"""
	keyWait
		any = false
	clearMsg
	"""
	After a while,
	you wouldn't be able
	to fight at all!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Sounds like…
	once you use one,
	it's all downhill…
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	The Eagle and Hawk
	Tournaments are
	finally over.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I heard a grade
	school student won
	one of them!
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hey Saki! That grade
	school student just
	happens to be Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	He's the best
	in ACDC Town… no,
	the best in Electopia!
	"""
	keyWait
		any = false
	clearMsg
	"""
	And guess who's his
	arch-rival? Me! Dex!
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Tee hee! Oh,the Dex
	who lost in the Den
	Battle Tournament?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I shouldn't talk,
	though. I lost in the
	Eagle Tournament!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Everyone was just
	too tough! And yet…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Lan went ahead
	and won anyway!
	He's truly amazing!
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Heh heh heh! I found
	the commands for the
	legendary VarSwrd!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Don't go telling
	anyone,and don't
	repost it elsewhere!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,here it is.
	While holding [SwitchA]:
	"""
	keyWait
		any = false
	clearMsg
	"""
	[SwitchDown]/[SwitchDownRight]/[SwitchRight] for LongSwrd.
	[SwitchUp]/[SwitchRight]/[SwitchDown] for WideSwrd.
	[SwitchLeft]/[SwitchDown]/[SwitchRight] for FtrSword.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll let you find the
	last one by yourselves!
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	These spider-like
	viruses trashed me…
	How do I beat 'em?!
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	You must mean Spidy.
	That's a tough one!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But they'll be no
	problem if you have
	the Slasher chip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You can buy it in
	Netopia Area!
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	The other day I did
	a Network Duel -
	for keeps,of course!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But in the Results,
	I got a chip my
	opponent didn't have…
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was that about?
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yo! Koetsu in da house!
	That's a Bonus Chip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bonus Chips are
	sometimes awarded
	in Network Duels.
	"""
	keyWait
		any = false
	clearMsg
	"""
	So by fighting duels,
	you'll naturally fill
	your Data Library!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Only Standard chips,
	though. Find Mega and
	GigaChips yourself!
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS00 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FACF0
@size 48

script 0 mmbn4s {
	" AdminDex Welcome!     "
	end
}
script 1 mmbn4s {
	" Yai      Impressive!  "
	end
}
script 2 mmbn4s {
	" GutsMan  I got it!    "
	end
}
script 3 mmbn4s {
	" Mayl     Boomer       "
	end
}
script 4 mmbn4s {
	" AdminDex RE:Boomer    "
	end
}
script 5 mmbn4s {
	" Mayl     Well…        "
	end
}
script 6 mmbn4s {
	" Masabumi Specs Virus "
	end
}
script 7 mmbn4s {
	" Koetsu   RE:Specs Vir…"
	end
}
script 8 mmbn4s {
	" Goh      Mystery Data?"
	end
}
script 9 mmbn4s {
	" Koetsu   RE:MysteryDat"
	end
}
script 10 mmbn4s {
	" Rutha    Chip Merge?  "
	end
}
script 11 mmbn4s {
	" AdminDex RE:Chip Merge"
	end
}
script 12 mmbn4s {
	" Hinata   Sheep!       "
	end
}
script 13 mmbn4s {
	" Kawachi  RE:Sheep!    "
	end
}
script 14 mmbn4s {
	" Nonchan  NaviCust!    "
	end
}
script 15 mmbn4s {
	" Mabo     RE:NaviCust! "
	end
}
script 16 mmbn4s {
	" Bork     Bug?         "
	end
}
script 17 mmbn4s {
	" Yai      RE:Bug?      "
	end
}
script 18 mmbn4s {
	" Goh      Black Navi   "
	end
}
script 19 mmbn4s {
	" Zono     RE:Black Navi"
	end
}
script 20 mmbn4s {
	" Goh      Uh oh…       "
	end
}
script 21 mmbn4s {
	" Saki     Tournaments! "
	end
}
script 22 mmbn4s {
	" AdminDex RE:Tournments"
	end
}
script 23 mmbn4s {
	" Mayl     RE:Tournments"
	end
}
script 24 mmbn4s {
	" Beltz    VarSwrd      "
	end
}
script 25 mmbn4s {
	" Niko     Spider Virus "
	end
}
script 26 mmbn4s {
	" Ryuge    RE:Spider V… "
	end
}
script 27 mmbn4s {
	" Wolf     Network Duels"
	end
}
script 28 mmbn4s {
	" Koetsu   RE:NetworkDu…"
	end
}
script 29 mmbn4s {
	" BBS0  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS0  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS0  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS0  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS0  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS0  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS0  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS0  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS0  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS0  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS0  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS0  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS0  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS0  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS0  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS0  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS0  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS0  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FAF30
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Welcome to Yai's HP.
	This is the Chat BBS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	While the Ayanokojis
	are a venerable and
	influential family,
	"""
	keyWait
		any = false
	clearMsg
	"""
	this BBS is open to
	the general public at
	Miss Yai's bequest.
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yai! Congrats on
	revamping your HP!
	(First post,heehee!)
	"""
	keyWait
		any = false
	clearMsg
	"""
	Say,how's that
	Tornado Dryer you
	bought in ElecTown?
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's go shopping
	again sometime!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yo,Yai! I see you
	put up your own BBS.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Matter of fact,I made
	a BBS on my own HP
	for Battle info!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Come on over and I'll
	initiate you into the
	art of virus busting!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Thank you for coming,
	everyone!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I trust you all like
	my stylish design?
	It wasn't easy to make.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thanks for your post,
	Mayl! The dryer works
	like a charm!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thanks for your post
	too,Dex! I dropped by
	your home page.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But that wallpaper
	simply has to go!
	It's so old-hat!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Yeeee-haaaaaaawwww!
	Dex's wallpaper may
	be old-fashioned,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but it's better than
	that rice ball design
	he had up before!
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	GutsMan,not you too!
	What're you guys
	blabbering about?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	My wallpaper expresses
	the spirit of manliness!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hello,Miss Yai!
	It was lovely seeing
	you at the ball.
	"""
	keyWait
		any = false
	clearMsg
	"""
	How is Glyde?
	Was he hurt in those
	Navi attacks?
	"""
	keyWait
		any = false
	clearMsg
	"""
	Crime seems rampant
	on the Net of late.
	Please,do be careful.
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hi Yai! Those Navi
	attacks were scary!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Speaking of scary…
	Heard the rumors
	about ghost Navis?
	"""
	keyWait
		any = false
	clearMsg
	"""
	Apparently ghosts of
	deleted Navis attack
	others on the Net,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and even CyberSutras
	can't put them to rest!
	Creepy,huh?
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hi Nikaido!
	Yai's friend Dex here!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Are those ghost stories
	true?! Sounds kind of
	exciting!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I think I'll prowl
	the Net and see if
	I can't find any!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Haaaww?! I-I don't
	like g-ghosts…
	"""
	keyWait
		any = false
	clearMsg
	"""
	But if Dex orders me
	to search the Net,
	I won't back down!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I just hope my GutPunch
	works on 'em…
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hi Dex! Nikaido here!
	There's a theory that
	the ghost Navis are
	"""
	keyWait
		any = false
	clearMsg
	"""
	actually a sort of
	illusion created by
	your own mind,
	"""
	keyWait
		any = false
	clearMsg
	"""
	so you have to
	overcome your own
	fears to beat them.
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Well,Nikaido! Seems
	like you and Dex are
	two of a kind!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Yes,I've heard about
	those ghosts myself.
	"""
	keyWait
		any = false
	clearMsg
	"""
	It seems they often
	appear in corners and
	at the end of paths.
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Howdy! It looks like
	a world NetBattle
	championship is
	"""
	keyWait
		any = false
	clearMsg
	"""
	going to take place
	in my country,Netopia!
	Woo-hoo!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hee hee! My family's
	sponsoring that
	tournament,actually.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Be sure to watch it,
	everyone,and get
	those ratings up!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	That's the one Lan
	is participating in,
	right? Cheer him on!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The contestants are
	staying in a hotel
	in Netopia,
	"""
	keyWait
		any = false
	clearMsg
	"""
	so I wonder if Lan
	might feel lonely…
	Good luck,Lan!
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Lan is the bomb! He's
	the only guy GutsMan
	and I can't beat!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Don't you dare lose
	to anyone but us,Lan!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID10
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID11
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID12
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID13
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID14
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID15
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID16
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID17
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID18
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID19
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1A
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1B
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1C
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS01 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FB658
@size 48

script 0 mmbn4s {
	" Glyde    Welcome,all! "
	end
}
script 1 mmbn4s {
	" Mayl     Good for you!"
	end
}
script 2 mmbn4s {
	" Dex      Congrats!!   "
	end
}
script 3 mmbn4s {
	" Yai      Thanks!      "
	end
}
script 4 mmbn4s {
	" GutsMan  RE:Thanks!   "
	end
}
script 5 mmbn4s {
	" Dex      RE:Thanks!   "
	end
}
script 6 mmbn4s {
	" Hans     Bonjour!     "
	end
}
script 7 mmbn4s {
	" Nikaido  Hi Yai!      "
	end
}
script 8 mmbn4s {
	" Dex      Ghosts?!     "
	end
}
script 9 mmbn4s {
	" GutsMan  RE:Ghosts?!  "
	end
}
script 10 mmbn4s {
	" Nikaido  RE:Ghosts?!  "
	end
}
script 11 mmbn4s {
	" Yai      Oh,my!       "
	end
}
script 12 mmbn4s {
	" Matsu    Tournament?  "
	end
}
script 13 mmbn4s {
	" Yai      Sponsor      "
	end
}
script 14 mmbn4s {
	" Mayl     Lan too!     "
	end
}
script 15 mmbn4s {
	" Dex      Lan rules!   "
	end
}
script 16 mmbn4s {
	" BBS1  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS1  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS1  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS1  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS1  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS1  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS1  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS1  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS1  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS1  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS1  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS1  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS1  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS1  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS1  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS1  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS1  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS1  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS1  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS1  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS1  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS1  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS1  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS1  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS1  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS1  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS1  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS1  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS1  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS1  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS1  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FB830
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Welcome to Hotel
	Netopia! I am Anna,
	the manager.
	"""
	keyWait
		any = false
	clearMsg
	"""
	This BBS is meant
	as a place for
	informative posts,
	"""
	keyWait
		any = false
	clearMsg
	"""
	such that guests
	can fight off viruses
	in an unfamiliar Net.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Whatever country
	you hail from,you're
	welcome to post here!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hoh hoh! Travelin'
	the Nets of the world
	is mah hobby!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So I'll learn ya all
	about each country's
	Net!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Ah'll start a Guide
	to the Global Net
	with mah next post!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Traveling in
	Yumland Area!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Battles in Yumland
	Area often take
	place on fields with
	"""
	keyWait
		any = false
	clearMsg
	"""
	grass and cracks.
	As for viruses to
	watch out for? Kilby!
	"""
	keyWait
		any = false
	clearMsg
	"""
	They teleport into
	yer area and attack
	with spears.
	"""
	keyWait
		any = false
	clearMsg
	"""
	If ya stand in
	the top row,though,
	they won't warp to ya.
	"""
	keyWait
		any = false
	clearMsg
	"""
	They're Wood-based,
	so calmly take 'em
	out with Fire chips!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Traveling in
	Sharo Area!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Sharo's a frozen
	wasteland,so its Net
	has icy panels too!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Ya might wanna set a
	PnlRetrn chip as yer
	Regular to handle it.
	"""
	keyWait
		any = false
	clearMsg
	"""
	As for viruses,
	watch out for Wallas!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Their tusk attacks
	might seem scary
	at first blush,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but stay off the row
	they're on and they
	won't charge!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The smart move's
	ta use chips that
	attack other rows!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Traveling in
	NetFrica Area!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The vast land of
	NetFrica contains
	jungles and deserts!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So in battle,beware of
	pitfalls amid grass!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Ya can always set
	a Repair chip to
	be yer Regular,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but ya might wanna
	try ta sucker viruses
	into the pitfalls!
	"""
	keyWait
		any = false
	clearMsg
	"""
	They won't affect
	viruses that fly,
	though…
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Lastly… Traveling in
	Netopia Area!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Netopia Area lies
	through this hotel's HP,
	so pay attention!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Netopia's Net is well-
	maintained,so panels
	in battle're clean.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Ya might happen upon
	some Walla from
	Sharo Area,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but even more dangerous
	are the MolokoEXs!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Their thick wool just
	won't come off! Oooh,
	they drive me crazy!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Ya have ta follow a
	charge attack right up
	with a chip attack!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Well,that concludes
	mah lessons.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Traveling can be
	real fun,but only if
	yer prepared!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I wish y'all pleasant
	travels,without delays
	or deletions!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hey all! I've opened
	up a chip shop in
	South Netopia!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm staying here
	'cause I'm on a trip
	to find rare chips!
	"""
	keyWait
		any = false
	clearMsg
	"""
	In the backstreets
	earlier,I was hustled
	into buying this chip…
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's called "Hole"!
	Is this a DarkChip…?
	I need the deets!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Whazzup! Globe-trotter
	Koetsu in da house!
	"""
	keyWait
		any = false
	clearMsg
	"""
	"Hole",you say?
	It might look shady,
	but it's no DarkChip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It creates a kind of
	panel called a
	DarkHole.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I've heard some chips
	grow stronger the
	more Holes there are.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I don't know which
	chips those are,though…
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Chips that grow in
	power the more Holes
	you have…?
	"""
	keyWait
		any = false
	clearMsg
	"""
	That would be those
	which draw out the
	DarkSoul in Navis…
	"""
	keyWait
		any = false
	clearMsg
	"""
	These seem to be
	Navi chips ending with
	the letters "DS."
	"""
	keyWait
		any = false
	clearMsg
	"""
	And I hear they
	can only be used by
	evil Navis…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I'm staying here on
	my quest for a chip…
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's called "BlkBomb."
	Anyone have any info?
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	This is Anna,
	the hotel manager.
	"""
	keyWait
		any = false
	clearMsg
	"""
	As it happens,another
	guest was looking for
	that same chip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I saw him access the
	Sharo Area. I hope
	this aids your search!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID0B
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID0C
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID0D
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID0E
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID0F
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID10
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID11
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID12
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID13
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID14
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID15
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID16
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID17
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID18
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID19
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1A
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1B
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1C
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS02 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FC02C
@size 48

script 0 mmbn4s {
	" Anna     Welcome!     "
	end
}
script 1 mmbn4s {
	" Mustash  Travel Tips  "
	end
}
script 2 mmbn4s {
	" Mustash  Yumland      "
	end
}
script 3 mmbn4s {
	" Mustash  Sharo        "
	end
}
script 4 mmbn4s {
	" Mustash  NetFrica     "
	end
}
script 5 mmbn4s {
	" Mustash  Netopia      "
	end
}
script 6 mmbn4s {
	" Chama    Hole         "
	end
}
script 7 mmbn4s {
	" Koetsu   RE:Hole      "
	end
}
script 8 mmbn4s {
	" Robin    RE:Hole      "
	end
}
script 9 mmbn4s {
	" Goemon   BlkBomb      "
	end
}
script 10 mmbn4s {
	" Anna     RE:BlkBomb   "
	end
}
script 11 mmbn4s {
	" BBS2  0B XXXXXXXXXXXXX"
	end
}
script 12 mmbn4s {
	" BBS2  0C XXXXXXXXXXXXX"
	end
}
script 13 mmbn4s {
	" BBS2  0D XXXXXXXXXXXXX"
	end
}
script 14 mmbn4s {
	" BBS2  0E XXXXXXXXXXXXX"
	end
}
script 15 mmbn4s {
	" BBS2  0F XXXXXXXXXXXXX"
	end
}
script 16 mmbn4s {
	" BBS2  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS2  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS2  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS2  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS2  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS2  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS2  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS2  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS2  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS2  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS2  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS2  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS2  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS2  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS2  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS2  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS2  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS2  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS2  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS2  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS2  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS2  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS2  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS2  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS2  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS2  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS2  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS2  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS2  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS2  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS2  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FC1E8
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Castillo,DenCity's
	premiere theme park,
	is officially open!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Welcome to the world
	of fantasy and fairy
	tales!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This BBS is dedicated
	to chatting and
	guest requests.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Anyone and everyone
	is welcome to post!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hiya! I'm writing
	from inside Castillo!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This place is amazing!
	I've met some of my
	favorite characters!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm gonna go try
	some of the rides.
	See ya!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Cool! I wanna go too!
	I wanna be bitten
	by WizDog,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and visit the gift shop
	for Halberd Princess's
	broad-axe!
	"""
	keyWait
		any = false
	clearMsg
	"""
	My favorite is Dracky,
	though.
	"""
	keyWait
		any = false
	clearMsg
	"""
	He always loses to
	Django,yet never
	gives up! Admirable!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who does everyone
	else like?
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I like TinMan!
	I cried when I saw
	the animated movie!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If he was never given
	emotion,he wouldn't
	have had to suffer…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Still,it's thanks to
	emotion people are
	gentle and kind.
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	My fave's the
	Halberd Princess!
	She's amazing!
	"""
	keyWait
		any = false
	clearMsg
	"""
	My favorite scene is
	when she runs through
	the Bewitched Forest
	"""
	keyWait
		any = false
	clearMsg
	"""
	to save Prince
	Tomahawk!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Nowadays,women don't
	have to just be the
	ones getting rescued!
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I like WizDog,huh!
	"""
	keyWait
		any = false
	clearMsg
	"""
	My favorite scene is
	when he teams up
	with his enemy,
	"""
	keyWait
		any = false
	clearMsg
	"""
	WizCat,and fights
	the evil wizard to
	save the town!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It just gets me
	every time,huh!
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I like Dracky,'cause
	my favorite story's
	Django,the Solar Boy!
	"""
	keyWait
		any = false
	clearMsg
	"""
	My parents are gonna
	take me to Castillo
	once we get time off!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can't wait to shoot
	at Dracky with my
	GunDelSol…!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	You like Django,
	Takumi? You should
	go to VampireManor!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's filled with life-
	like scenes of Django
	fighting vampires!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Kids seem to love
	Django,the Solar Boy.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Django's weapon,
	GunDelSol,is even
	sold as a BattleChip.
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I hear the GunDelSol
	BattleChip is able
	to absorb sunlight!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If the operator is in
	a place with sunlight,
	such as outdoors,
	"""
	keyWait
		any = false
	clearMsg
	"""
	the power of GunDelSol
	increases too!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	To all visitors:
	We at Castillo offer
	our sincerest apologies
	"""
	keyWait
		any = false
	clearMsg
	"""
	for the attraction
	breakdown and ToyRobo
	malfunctions recently.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We will perform daily
	security checks to
	avoid future issues.
	"""
	keyWait
		any = false
	clearMsg
	"""
	We hope for your
	continued support of
	Castillo!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I was at the park
	when the ToyRobos
	went berserk.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Dracky was the
	scariest! It was
	almost as if he was
	"""
	keyWait
		any = false
	clearMsg
	"""
	possessed by a real
	vampire!
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I was at the park too!
	It was frightening…
	yet thrilling!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Still,it scares me
	to think what might
	have happened,
	"""
	keyWait
		any = false
	clearMsg
	"""
	if not for that
	bandana kid…
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Is there some kind
	of event going on?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I saw someone
	hiding things all
	over the park.
	"""
	keyWait
		any = false
	clearMsg
	"""
	He was by the front
	fountain,the iron door,
	and even Dracky!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	They held a NetBattle
	tournament at the
	castle in Castillo!
	"""
	keyWait
		any = false
	clearMsg
	"""
	How wild is that?
	A tournament using a
	theme park as a venue…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Must be one of those
	joint-sponsor deals
	that're all the rage.
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I hear that was a
	national competition,
	and the winner was
	"""
	keyWait
		any = false
	clearMsg
	"""
	none other than that
	kid who stopped the
	berserk ToyRobos!
	"""
	keyWait
		any = false
	clearMsg
	"""
	What an impressive
	feat!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	There was some kind
	of trouble at the
	awards ceremony.
	"""
	keyWait
		any = false
	clearMsg
	"""
	It was so crowded,
	though,I couldn't see…
	"""
	keyWait
		any = false
	clearMsg
	"""
	What exactly happened?
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I was in the front,
	so I saw everything!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The kid who won
	was jacked into the
	NetBattle machine,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and seemed to be
	battling someone…
	It sure felt intense!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I have to wonder
	what was going down…
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID12
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID13
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID14
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID15
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID16
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID17
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID18
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID19
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1A
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1B
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1C
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS03 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FCA90
@size 48

script 0 mmbn4s {
	" Admin    Welcome!     "
	end
}
script 1 mmbn4s {
	" Akane    What a blast!"
	end
}
script 2 mmbn4s {
	" Yumechan Jealous!     "
	end
}
script 3 mmbn4s {
	" Sujiko   TinMan       "
	end
}
script 4 mmbn4s {
	" Shinya   HlbrdPrincess"
	end
}
script 5 mmbn4s {
	" Higsby   WizDog       "
	end
}
script 6 mmbn4s {
	" Takumi   Dracky!      "
	end
}
script 7 mmbn4s {
	" Kappepo  RE:Dracky!   "
	end
}
script 8 mmbn4s {
	" Suzy     Django       "
	end
}
script 9 mmbn4s {
	" Chikachi GunDelSol    "
	end
}
script 10 mmbn4s {
	" Admin    Apology      "
	end
}
script 11 mmbn4s {
	" Tomo     Scary!       "
	end
}
script 12 mmbn4s {
	" Mayumin  RE:Scary!    "
	end
}
script 13 mmbn4s {
	" Vortex   Event?       "
	end
}
script 14 mmbn4s {
	" Kanideka Tournament   "
	end
}
script 15 mmbn4s {
	" Fujirin  RE:Tournament"
	end
}
script 16 mmbn4s {
	" Nanase   Say…         "
	end
}
script 17 mmbn4s {
	" Noah     RE:Say…      "
	end
}
script 18 mmbn4s {
	" BBS3  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS3  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS3  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS3  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS3  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS3  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS3  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS3  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS3  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS3  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS3  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS3  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS3  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS3  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS3  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS3  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS3  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS3  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS3  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS3  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS3  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS3  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS3  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS3  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS3  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS3  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS3  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS3  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS3  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FCCB4
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Jo-Jo… Jojo…
	Jooomooon!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hi! Welcome to
	JomonElec's HP!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This free BBS is open
	to all our customers.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Please use it to
	talk about anything!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hi! I came to look
	at refrigerators
	with my wife today,
	"""
	keyWait
		any = false
	clearMsg
	"""
	when we saw some brand
	new PETs on display!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The new models are
	wireless and compact.
	We got a matching pair!
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Those new PETs are
	sweet!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I hear Dr.Hikari
	himself was behind
	their development,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and he even teamed up
	with Mr.Famous!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Their cases slide
	open at the touch
	of a button!
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hey all! My girlfriend
	and I came to buy
	a game today,
	"""
	keyWait
		any = false
	clearMsg
	"""
	then I found out you
	can reach this HP via
	the items on display!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Way cool! I'm gonna
	try jacking into all
	kinds of things!
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hello! My boyfriend
	dragged me along
	with him today…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Now he's going around
	trying to jack into
	everything!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm indulging him,but
	my legs are so sore!
	I'm ready to go home!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Why is it that men
	get so energized when
	they're in ElecTown?
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I came to buy a
	digital camera today!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'm glad this HP is
	so close to the
	Town Area.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Right now,I'm jacked in
	from a TV on display!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But you can't get to
	this HP from the AC
	ad monitor up above.
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I come to JomonElec
	a lot,and I always see
	the same old man.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I guess he really
	loves electronics?
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I see that guy a lot
	too! I think he's
	JomonElec's Chief!
	"""
	keyWait
		any = false
	clearMsg
	"""
	It's nice to see a
	higher-up personally
	checking in like that.
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	The other day I got
	a new-model PET and
	NaviCust bundle,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but my Navi was mal-
	functioning,so I asked
	Jomon for a refund.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Turns out one of my
	Program Parts wasn't
	on the Command Line!
	"""
	keyWait
		any = false
	clearMsg
	"""
	How embarrassing!
	I must've mistaken it
	for a Plus Part.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Program Parts have
	to go on the Command
	Line to take effect!
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I feel your pain!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I often put same-color
	programs next to each
	other by mistake.
	"""
	keyWait
		any = false
	clearMsg
	"""
	That causes bugs,
	so my Navi always
	gets mad!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	The other day I
	installed a program
	my friend gave me.
	"""
	keyWait
		any = false
	clearMsg
	"""
	My Navi didn't get
	stronger in any way,
	but…
	"""
	keyWait
		any = false
	clearMsg
	"""
	He started telling
	all these jokes!
	What's with that?
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Oh,that sounds like
	the "Humor" program!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I hear Mr.Famous
	designed it himself,
	"""
	keyWait
		any = false
	clearMsg
	"""
	to make conversation
	with Navis more
	interesting!
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	JomonElec has an
	impressive selection
	of goods,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but I'd like to see
	more BattleChips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Any plans there?
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hello! This is the
	JomonElec BBS
	administrator!
	"""
	keyWait
		any = false
	clearMsg
	"""
	As we have opened
	only recently,we have
	not yet been able
	"""
	keyWait
		any = false
	clearMsg
	"""
	to stock many
	non-appliance wares.
	Rest assured,
	"""
	keyWait
		any = false
	clearMsg
	"""
	in the near future,
	we will offer a wider
	variety of chips!
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	For BattleChips,
	Higsby's in ACDC Town
	is the place to go!
	"""
	keyWait
		any = false
	clearMsg
	"""
	He's even started an
	order service for
	out-of-stock chips!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If it's in your Data
	Library,you can get
	it at Higsby's!
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Higsby's? I've heard
	about that place…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Mainly that the owner
	talks funny.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But thanks! I'll have
	to check it out and
	order some chips!
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID10
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID11
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID12
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID13
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID14
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID15
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID16
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID17
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID18
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID19
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1A
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1B
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1C
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS04 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FD41C
@size 48

script 0 mmbn4s {
	" Jomon    Greetings    "
	end
}
script 1 mmbn4s {
	" Shinya   New PET!     "
	end
}
script 2 mmbn4s {
	" Mitsu    RE:New PET!  "
	end
}
script 3 mmbn4s {
	" Hide     Jack In!     "
	end
}
script 4 mmbn4s {
	" Yuki     FW:Jack In!  "
	end
}
script 5 mmbn4s {
	" Yuji     Town Area    "
	end
}
script 6 mmbn4s {
	" Amayan   Old Man      "
	end
}
script 7 mmbn4s {
	" Carlton  RE:Old Man   "
	end
}
script 8 mmbn4s {
	" Purimiki Oops!        "
	end
}
script 9 mmbn4s {
	" Nukki    RE:Oops!     "
	end
}
script 10 mmbn4s {
	" Kurotan  Question     "
	end
}
script 11 mmbn4s {
	" Bozu     RE:Question  "
	end
}
script 12 mmbn4s {
	" Bozu     BattleChips  "
	end
}
script 13 mmbn4s {
	" Jomon    RE:BattleCh… "
	end
}
script 14 mmbn4s {
	" Nukki    RE:BattleCh… "
	end
}
script 15 mmbn4s {
	" Bozu     RE:BattleCh… "
	end
}
script 16 mmbn4s {
	" BBS4  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS4  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS4  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS4  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS4  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS4  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS4  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS4  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS4  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS4  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS4  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS4  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS4  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS4  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS4  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS4  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS4  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS4  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS4  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS4  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS4  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS4  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS4  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS4  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS4  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS4  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS4  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS4  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS4  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS4  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS4  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FD5F0
@size 48

script 0 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	This is the Under BBS…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Even in this lawless
	land,information is a
	valuable resource…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Everything's a give
	and take,so share
	anything juicy.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll be awaiting
	your posts…
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I learned somethin'
	about that lamp-shaped
	virus.
	"""
	keyWait
		any = false
	clearMsg
	"""
	His name's Elmperor.
	He sucks up the
	energy of panels,
	"""
	keyWait
		any = false
	clearMsg
	"""
	so if you change his
	panels to normal ones,
	he'll be a pushover.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Something that breaks
	panels,like Geddon,
	oughta work too.
	"""
	keyWait
		any = false
	waitHold
}
script 2 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	D-does… an-n-nyone…
	k-know wh-wh-where…
	S-ShadeMan is…?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I-I can't take… th-the
	DarkChip withdrawal…
	The pain…! Hrrgghhh…
	"""
	keyWait
		any = false
	clearMsg
	"""
	S-somebody… g-give me…
	a D-D-DarkChip…
	"""
	keyWait
		any = false
	clearMsg
	"""
	......
	"""
	keyWait
		any = false
	waitHold
}
script 3 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Heh! Sounds like your
	soul's been overcome
	with evil…
	"""
	keyWait
		any = false
	clearMsg
	"""
	You've probably
	fallen into the world
	of darkness by now,
	"""
	keyWait
		any = false
	clearMsg
	"""
	doomed to wander
	a never-ending
	inferno in Hades.
	"""
	keyWait
		any = false
	clearMsg
	"""
	As for ShadeMan,
	I hear he was deleted.
	"""
	keyWait
		any = false
	clearMsg
	"""
	All paths of evil lead
	to the same place…
	"""
	keyWait
		any = false
	waitHold
}
script 4 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Heh heh heh… Evil
	overtook you because
	your soul is weak!
	"""
	keyWait
		any = false
	clearMsg
	"""
	You gotta be like me.
	I use DarkChips,
	but my soul's strong!
	"""
	keyWait
		any = false
	clearMsg
	"""
	That said,when my
	HP comes near the
	brink of death,
	"""
	keyWait
		any = false
	clearMsg
	"""
	my DarkSoul appears
	and I turn into a
	deleting machine,
	"""
	keyWait
		any = false
	clearMsg
	"""
	losing my memory
	for a little while.
	"""
	keyWait
		any = false
	clearMsg
	"""
	No one ever said
	evil was easy…
	"""
	keyWait
		any = false
	waitHold
}
script 5 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Well now… ShadeMan
	was deleted?
	"""
	keyWait
		any = false
	clearMsg
	"""
	Even still,I'll bet
	he's somewhere on
	the Undernet,
	"""
	keyWait
		any = false
	clearMsg
	"""
	using the power of
	darkness to heal his
	wounds…
	"""
	keyWait
		any = false
	waitHold
}
script 6 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	What's the deal?
	I can't use my bud's
	SP Navi chip anymore.
	"""
	keyWait
		any = false
	clearMsg
	"""
	When I try to,it just
	goes up in smoke!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Maybe it's because I'm
	using DarkChips?
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Only Navis who have
	not turned dark can
	use SP Navi chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Meanwhile,only Navis
	who turn dark can
	use DS Navi chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Rumor also has it
	that the 5 legendary
	EvilChips,
	"""
	keyWait
		any = false
	clearMsg
	"""
	which include Hole
	and Static,are only
	usable by dark Navis.
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I hear Navis whose
	souls are ruled by
	darkness get pulled
	"""
	keyWait
		any = false
	clearMsg
	"""
	into a giant DarkHole,
	but strong-souled
	Navis can resist…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	I swear I saw
	Django the Solar Boy
	in this area!
	"""
	keyWait
		any = false
	clearMsg
	"""
	What's a character
	from a story doing in
	the Cyberworld?!
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	What?! Django's not
	even real! You must
	be hallucinating…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Still,Django showing
	up while ShadeMan
	rests in the Undernet…
	"""
	keyWait
		any = false
	clearMsg
	"""
	Sounds like a story
	in the making!
	Heh heh heh…
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	Hah! Are Django and
	ShadeMan gonna fight?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'd like to see that!
	I wonder who'd win?
	"""
	keyWait
		any = false
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID0C
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID0D
	"""
	keyWait
		any = false
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID0E
	"""
	keyWait
		any = false
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID0F
	"""
	keyWait
		any = false
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID10
	"""
	keyWait
		any = false
	waitHold
}
script 17 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID11
	"""
	keyWait
		any = false
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID12
	"""
	keyWait
		any = false
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID13
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID14
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID15
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID16
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID17
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID18
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID19
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1A
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1B
	"""
	keyWait
		any = false
	waitHold
}
script 28 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1C
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1D
	"""
	keyWait
		any = false
	waitHold
}
script 30 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1E
	"""
	keyWait
		any = false
	waitHold
}
script 31 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID1F
	"""
	keyWait
		any = false
	waitHold
}
script 32 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID20
	"""
	keyWait
		any = false
	waitHold
}
script 33 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID21
	"""
	keyWait
		any = false
	waitHold
}
script 34 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID22
	"""
	keyWait
		any = false
	waitHold
}
script 35 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID23
	"""
	keyWait
		any = false
	waitHold
}
script 36 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID24
	"""
	keyWait
		any = false
	waitHold
}
script 37 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID25
	"""
	keyWait
		any = false
	waitHold
}
script 38 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID26
	"""
	keyWait
		any = false
	waitHold
}
script 39 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID27
	"""
	keyWait
		any = false
	waitHold
}
script 40 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID28
	"""
	keyWait
		any = false
	waitHold
}
script 41 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID29
	"""
	keyWait
		any = false
	waitHold
}
script 42 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2A
	"""
	keyWait
		any = false
	waitHold
}
script 43 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2B
	"""
	keyWait
		any = false
	waitHold
}
script 44 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2C
	"""
	keyWait
		any = false
	waitHold
}
script 45 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2D
	"""
	keyWait
		any = false
	waitHold
}
script 46 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2E
	"""
	keyWait
		any = false
	waitHold
}
script 47 mmbn4-lc {
	positionText
		left = 32
		top = 68
		arrowDistance = 3
	positionArrow
		left = 202
		top = 108
	"""
	BBS05 ID2F
	"""
	keyWait
		any = false
	waitHold
}
@archive 6FDC2C
@size 48

script 0 mmbn4s {
	" UnderRes Post away    "
	end
}
script 1 mmbn4s {
	" NO NAME  Elmperor     "
	end
}
script 2 mmbn4s {
	" NO NAME  Somebody…!   "
	end
}
script 3 mmbn4s {
	" NO NAME  RE:Somebody…!"
	end
}
script 4 mmbn4s {
	" NO NAME  RE:Somebody…!"
	end
}
script 5 mmbn4s {
	" ExNebula ShadeMan    "
	end
}
script 6 mmbn4s {
	" NO NAME  Useless Chip "
	end
}
script 7 mmbn4s {
	" NO NAME  RE:Useless…  "
	end
}
script 8 mmbn4s {
	" NO NAME  Giant Hole   "
	end
}
script 9 mmbn4s {
	" NO NAME  Django?!     "
	end
}
script 10 mmbn4s {
	" NO NAME  RE:Django?   "
	end
}
script 11 mmbn4s {
	" NO NAME  RE:Django?   "
	end
}
script 12 mmbn4s {
	" BBS5  0C XXXXXXXXXXXXX"
	end
}
script 13 mmbn4s {
	" BBS5  0D XXXXXXXXXXXXX"
	end
}
script 14 mmbn4s {
	" BBS5  0E XXXXXXXXXXXXX"
	end
}
script 15 mmbn4s {
	" BBS5  0F XXXXXXXXXXXXX"
	end
}
script 16 mmbn4s {
	" BBS5  10 XXXXXXXXXXXXX"
	end
}
script 17 mmbn4s {
	" BBS5  11 XXXXXXXXXXXXX"
	end
}
script 18 mmbn4s {
	" BBS5  12 XXXXXXXXXXXXX"
	end
}
script 19 mmbn4s {
	" BBS5  13 XXXXXXXXXXXXX"
	end
}
script 20 mmbn4s {
	" BBS5  14 XXXXXXXXXXXXX"
	end
}
script 21 mmbn4s {
	" BBS5  15 XXXXXXXXXXXXX"
	end
}
script 22 mmbn4s {
	" BBS5  16 XXXXXXXXXXXXX"
	end
}
script 23 mmbn4s {
	" BBS5  17 XXXXXXXXXXXXX"
	end
}
script 24 mmbn4s {
	" BBS5  18 XXXXXXXXXXXXX"
	end
}
script 25 mmbn4s {
	" BBS5  19 XXXXXXXXXXXXX"
	end
}
script 26 mmbn4s {
	" BBS5  1A XXXXXXXXXXXXX"
	end
}
script 27 mmbn4s {
	" BBS5  1B XXXXXXXXXXXXX"
	end
}
script 28 mmbn4s {
	" BBS5  1C XXXXXXXXXXXXX"
	end
}
script 29 mmbn4s {
	" BBS5  1D XXXXXXXXXXXXX"
	end
}
script 30 mmbn4s {
	" BBS5  1E XXXXXXXXXXXXX"
	end
}
script 31 mmbn4s {
	" BBS5  1F XXXXXXXXXXXXX"
	end
}
script 32 mmbn4s {
	" BBS5  20 XXXXXXXXXXXXX"
	end
}
script 33 mmbn4s {
	" BBS5  21 XXXXXXXXXXXXX"
	end
}
script 34 mmbn4s {
	" BBS5  22 XXXXXXXXXXXXX"
	end
}
script 35 mmbn4s {
	" BBS5  23 XXXXXXXXXXXXX"
	end
}
script 36 mmbn4s {
	" BBS5  24 XXXXXXXXXXXXX"
	end
}
script 37 mmbn4s {
	" BBS5  25 XXXXXXXXXXXXX"
	end
}
script 38 mmbn4s {
	" BBS5  26 XXXXXXXXXXXXX"
	end
}
script 39 mmbn4s {
	" BBS5  27 XXXXXXXXXXXXX"
	end
}
script 40 mmbn4s {
	" BBS5  28 XXXXXXXXXXXXX"
	end
}
script 41 mmbn4s {
	" BBS5  29 XXXXXXXXXXXXX"
	end
}
script 42 mmbn4s {
	" BBS5  2A XXXXXXXXXXXXX"
	end
}
script 43 mmbn4s {
	" BBS5  2B XXXXXXXXXXXXX"
	end
}
script 44 mmbn4s {
	" BBS5  2C XXXXXXXXXXXXX"
	end
}
script 45 mmbn4s {
	" BBS5  2D XXXXXXXXXXXXX"
	end
}
script 46 mmbn4s {
	" BBS5  2E XXXXXXXXXXXXX"
	end
}
script 47 mmbn4s {
	end
}
@archive 6FDDD0
@size 5

script 0 mmbn4-lc {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	positionMugshot
		left = 54
		top = 80
	positionArrow
		left = 202
		top = 100
	mugshotShow
		mugshot = MegaMan
	"""
	Looks like
	new messages!
	"""
	keyWait
		any = false
	waitHold
}
script 1 mmbn4-lc {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	positionMugshot
		left = 54
		top = 80
	positionArrow
		left = 202
		top = 100
	mugshotShow
		mugshot = MegaMan
	"""
	There aren't
	any messages.
	"""
	keyWait
		any = false
	waitHold
}
@archive 70010C
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	May I help you?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	What would you like?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	Please come again!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	We're all sold out.
	Thank you so much!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviYellow
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 7002C8
@size 30

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Order what chip,huh?
	([SwitchL]/[SwitchR]: Page)
	([SwitchB]: No order)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Which one,huh?
	([SwitchL]/[SwitchR]: Page)
	([SwitchB]: No order)
	"""
	waitHold
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Come again,huh!
	"""
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	OK,I'll send this
	to NumberMan…
	NumberMan,new order!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = NumberMan
	"""
	Transferring now!
	
	"""
	wait
		frames = 30
	"""
	.
	"""
	wait
		frames = 30
	"""
	.
	"""
	wait
		frames = 30
	"""
	.
	"""
	wait
		frames = 20
	"""
	OK!
	Transfer complete!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lan got a
	BattleChip:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	We're all sold out!
	Thank yah for yer
	business,huh!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 24 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	",huh?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll see if I can
	order it… Hmmm…
	"""
	keyWait
		any = false
	waitHold
}
script 25 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	",huh?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll see if I can
	order it… Hmmm…
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	",huh?
	"""
	keyWait
		any = false
	clearMsg
	"""
	I've never heard of
	that,but I'll try…
	"""
	keyWait
		any = false
	waitHold
}
script 27 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	I've got one in stock
	with the "
	"""
	printCode
		buffer = 2
		code = A
	"""
	" code!
	"""
	keyWait
		any = false
	clearMsg
	"""
	That's 
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	z,OK?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 28 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Ooops,sorry!
	Don't have that in
	stock…
	"""
	keyWait
		any = false
	waitHold
}
script 29 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	…Nope,don't see it.
	Huh! Are you sure
	there's such a chip?
	"""
	keyWait
		any = false
	waitHold
}
@archive 700588
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	May I help you?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	What would you like?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	Please come again!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	We're all sold out.
	Thank you so much!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = PurpleNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 700744
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	Howdy!
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	Whatcha want?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	Come again!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	I'm plumb sold out.
	Thank ya kindly!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = OfficialNavi
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 7008F4
@size 18

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	How can I help ya?!
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Which one?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Come back now!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	You want "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	You want "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Sorry kid,nothing
	left to sell now!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	You want "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
@archive 700A58
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	May I help yah?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Whatcha want,huh?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	Come again,huh!!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	We're all sold out!
	Thank yah for yer
	business,huh!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Higsby
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 700C20
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	May I help you?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	What would you like?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	Please come again!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough BugFrags…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	We're all sold out.
	Thank you so much!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = NormalNaviPink
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient BugFrags…
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 700DF4
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Yeeeessss…?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Whatcha want? Eh?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	Come again sssooon!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough BugFrags…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	I'm plumb sold out.
	Thank you s-s-so…!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = HeelNaviPurple
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I traded for
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient BugFrags…
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Traded for
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 700FC8
@size 24

script 0 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	May I help you?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 1 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	What would you like?
	([SwitchR]: Describe)
	([SwitchB]: Don't buy)
	"""
	waitHold
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 3 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	Please come again!
	"""
	waitHold
}
script 4 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	"
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 5 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 6 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 7 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 8 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Not enough Zennys…
	"""
	keyWait
		any = false
	waitHold
}
script 9 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I can't carry
	any more.
	"""
	keyWait
		any = false
	waitHold
}
script 10 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	We're all sold out.
	Thank you so much!
	"""
	keyWait
		any = false
	waitHold
}
script 11 mmbn4-lc {
	msgOpenQuick
	mugshotShow
		mugshot = Scientist
	textSpeed
		delay = 0
	"""
	"
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	soundDisableChoiceSFX
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 12 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	I bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	"!
	"""
	keyWait
		any = false
	waitHold
}
script 13 mmbn4s {
	"""
	 
	"""
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	end
}
script 14 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 15 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 6
		padZeros = false
		padLeft = true
	"""
	[z]
	"""
	end
}
script 16 mmbn4s {
	end
}
script 17 mmbn4s {
	"""
	-------
	"""
	end
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Are you leaving now?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	waitHold
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printItem
		buffer = 1
		item = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Insufficient Zennys.
	"""
	keyWait
		any = false
	waitHold
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Can't hold any more.
	"""
	keyWait
		any = false
	waitHold
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	You bought "
	"""
	printNaviCustProgram
		buffer = 1
		program = 0
	"""
	."
	"""
	keyWait
		any = false
	waitHold
}
@archive 7017BC
@size 34

script 0 mmbn4-lc {
	msgOpen
	"""
	It's a Chip Trader.
	Insert 3 BattleChips?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 5,
			jump = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 1
		jumpIfResetting = 32
	keyWait
		any = false
	end
}
script 1 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	msgOpen
	mugshotShow
		mugshot = MegaMan
	"""
	Lan,you have less
	than 3 chips in
	your pack.
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 30
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Add these 3?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	msgCloseQuick
	end
}
script 3 mmbn4-lc {
	msgOpen
	"""
	OK!
	
	"""
	soundDisableTextSFX
	soundPlay
		track = 268
	"""
	Click-k-k-k… THUNK!
	"""
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Lan got a
	BattleChip:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 5,
			jump = continue
		]
	startChipTrader
		amount = 3
		jumpIfNotEnoughChips = 4
		jumpIfResetting = 32
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan… you
	have less than 3
	chips in your pack!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4s {
	end
}
script 6 mmbn4-lc {
	msgOpen
	"""
	Chip Trader Special!
	Insert 10 BattleChips?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 11,
			jump = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 7
		jumpIfResetting = 32
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 22
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you have less
	than 10 chips in
	your pack!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 31
	positionMugshot
		left = 54
		top = 80
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"""
	Add these 10?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	msgCloseQuick
	end
}
script 9 mmbn4-lc {
	msgOpen
	"""
	OK!
	
	"""
	soundDisableTextSFX
	soundPlay
		track = 268
	"""
	Click-k-k-k… THUNK!
	"""
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Lan got a
	BattleChip:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 11,
			jump = continue
		]
	startChipTrader
		amount = 10
		jumpIfNotEnoughChips = 10
		jumpIfResetting = 32
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 23
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan… you
	have less than 10
	chips in your pack!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4s {
	end
}
script 12 mmbn4-lc {
	msgOpen
	"""
	A BugFrag Trader.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Insert 10 BugFrags?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 17,
			jump = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 13
		jumpIfResetting = 32
	waitHold
}
script 13 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 24
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you don't have
	10 BugFrags!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	msgOpenQuick
	"""
	MegaMan handed over
	the BugFrags!
	"""
	keyWait
		any = false
	clearMsg
	flagSet
		flag = 43
	soundPlay
		track = 417
	wait
		frames = 60
	"""
	Chip data appeared
	with a thunderous
	growl!
	"""
	keyWait
		any = false
	clearMsg
	playerAnimateScene
		animation = 24
	soundPlay
		track = 115
	flagSet
		flag = 42
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	"""
	Lan got:
	"
	"""
	printChip
		buffer = 1
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	clearMsg
	flagClear
		flag = 42
	positionText
		left = 51
		top = 108
		arrowDistance = 3
	"""
	Try again?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = 17,
			jump = continue
		]
	startBugFragTrader
		jumpIfNotEnoughBugFrags = 16
		jumpIfResetting = 33
	waitHold
}
script 16 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 25
	clearMsg
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Too bad,Lan…
	We don't have 10
	BugFrags!
	"""
	keyWait
		any = false
	msgClose
	waitHold
}
script 17 mmbn4-lc {
	msgClose
	waitHold
}
script 20 mmbn4-lc {
	msgOpen
	"""
	You don't have 3
	chips in your pack.
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	clearMsg
	msgOpen
	"""
	You don't have 3
	chips in your pack.
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	msgOpen
	"""
	You don't have 10
	chips in your pack.
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	clearMsg
	msgOpen
	"""
	You don't have 10
	chips in your pack.
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	msgOpen
	"""
	You don't have 10
	BugFrags.
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	clearMsg
	msgOpen
	"""
	You don't have 10
	BugFrags.
	"""
	keyWait
		any = false
	waitHold
}
script 26 mmbn4-lc {
	msgOpen
	"""
	Congratulations!
	Here is your prize
	for winning!
	"""
	keyWait
		any = false
	clearMsg
	checkGlobal
		variable = 3
		value = 0
		jumpIfEqual = 27
		jumpIfNotEqual = continue
	checkGlobal
		variable = 3
		value = 2
		jumpIfEqual = 28
		jumpIfNotEqual = continue
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"""
	Lan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = true
	"""
	 Zennys"!!
	"""
	playerFinish
	playerResetScene
	flagClear
		flag = 42
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	soundDisableTextSFX
	soundPlay
		track = 444
	"""
	Whiiiirrrr!
	"""
	wait
		frames = 80
	soundEnableTextSFX
	keyWait
		any = false
	clearMsg
	positionText
		left = 91
		top = 108
		arrowDistance = 3
	positionArrow
		left = 226
		top = 141
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	"""
	Lan got:
	"
	"""
	printChip
		buffer = 3
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 2
		code = A
	"""
	"!!
	"""
	playerFinish
	playerResetScene
	keyWait
		any = false
	flagClear
		flag = 42
	end
}
script 28 mmbn4-lc {
	playerAnimateScene
		animation = 24
	flagSet
		flag = 42
	soundPlay
		track = 115
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 29
		jumpIfSome = 29
	"""
	Lan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = true
	"""
	 BugFrags"!!
	"""
	playerFinish
	playerResetScene
	flagClear
		flag = 42
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	msgOpen
	"""
	You can't carry
	any more BugFrags.
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Add these 3?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	msgCloseQuick
	end
}
script 31 mmbn4-lc {
	positionText
		left = 80
		top = 60
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Add these 10?
	
	"""
	positionOptionFromCenter
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = false
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	msgCloseQuick
	end
}
script 32 mmbn4-lc {
	msgOpen
	"""
	Currently resetting.
	Please wait a while
	before trying again.
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	clearMsg
	msgOpen
	"""
	Currently resetting.
	Please wait a while
	before trying again.
	"""
	keyWait
		any = false
	msgClose
	waitHold
}
@archive 745E98
@size 256

script 0 mmbn4s {
	end
}
script 1 mmbn4s {
	"Cannon"
	end
}
script 2 mmbn4s {
	"HiCannon"
	end
}
script 3 mmbn4s {
	"M-Cannon"
	end
}
script 4 mmbn4s {
	"AirShot"
	end
}
script 5 mmbn4s {
	"Blizzard"
	end
}
script 6 mmbn4s {
	"HeatBrth"
	end
}
script 7 mmbn4s {
	"Silence"
	end
}
script 8 mmbn4s {
	"Tornado"
	end
}
script 9 mmbn4s {
	"WideSht1"
	end
}
script 10 mmbn4s {
	"WideSht2"
	end
}
script 11 mmbn4s {
	"WideSht3"
	end
}
script 12 mmbn4s {
	"FlmLine1"
	end
}
script 13 mmbn4s {
	"FlmLine2"
	end
}
script 14 mmbn4s {
	"FlmLine3"
	end
}
script 15 mmbn4s {
	"Vulcan1"
	end
}
script 16 mmbn4s {
	"Vulcan2"
	end
}
script 17 mmbn4s {
	"Vulcan3"
	end
}
script 18 mmbn4s {
	"Spreader"
	end
}
script 19 mmbn4s {
	"HeatShot"
	end
}
script 20 mmbn4s {
	"Heat-V"
	end
}
script 21 mmbn4s {
	"HeatSide"
	end
}
script 22 mmbn4s {
	"Bubbler"
	end
}
script 23 mmbn4s {
	"Bub-V"
	end
}
script 24 mmbn4s {
	"BublSide"
	end
}
script 25 mmbn4s {
	"ElemFlar"
	end
}
script 26 mmbn4s {
	"ElemIce"
	end
}
script 27 mmbn4s {
	"Static"
	end
}
script 28 mmbn4s {
	"LifeSync"
	end
}
script 29 mmbn4s {
	"MiniBomb"
	end
}
script 30 mmbn4s {
	"EnergBom"
	end
}
script 31 mmbn4s {
	"MegEnBom"
	end
}
script 32 mmbn4s {
	"GunDelS1"
	end
}
script 33 mmbn4s {
	"GunDelS2"
	end
}
script 34 mmbn4s {
	"GunDelS3"
	end
}
script 35 mmbn4s {
	"MagBolt1"
	end
}
script 36 mmbn4s {
	"MagBolt2"
	end
}
script 37 mmbn4s {
	"MagBolt3"
	end
}
script 38 mmbn4s {
	"Binder1"
	end
}
script 39 mmbn4s {
	"Binder2"
	end
}
script 40 mmbn4s {
	"Binder3"
	end
}
script 41 mmbn4s {
	"BugBomb"
	end
}
script 42 mmbn4s {
	"ElecShok"
	end
}
script 43 mmbn4s {
	"WoodPwdr"
	end
}
script 44 mmbn4s {
	"Ball"
	end
}
script 45 mmbn4s {
	"Geyser"
	end
}
script 46 mmbn4s {
	"BlkBomb"
	end
}
script 47 mmbn4s {
	"SandRing"
	end
}
script 48 mmbn4s {
	"Sword"
	end
}
script 49 mmbn4s {
	"WideSwrd"
	end
}
script 50 mmbn4s {
	"LongSwrd"
	end
}
script 51 mmbn4s {
	"WideBlde"
	end
}
script 52 mmbn4s {
	"LongBlde"
	end
}
script 53 mmbn4s {
	"WindRack"
	end
}
script 54 mmbn4s {
	"CustSwrd"
	end
}
script 55 mmbn4s {
	"VarSwrd"
	end
}
script 56 mmbn4s {
	"Slasher"
	end
}
script 57 mmbn4s {
	"Thunder1"
	end
}
script 58 mmbn4s {
	"Thunder2"
	end
}
script 59 mmbn4s {
	"Thunder3"
	end
}
script 60 mmbn4s {
	"Counter1"
	end
}
script 61 mmbn4s {
	"Counter2"
	end
}
script 62 mmbn4s {
	"Counter3"
	end
}
script 63 mmbn4s {
	"AirHoc1"
	end
}
script 64 mmbn4s {
	"AirHoc2"
	end
}
script 65 mmbn4s {
	"AirHoc3"
	end
}
script 66 mmbn4s {
	"CircGun1"
	end
}
script 67 mmbn4s {
	"CircGun2"
	end
}
script 68 mmbn4s {
	"CircGun3"
	end
}
script 69 mmbn4s {
	"TwnFng1"
	end
}
script 70 mmbn4s {
	"TwnFng2"
	end
}
script 71 mmbn4s {
	"TwnFng3"
	end
}
script 72 mmbn4s {
	"WhitWeb1"
	end
}
script 73 mmbn4s {
	"WhitWeb2"
	end
}
script 74 mmbn4s {
	"WhitWeb3"
	end
}
script 75 mmbn4s {
	"Boomer1"
	end
}
script 76 mmbn4s {
	"Boomer2"
	end
}
script 77 mmbn4s {
	"Boomer3"
	end
}
script 78 mmbn4s {
	"SidBmbo1"
	end
}
script 79 mmbn4s {
	"SidBmbo2"
	end
}
script 80 mmbn4s {
	"SidBmbo3"
	end
}
script 81 mmbn4s {
	"Lance"
	end
}
script 82 mmbn4s {
	"Hole"
	end
}
script 83 mmbn4s {
	"Wind"
	end
}
script 84 mmbn4s {
	"Fan"
	end
}
script 85 mmbn4s {
	"BoyBomb1"
	end
}
script 86 mmbn4s {
	"BoyBomb2"
	end
}
script 87 mmbn4s {
	"BoyBomb3"
	end
}
script 88 mmbn4s {
	"Guard1"
	end
}
script 89 mmbn4s {
	"Guard2"
	end
}
script 90 mmbn4s {
	"Guard3"
	end
}
script 91 mmbn4s {
	"CrakOut"
	end
}
script 92 mmbn4s {
	"DublCrak"
	end
}
script 93 mmbn4s {
	"TripCrak"
	end
}
script 94 mmbn4s {
	"Magnum"
	end
}
script 95 mmbn4s {
	"MetaGel"
	end
}
script 96 mmbn4s {
	"Snake"
	end
}
script 97 mmbn4s {
	"TimeBomb"
	end
}
script 98 mmbn4s {
	"Mine"
	end
}
script 99 mmbn4s {
	"RockCube"
	end
}
script 100 mmbn4s {
	"Fanfare"
	end
}
script 101 mmbn4s {
	"Discord"
	end
}
script 102 mmbn4s {
	"Timpani"
	end
}
script 103 mmbn4s {
	"VDoll"
	end
}
script 104 mmbn4s {
	"BigHamr1"
	end
}
script 105 mmbn4s {
	"BigHamr2"
	end
}
script 106 mmbn4s {
	"BigHamr3"
	end
}
script 107 mmbn4s {
	"Recov10"
	end
}
script 108 mmbn4s {
	"Recov30"
	end
}
script 109 mmbn4s {
	"Recov50"
	end
}
script 110 mmbn4s {
	"Recov80"
	end
}
script 111 mmbn4s {
	"Recov120"
	end
}
script 112 mmbn4s {
	"Recov150"
	end
}
script 113 mmbn4s {
	"Recov200"
	end
}
script 114 mmbn4s {
	"Recov300"
	end
}
script 115 mmbn4s {
	"Repair"
	end
}
script 116 mmbn4s {
	"PanlGrab"
	end
}
script 117 mmbn4s {
	"AreaGrab"
	end
}
script 118 mmbn4s {
	"GrabRvng"
	end
}
script 119 mmbn4s {
	"GrabBnsh"
	end
}
script 120 mmbn4s {
	"SloGauge"
	end
}
script 121 mmbn4s {
	"FstGauge"
	end
}
script 122 mmbn4s {
	"PnlRetrn"
	end
}
script 123 mmbn4s {
	"Geddon1"
	end
}
script 124 mmbn4s {
	"Geddon2"
	end
}
script 125 mmbn4s {
	"Geddon3"
	end
}
script 126 mmbn4s {
	"ElemLeaf"
	end
}
script 127 mmbn4s {
	"ColorPt"
	end
}
script 128 mmbn4s {
	"ElemSand"
	end
}
script 129 mmbn4s {
	"Blinder"
	end
}
script 130 mmbn4s {
	"MokoRus1"
	end
}
script 131 mmbn4s {
	"MokoRus2"
	end
}
script 132 mmbn4s {
	"MokoRus3"
	end
}
script 133 mmbn4s {
	"Invis"
	end
}
script 134 mmbn4s {
	"PopUp"
	end
}
script 135 mmbn4s {
	"Barrier"
	end
}
script 136 mmbn4s {
	"Barr100"
	end
}
script 137 mmbn4s {
	"Barr200"
	end
}
script 138 mmbn4s {
	"NrthWind"
	end
}
script 139 mmbn4s {
	"HolyPanl"
	end
}
script 140 mmbn4s {
	"AntiFire"
	end
}
script 141 mmbn4s {
	"AntiWatr"
	end
}
script 142 mmbn4s {
	"AntiElec"
	end
}
script 143 mmbn4s {
	"AntiWood"
	end
}
script 144 mmbn4s {
	"AntiNavi"
	end
}
script 145 mmbn4s {
	"AntiDmg"
	end
}
script 146 mmbn4s {
	"AntiSwrd"
	end
}
script 147 mmbn4s {
	"AntiRecv"
	end
}
script 148 mmbn4s {
	"CopyDmg"
	end
}
script 149 mmbn4s {
	"Atk+10"
	end
}
script 150 mmbn4s {
	"Navi+20"
	end
}
script 151 mmbn4s {
	"RollAro1"
	end
}
script 152 mmbn4s {
	"RollAro2"
	end
}
script 153 mmbn4s {
	"RollAro3"
	end
}
script 154 mmbn4s {
	"GutPnch1"
	end
}
script 155 mmbn4s {
	"GutPnch2"
	end
}
script 156 mmbn4s {
	"GutPnch3"
	end
}
script 157 mmbn4s {
	"PropBom1"
	end
}
script 158 mmbn4s {
	"PropBom2"
	end
}
script 159 mmbn4s {
	"PropBom3"
	end
}
script 160 mmbn4s {
	"SeekBom1"
	end
}
script 161 mmbn4s {
	"SeekBom2"
	end
}
script 162 mmbn4s {
	"SeekBom3"
	end
}
script 163 mmbn4s {
	"Meteors1"
	end
}
script 164 mmbn4s {
	"Meteors2"
	end
}
script 165 mmbn4s {
	"Meteors3"
	end
}
script 166 mmbn4s {
	"Ligtnin1"
	end
}
script 167 mmbn4s {
	"Ligtnin2"
	end
}
script 168 mmbn4s {
	"Ligtnin3"
	end
}
script 169 mmbn4s {
	"HawkCut1"
	end
}
script 170 mmbn4s {
	"HawkCut2"
	end
}
script 171 mmbn4s {
	"HawkCut3"
	end
}
script 172 mmbn4s {
	"NumbrBl1"
	end
}
script 173 mmbn4s {
	"NumbrBl2"
	end
}
script 174 mmbn4s {
	"NumbrBl3"
	end
}
script 175 mmbn4s {
	"MetlGer1"
	end
}
script 176 mmbn4s {
	"MetlGer2"
	end
}
script 177 mmbn4s {
	"MetlGer3"
	end
}
script 178 mmbn4s {
	"PanlSht1"
	end
}
script 179 mmbn4s {
	"PanlSht2"
	end
}
script 180 mmbn4s {
	"PanlSht3"
	end
}
script 181 mmbn4s {
	"AquaUp1"
	end
}
script 182 mmbn4s {
	"AquaUp2"
	end
}
script 183 mmbn4s {
	"AquaUp3"
	end
}
script 184 mmbn4s {
	"GreenWd1"
	end
}
script 185 mmbn4s {
	"GreenWd2"
	end
}
script 186 mmbn4s {
	"GreenWd3"
	end
}
script 187 mmbn4s {
	"DrkCanon"
	end
}
script 188 mmbn4s {
	"DrkSword"
	end
}
script 189 mmbn4s {
	"DarkBomb"
	end
}
script 190 mmbn4s {
	"DrkVulcn"
	end
}
script 191 mmbn4s {
	"DrkLance"
	end
}
script 192 mmbn4s {
	"DrkSpred"
	end
}
script 193 mmbn4s {
	"DrkStage"
	end
}
script 194 mmbn4s {
	"DrkRecov"
	end
}
script 201 mmbn4s {
	"LifeAura"
	end
}
script 202 mmbn4s {
	"Muramasa"
	end
}
script 203 mmbn4s {
	"Guardian"
	end
}
script 204 mmbn4s {
	"Anubis"
	end
}
script 205 mmbn4s {
	"Atk+30"
	end
}
script 206 mmbn4s {
	"BugFix"
	end
}
script 207 mmbn4s {
	"DblPoint"
	end
}
script 208 mmbn4s {
	"Snctuary"
	end
}
script 209 mmbn4s {
	"FullCust"
	end
}
script 210 mmbn4s {
	"ShotStar"
	end
}
script 211 mmbn4s {
	"BugChain"
	end
}
script 212 mmbn4s {
	"Jealousy"
	end
}
script 213 mmbn4s {
	"ElemDark"
	end
}
script 214 mmbn4s {
	"BlakWing"
	end
}
script 215 mmbn4s {
	"GodHammr"
	end
}
script 216 mmbn4s {
	"DrkLine"
	end
}
script 217 mmbn4s {
	"NeoVari"
	end
}
script 218 mmbn4s {
	"Z-Saber"
	end
}
script 219 mmbn4s {
	"GunDSlEX"
	end
}
script 220 mmbn4s {
	"SuprVulc"
	end
}
script 221 mmbn4s {
	"Roll"
	end
}
script 222 mmbn4s {
	"RollSP"
	end
}
script 223 mmbn4s {
	"RollDS"
	end
}
script 224 mmbn4s {
	"GutsMan"
	end
}
script 225 mmbn4s {
	"GutsMnSP"
	end
}
script 226 mmbn4s {
	"GutsMnDS"
	end
}
script 227 mmbn4s {
	"WindMan"
	end
}
script 228 mmbn4s {
	"WindMnSP"
	end
}
script 229 mmbn4s {
	"WindMnDS"
	end
}
script 230 mmbn4s {
	"SearchMn"
	end
}
script 231 mmbn4s {
	"SrchMnSP"
	end
}
script 232 mmbn4s {
	"SrchMnDS"
	end
}
script 233 mmbn4s {
	"FireMan"
	end
}
script 234 mmbn4s {
	"FireMnSP"
	end
}
script 235 mmbn4s {
	"FireMnDS"
	end
}
script 236 mmbn4s {
	"ThundrMn"
	end
}
script 237 mmbn4s {
	"ThunMnSP"
	end
}
script 238 mmbn4s {
	"ThunMnDS"
	end
}
script 239 mmbn4s {
	"ProtoMan"
	end
}
script 240 mmbn4s {
	"ProtoMSP"
	end
}
script 241 mmbn4s {
	"ProtoMDS"
	end
}
script 242 mmbn4s {
	"NumberMn"
	end
}
script 243 mmbn4s {
	"NumbMnSP"
	end
}
script 244 mmbn4s {
	"NumbMnDS"
	end
}
script 245 mmbn4s {
	"MetalMan"
	end
}
script 246 mmbn4s {
	"MetlMnSP"
	end
}
script 247 mmbn4s {
	"MetlMnDS"
	end
}
script 248 mmbn4s {
	"JunkMan"
	end
}
script 249 mmbn4s {
	"JunkMnSP"
	end
}
script 250 mmbn4s {
	"JunkMnDS"
	end
}
script 251 mmbn4s {
	"AquaMan"
	end
}
script 252 mmbn4s {
	"AquaMnSP"
	end
}
script 253 mmbn4s {
	"AquaMnDS"
	end
}
script 254 mmbn4s {
	"WoodMan"
	end
}
script 255 mmbn4s {
	"WoodMnSP"
	end
}
@archive 746830
@size 133

script 0 mmbn4s {
	"WoodMnDS"
	end
}
script 1 mmbn4s {
	"TopMan"
	end
}
script 2 mmbn4s {
	"TopMnSP"
	end
}
script 3 mmbn4s {
	"TopMnDS"
	end
}
script 4 mmbn4s {
	"ShadeMan"
	end
}
script 5 mmbn4s {
	"ShadMnSP"
	end
}
script 6 mmbn4s {
	"ShadMnDS"
	end
}
script 7 mmbn4s {
	"BurnerMn"
	end
}
script 8 mmbn4s {
	"BurnMnSP"
	end
}
script 9 mmbn4s {
	"BurnMnDS"
	end
}
script 10 mmbn4s {
	"ColdMan"
	end
}
script 11 mmbn4s {
	"ColdMnSP"
	end
}
script 12 mmbn4s {
	"ColdMnDS"
	end
}
script 13 mmbn4s {
	"SparkMan"
	end
}
script 14 mmbn4s {
	"SprkMnSP"
	end
}
script 15 mmbn4s {
	"SprkMnDS"
	end
}
script 16 mmbn4s {
	"LaserMan"
	end
}
script 17 mmbn4s {
	"LasrMnSP"
	end
}
script 18 mmbn4s {
	"LasrMnDS"
	end
}
script 19 mmbn4s {
	"KendoMan"
	end
}
script 20 mmbn4s {
	"KendMnSP"
	end
}
script 21 mmbn4s {
	"KendMnDS"
	end
}
script 22 mmbn4s {
	"VideoMan"
	end
}
script 23 mmbn4s {
	"VideMnSP"
	end
}
script 24 mmbn4s {
	"VideMnDS"
	end
}
script 25 mmbn4s {
	"Marking"
	end
}
script 26 mmbn4s {
	"CannMode"
	end
}
script 27 mmbn4s {
	"CannBall"
	end
}
script 28 mmbn4s {
	"SwrdMode"
	end
}
script 29 mmbn4s {
	"FirePlus"
	end
}
script 30 mmbn4s {
	"ThunPlus"
	end
}
script 31 mmbn4s {
	"AquaPowr"
	end
}
script 32 mmbn4s {
	"WoodPowr"
	end
}
script 33 mmbn4s {
	"BlakWeap"
	end
}
script 34 mmbn4s {
	"FinalGun"
	end
}
script 45 mmbn4s {
	"Bass"
	end
}
script 46 mmbn4s {
	"DeltaRay"
	end
}
script 47 mmbn4s {
	"BugCurse"
	end
}
script 48 mmbn4s {
	"RedSun"
	end
}
script 49 mmbn4s {
	"SignlRed"
	end
}
script 50 mmbn4s {
	"BassAnly"
	end
}
script 51 mmbn4s {
	"HolyDrem"
	end
}
script 52 mmbn4s {
	"BlakBarr"
	end
}
script 53 mmbn4s {
	"BlueMoon"
	end
}
script 54 mmbn4s {
	"BugCharg"
	end
}
script 55 mmbn4s {
	ereaderName
		data = 0
	end
}
script 56 mmbn4s {
	ereaderName
		data = 1
	end
}
script 64 mmbn4s {
	"DarkNeo"
	end
}
script 65 mmbn4s {
	"HeatSprd"
	end
}
script 66 mmbn4s {
	"BubSprd"
	end
}
script 67 mmbn4s {
	"GigaCan1"
	end
}
script 68 mmbn4s {
	"GigaCan2"
	end
}
script 69 mmbn4s {
	"GigaCan3"
	end
}
script 70 mmbn4s {
	"SuprSpr1"
	end
}
script 71 mmbn4s {
	"SuprSpr2"
	end
}
script 72 mmbn4s {
	"SuprSpr3"
	end
}
script 73 mmbn4s {
	"FlmCros1"
	end
}
script 74 mmbn4s {
	"FlmCros2"
	end
}
script 75 mmbn4s {
	"FlmCros3"
	end
}
script 76 mmbn4s {
	"PitRng1"
	end
}
script 77 mmbn4s {
	"PitRng2"
	end
}
script 78 mmbn4s {
	"PitRng3"
	end
}
script 79 mmbn4s {
	"BstFang1"
	end
}
script 80 mmbn4s {
	"BstFang2"
	end
}
script 81 mmbn4s {
	"BstFang3"
	end
}
script 82 mmbn4s {
	"PitHoky1"
	end
}
script 83 mmbn4s {
	"PitHoky2"
	end
}
script 84 mmbn4s {
	"PitHoky3"
	end
}
script 85 mmbn4s {
	"MagShok1"
	end
}
script 86 mmbn4s {
	"MagShok2"
	end
}
script 87 mmbn4s {
	"MagShok3"
	end
}
script 88 mmbn4s {
	"LifeSrd"
	end
}
script 89 mmbn4s {
	"P.Driver"
	end
}
script 90 mmbn4s {
	"TimeBom+"
	end
}
script 91 mmbn4s {
	"PoisPhar"
	end
}
script 92 mmbn4s {
	"BodyGrd"
	end
}
script 93 mmbn4s {
	"H-Burst"
	end
}
script 96 mmbn4s {
	"MegaSoul"
	end
}
script 97 mmbn4s {
	"RollSoul"
	end
}
script 98 mmbn4s {
	"GutsSoul"
	end
}
script 99 mmbn4s {
	"WindSoul"
	end
}
script 100 mmbn4s {
	"SrchSoul"
	end
}
script 101 mmbn4s {
	"FireSoul"
	end
}
script 102 mmbn4s {
	"ThunSoul"
	end
}
script 103 mmbn4s {
	"ProtSoul"
	end
}
script 104 mmbn4s {
	"NumSoul"
	end
}
script 105 mmbn4s {
	"MetlSoul"
	end
}
script 106 mmbn4s {
	"JunkSoul"
	end
}
script 107 mmbn4s {
	"AquaSoul"
	end
}
script 108 mmbn4s {
	"WoodSoul"
	end
}
script 109 mmbn4s {
	"DuoSoul"
	end
}
script 110 mmbn4s {
	"BassSoul"
	end
}
script 111 mmbn4s {
	"DarkSoul"
	end
}
script 112 mmbn4s {
	"DarkLasr"
	end
}
script 113 mmbn4s {
	"????"
	end
}
script 114 mmbn4s {
	"FtrSword"
	end
}
script 115 mmbn4s {
	"SonicBom"
	end
}
script 116 mmbn4s {
	"Curse"
	end
}
script 117 mmbn4s {
	"Punisher"
	end
}
script 118 mmbn4s {
	"CrosSwrd"
	end
}
script 119 mmbn4s {
	"SprSonic"
	end
}
script 120 mmbn4s {
	"DblDream"
	end
}
script 121 mmbn4s {
	"FastFwd"
	end
}
script 122 mmbn4s {
	"Rewind"
	end
}
script 123 mmbn4s {
	"Training"
	end
}
script 124 mmbn4s {
	"GearChng"
	end
}
script 125 mmbn4s {
	"Poltrgst"
	end
}
script 126 mmbn4s {
	"IceCube"
	end
}
script 127 mmbn4s {
	"Rush"
	end
}
script 128 mmbn4s {
	"Beat"
	end
}
script 129 mmbn4s {
	"Tango"
	end
}
script 130 mmbn4s {
	"FinalGun"
	end
}
script 131 mmbn4s {
	"GutsMGun"
	end
}
script 132 mmbn4s {
	" "
	end
}
@archive 746D0C
@size 1

script 0 mmbn4s {
	end
}
@archive 746D14
@size 1

script 0 mmbn4s {
	end
}
@archive 746D20
@size 28

script 0 mmbn4s {
	"A"
	end
}
script 1 mmbn4s {
	"B"
	end
}
script 2 mmbn4s {
	"C"
	end
}
script 3 mmbn4s {
	"D"
	end
}
script 4 mmbn4s {
	"E"
	end
}
script 5 mmbn4s {
	"F"
	end
}
script 6 mmbn4s {
	"G"
	end
}
script 7 mmbn4s {
	"H"
	end
}
script 8 mmbn4s {
	"I"
	end
}
script 9 mmbn4s {
	"J"
	end
}
script 10 mmbn4s {
	"K"
	end
}
script 11 mmbn4s {
	"L"
	end
}
script 12 mmbn4s {
	"M"
	end
}
script 13 mmbn4s {
	"N"
	end
}
script 14 mmbn4s {
	"O"
	end
}
script 15 mmbn4s {
	"P"
	end
}
script 16 mmbn4s {
	"Q"
	end
}
script 17 mmbn4s {
	"R"
	end
}
script 18 mmbn4s {
	"S"
	end
}
script 19 mmbn4s {
	"T"
	end
}
script 20 mmbn4s {
	"U"
	end
}
script 21 mmbn4s {
	"V"
	end
}
script 22 mmbn4s {
	"W"
	end
}
script 23 mmbn4s {
	"X"
	end
}
script 24 mmbn4s {
	"Y"
	end
}
script 25 mmbn4s {
	"Z"
	end
}
script 26 mmbn4s {
	"*"
	end
}
script 27 mmbn4s {
	" "
	end
}
@archive 746D90
@size 29

script 0 mmbn4s {
	"A"
	end
}
script 1 mmbn4s {
	"B"
	end
}
script 2 mmbn4s {
	"C"
	end
}
script 3 mmbn4s {
	"D"
	end
}
script 4 mmbn4s {
	"E"
	end
}
script 5 mmbn4s {
	"F"
	end
}
script 6 mmbn4s {
	"G"
	end
}
script 7 mmbn4s {
	"H"
	end
}
script 8 mmbn4s {
	"I"
	end
}
script 9 mmbn4s {
	"J"
	end
}
script 10 mmbn4s {
	"K"
	end
}
script 11 mmbn4s {
	"L"
	end
}
script 12 mmbn4s {
	"M"
	end
}
script 13 mmbn4s {
	"N"
	end
}
script 14 mmbn4s {
	"O"
	end
}
script 15 mmbn4s {
	"P"
	end
}
script 16 mmbn4s {
	"Q"
	end
}
script 17 mmbn4s {
	"R"
	end
}
script 18 mmbn4s {
	"S"
	end
}
script 19 mmbn4s {
	"T"
	end
}
script 20 mmbn4s {
	"U"
	end
}
script 21 mmbn4s {
	"V"
	end
}
script 22 mmbn4s {
	"W"
	end
}
script 23 mmbn4s {
	"X"
	end
}
script 24 mmbn4s {
	"Y"
	end
}
script 25 mmbn4s {
	"Z"
	end
}
script 26 mmbn4s {
	"*"
	end
}
script 27 mmbn4s {
	"-"
	end
}
script 28 mmbn4s {
	" "
	end
}
@archive 746E04
@size 17

script 0 mmbn4s {
	"DOUBLE DELETE!"
	end
}
script 1 mmbn4s {
	"TRIPLE DELETE!"
	end
}
script 2 mmbn4s {
	"VS"
	end
}
script 3 mmbn4s {
	"TIME UP!"
	end
}
script 4 mmbn4s {
	"    1   "
	end
}
script 5 mmbn4s {
	"    2   "
	end
}
script 6 mmbn4s {
	"    3   "
	end
}
script 7 mmbn4s {
	"    4   "
	end
}
script 8 mmbn4s {
	"    5   "
	end
}
script 9 mmbn4s {
	"    6   "
	end
}
script 10 mmbn4s {
	"    7   "
	end
}
script 11 mmbn4s {
	"    8   "
	end
}
script 12 mmbn4s {
	"    9   "
	end
}
script 13 mmbn4s {
	"   10   "
	end
}
script 14 mmbn4s {
	" COUNTER HIT! "
	end
}
script 15 mmbn4s {
	"LEFT "
	printBuffer
		buffer = 0
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	end
}
script 16 mmbn4s {
	"LEFT  0 "
	end
}
@archive 746ECC
@size 58

script 0 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,should we run?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	Yes!
	We got away!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	No!
	We can't escape…
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	checkChapter
		lower = 124
		upper = 124
		jumpIfInRange = 56
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! This is no time
	for us to run away!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Lan,what do we do?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the MegaBuster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the shield!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the MegaBuster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the shield!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"""
	What to do…?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the RollArrow
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Roll
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the RollArrow
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What's it gonna be?!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the GutsHammer
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = GutsMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the GutsHammer
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What to do now…?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Hit them with Wind
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Draw in with Fan
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = WindMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Hit them with Wind
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Draw in with Fan
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 20 mmbn4-lc {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"""
	I await orders.
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What shall I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the ScopeGun
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = SearchMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What shall I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the ScopeGun
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 24 mmbn4-lc {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Now,what'll it be?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the FireArm
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = FireMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the FireArm
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 29 mmbn4-lc {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"""
	How should we fight?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 30 mmbn4-lc {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the ElecBeam
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = ThunderMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the ElecBeam
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Your orders?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Shield
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	LongSword
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 35 mmbn4-lc {
	mugshotShow
		mugshot = ProtoMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Shield
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	LongSword
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 36 mmbn4-lc {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Enemy is changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 37 mmbn4-lc {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What's our strategy?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 38 mmbn4-lc {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What shall I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the shield!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 39 mmbn4-lc {
	mugshotShow
		mugshot = NumberMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What shall I use?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the shield!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 40 mmbn4-lc {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What'll it be?!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 42 mmbn4-lc {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the MetalBlade
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 43 mmbn4-lc {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the MetalBlade
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 44 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What to do now…?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 46 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the JunkPress
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 47 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the JunkPress
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 48 mmbn4-lc {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 49 mmbn4-lc {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What to do,drip?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 50 mmbn4-lc {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Pick equipment,drip!
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the AquaShot
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = AquaMan
	msgOpen
	textSpeed
		delay = 0
	"""
	Pick equipment,drip!
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use the AquaShot
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"""
	The enemy's changing
	strategies! Should we?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What shall we do?
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Chase the enemy!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 1
	space
		count = 1
	"""
	Get out of row!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use DeathForest
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = true
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 55 mmbn4-lc {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	textSpeed
		delay = 0
	"""
	What should I equip?
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 0
		down = 1
	space
		count = 1
	"""
	Use the Buster!
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Use DeathForest
	
	"""
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 2
	space
		count = 1
	"""
	Wait for a chip
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 56 mmbn4-lc {
	checkFlag
		flag = 3015
		jumpIfTrue = 57
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! This is no time
	for us to run away!
	"""
	keyWait
		any = false
	end
}
script 57 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's do it,Chaud!
	Let's save ProtoMan!
	"""
	keyWait
		any = false
	end
}
@archive 748110
@size 253

script 0 mmbn4s {
	"MegaMan"
	end
}
script 1 mmbn4s {
	"Mettaur"
	end
}
script 2 mmbn4s {
	"MettEX"
	end
}
script 3 mmbn4s {
	"Mettaur2"
	end
}
script 4 mmbn4s {
	"Mett2EX"
	end
}
script 5 mmbn4s {
	"Mettaur3"
	end
}
script 6 mmbn4s {
	"Mett3EX"
	end
}
script 7 mmbn4s {
	"VolGear"
	end
}
script 8 mmbn4s {
	"VolGearEX"
	end
}
script 9 mmbn4s {
	"VulGear"
	end
}
script 10 mmbn4s {
	"VulGearEX"
	end
}
script 11 mmbn4s {
	"ValGear"
	end
}
script 12 mmbn4s {
	"ValGearEX"
	end
}
script 13 mmbn4s {
	"Billy"
	end
}
script 14 mmbn4s {
	"BillyEX"
	end
}
script 15 mmbn4s {
	"Silly"
	end
}
script 16 mmbn4s {
	"SillyEX"
	end
}
script 17 mmbn4s {
	"Killy"
	end
}
script 18 mmbn4s {
	"KillyEX"
	end
}
script 19 mmbn4s {
	"Gaia"
	end
}
script 20 mmbn4s {
	"GaiaEX"
	end
}
script 21 mmbn4s {
	"Gaia+"
	end
}
script 22 mmbn4s {
	"Gaia+EX"
	end
}
script 23 mmbn4s {
	"GaiaMega"
	end
}
script 24 mmbn4s {
	"GaiaMegEX"
	end
}
script 25 mmbn4s {
	"Spikey"
	end
}
script 26 mmbn4s {
	"SpikeyEX"
	end
}
script 27 mmbn4s {
	"Spikey2"
	end
}
script 28 mmbn4s {
	"Spikey2EX"
	end
}
script 29 mmbn4s {
	"Spikey3"
	end
}
script 30 mmbn4s {
	"Spikey3EX"
	end
}
script 31 mmbn4s {
	"Shrimpy"
	end
}
script 32 mmbn4s {
	"ShrimpyEX"
	end
}
script 33 mmbn4s {
	"Shrimpy2"
	end
}
script 34 mmbn4s {
	"Shrmpy2EX"
	end
}
script 35 mmbn4s {
	"Shrimpy3"
	end
}
script 36 mmbn4s {
	"Shrmpy3EX"
	end
}
script 37 mmbn4s {
	"Boomer"
	end
}
script 38 mmbn4s {
	"BoomerEX"
	end
}
script 39 mmbn4s {
	"Gloomer"
	end
}
script 40 mmbn4s {
	"GloomerEX"
	end
}
script 41 mmbn4s {
	"Doomer"
	end
}
script 42 mmbn4s {
	"DoomerEX"
	end
}
script 43 mmbn4s {
	"Trumpy"
	end
}
script 44 mmbn4s {
	"Tuby"
	end
}
script 45 mmbn4s {
	"Tromby"
	end
}
script 46 mmbn4s {
	"MuteAnt"
	end
}
script 47 mmbn4s {
	"Xylos"
	end
}
script 48 mmbn4s {
	"TrumpEX"
	end
}
script 49 mmbn4s {
	"MagTect"
	end
}
script 50 mmbn4s {
	"MagTectEX"
	end
}
script 51 mmbn4s {
	"MagTec+"
	end
}
script 52 mmbn4s {
	"MagTec+EX"
	end
}
script 53 mmbn4s {
	"MagTecX"
	end
}
script 54 mmbn4s {
	"MagTecXEX"
	end
}
script 55 mmbn4s {
	"Melody"
	end
}
script 56 mmbn4s {
	"MelodyEX"
	end
}
script 57 mmbn4s {
	"Hellody"
	end
}
script 58 mmbn4s {
	"HellodyEX"
	end
}
script 59 mmbn4s {
	"Felony"
	end
}
script 60 mmbn4s {
	"FelonyEX"
	end
}
script 61 mmbn4s {
	"Dharma"
	end
}
script 62 mmbn4s {
	"DharmaEX"
	end
}
script 63 mmbn4s {
	"Karma"
	end
}
script 64 mmbn4s {
	"KarmaEX"
	end
}
script 65 mmbn4s {
	"Dogma"
	end
}
script 66 mmbn4s {
	"DogmaEX"
	end
}
script 67 mmbn4s {
	"Kilby"
	end
}
script 68 mmbn4s {
	"KilbyEX"
	end
}
script 69 mmbn4s {
	"Kilbur"
	end
}
script 70 mmbn4s {
	"KilburEX"
	end
}
script 71 mmbn4s {
	"Kilbo"
	end
}
script 72 mmbn4s {
	"KilboEX"
	end
}
script 73 mmbn4s {
	"Weather"
	end
}
script 74 mmbn4s {
	"Whomper"
	end
}
script 75 mmbn4s {
	"Winger"
	end
}
script 76 mmbn4s {
	"Wonder"
	end
}
script 77 mmbn4s {
	"Wither"
	end
}
script 78 mmbn4s {
	"WeathEX"
	end
}
script 79 mmbn4s {
	"Spidy"
	end
}
script 80 mmbn4s {
	"SpidyEX"
	end
}
script 81 mmbn4s {
	"Webby"
	end
}
script 82 mmbn4s {
	"WebbyEX"
	end
}
script 83 mmbn4s {
	"Arachy"
	end
}
script 84 mmbn4s {
	"ArachyEX"
	end
}
script 85 mmbn4s {
	"Lark"
	end
}
script 86 mmbn4s {
	"LarkEX"
	end
}
script 87 mmbn4s {
	"Bark"
	end
}
script 88 mmbn4s {
	"BarkEX"
	end
}
script 89 mmbn4s {
	"Tark"
	end
}
script 90 mmbn4s {
	"TarkEX"
	end
}
script 91 mmbn4s {
	"CirKill"
	end
}
script 92 mmbn4s {
	"CirKilEX"
	end
}
script 93 mmbn4s {
	"CirCrush"
	end
}
script 94 mmbn4s {
	"CirCrusEX"
	end
}
script 95 mmbn4s {
	"CirSmash"
	end
}
script 96 mmbn4s {
	"CirSmshEX"
	end
}
script 97 mmbn4s {
	"Moloko"
	end
}
script 98 mmbn4s {
	"MolokoEX"
	end
}
script 99 mmbn4s {
	"Milko"
	end
}
script 100 mmbn4s {
	"MilkoEX"
	end
}
script 101 mmbn4s {
	"Macko"
	end
}
script 102 mmbn4s {
	"MackoEX"
	end
}
script 103 mmbn4s {
	"Walla"
	end
}
script 104 mmbn4s {
	"WallaEX"
	end
}
script 105 mmbn4s {
	"Walland"
	end
}
script 106 mmbn4s {
	"WallndEX"
	end
}
script 107 mmbn4s {
	"Waldon"
	end
}
script 108 mmbn4s {
	"WaldonEX"
	end
}
script 109 mmbn4s {
	"Elmperor"
	end
}
script 110 mmbn4s {
	"Elmperor2"
	end
}
script 111 mmbn4s {
	"Elmperor3"
	end
}
script 112 mmbn4s {
	"Elmperor4"
	end
}
script 113 mmbn4s {
	"Elmperor5"
	end
}
script 114 mmbn4s {
	"ElmperoEX"
	end
}
script 115 mmbn4s {
	"BomBoy"
	end
}
script 116 mmbn4s {
	"BomBoyEX"
	end
}
script 117 mmbn4s {
	"BomWorkr"
	end
}
script 118 mmbn4s {
	"BomWrkEX"
	end
}
script 119 mmbn4s {
	"BomLabor"
	end
}
script 120 mmbn4s {
	"BomLabEX"
	end
}
script 121 mmbn4s {
	"WindBox"
	end
}
script 122 mmbn4s {
	"VacuumFan"
	end
}
script 123 mmbn4s {
	"WindBox2"
	end
}
script 124 mmbn4s {
	"VacuFan2"
	end
}
script 125 mmbn4s {
	"WindBox3"
	end
}
script 126 mmbn4s {
	"VacuFan3"
	end
}
script 127 mmbn4s {
	" "
	end
}
script 128 mmbn4s {
	"Roll"
	end
}
script 129 mmbn4s {
	"Rollα"
	end
}
script 130 mmbn4s {
	"Rollβ"
	end
}
script 131 mmbn4s {
	"RollΩ"
	end
}
script 132 mmbn4s {
	"GutsMan"
	end
}
script 133 mmbn4s {
	"GutsManα"
	end
}
script 134 mmbn4s {
	"GutsManβ"
	end
}
script 135 mmbn4s {
	"GutsManΩ"
	end
}
script 136 mmbn4s {
	"WindMan"
	end
}
script 137 mmbn4s {
	"WindManα"
	end
}
script 138 mmbn4s {
	"WindManβ"
	end
}
script 139 mmbn4s {
	"WindManΩ"
	end
}
script 140 mmbn4s {
	"SrchMan"
	end
}
script 141 mmbn4s {
	"SearchMnα"
	end
}
script 142 mmbn4s {
	"SearchMnβ"
	end
}
script 143 mmbn4s {
	"SearchMnΩ"
	end
}
script 144 mmbn4s {
	"FireMan"
	end
}
script 145 mmbn4s {
	"FireManα"
	end
}
script 146 mmbn4s {
	"FireManβ"
	end
}
script 147 mmbn4s {
	"FireManΩ"
	end
}
script 148 mmbn4s {
	"ThunMan"
	end
}
script 149 mmbn4s {
	"ThundrMnα"
	end
}
script 150 mmbn4s {
	"ThundrMnβ"
	end
}
script 151 mmbn4s {
	"ThundrMnΩ"
	end
}
script 152 mmbn4s {
	"ProtoMn"
	end
}
script 153 mmbn4s {
	"ProtoManα"
	end
}
script 154 mmbn4s {
	"ProtoManβ"
	end
}
script 155 mmbn4s {
	"ProtoManΩ"
	end
}
script 156 mmbn4s {
	"NumbrMn"
	end
}
script 157 mmbn4s {
	"NumberMnα"
	end
}
script 158 mmbn4s {
	"NumberMnβ"
	end
}
script 159 mmbn4s {
	"NumberMnΩ"
	end
}
script 160 mmbn4s {
	"MetalMn"
	end
}
script 161 mmbn4s {
	"MetalManα"
	end
}
script 162 mmbn4s {
	"MetalManβ"
	end
}
script 163 mmbn4s {
	"MetalManΩ"
	end
}
script 164 mmbn4s {
	"JunkMan"
	end
}
script 165 mmbn4s {
	"JunkManα"
	end
}
script 166 mmbn4s {
	"JunkManβ"
	end
}
script 167 mmbn4s {
	"JunkManΩ"
	end
}
script 168 mmbn4s {
	"AquaMan"
	end
}
script 169 mmbn4s {
	"AquaManα"
	end
}
script 170 mmbn4s {
	"AquaManβ"
	end
}
script 171 mmbn4s {
	"AquaManΩ"
	end
}
script 172 mmbn4s {
	"WoodMan"
	end
}
script 173 mmbn4s {
	"WoodManα"
	end
}
script 174 mmbn4s {
	"WoodManβ"
	end
}
script 175 mmbn4s {
	"WoodManΩ"
	end
}
script 176 mmbn4s {
	"TopMan"
	end
}
script 177 mmbn4s {
	"TopManα"
	end
}
script 178 mmbn4s {
	"TopManβ"
	end
}
script 179 mmbn4s {
	"TopManΩ"
	end
}
script 180 mmbn4s {
	"ShadeMan"
	end
}
script 181 mmbn4s {
	"ShadeManα"
	end
}
script 182 mmbn4s {
	"ShadeManβ"
	end
}
script 183 mmbn4s {
	"ShadeManΩ"
	end
}
script 184 mmbn4s {
	"BurnerMn"
	end
}
script 185 mmbn4s {
	"BurnerMnα"
	end
}
script 186 mmbn4s {
	"BurnerMnβ"
	end
}
script 187 mmbn4s {
	"BurnerMnΩ"
	end
}
script 188 mmbn4s {
	"ColdMan"
	end
}
script 189 mmbn4s {
	"ColdManα"
	end
}
script 190 mmbn4s {
	"ColdManβ"
	end
}
script 191 mmbn4s {
	"ColdManΩ"
	end
}
script 192 mmbn4s {
	"SparkMan"
	end
}
script 193 mmbn4s {
	"SparkManα"
	end
}
script 194 mmbn4s {
	"SparkManβ"
	end
}
script 195 mmbn4s {
	"SparkManΩ"
	end
}
script 196 mmbn4s {
	"HeelNavi"
	end
}
script 197 mmbn4s {
	"HeelNaviα"
	end
}
script 198 mmbn4s {
	"HeelNaviβ"
	end
}
script 199 mmbn4s {
	"HeelNaviΩ"
	end
}
script 200 mmbn4s {
	"NormlNavα"
	end
}
script 201 mmbn4s {
	"NormlNavβ"
	end
}
script 202 mmbn4s {
	"NormlNavΩ"
	end
}
script 203 mmbn4s {
	"NormlNavi"
	end
}
script 204 mmbn4s {
	"HeelNavi"
	end
}
script 205 mmbn4s {
	"HeelNaviα"
	end
}
script 206 mmbn4s {
	"HeelNaviβ"
	end
}
script 207 mmbn4s {
	"HeelNaviΩ"
	end
}
script 208 mmbn4s {
	"LaserMan"
	end
}
script 209 mmbn4s {
	"LaserManα"
	end
}
script 210 mmbn4s {
	"LaserManβ"
	end
}
script 211 mmbn4s {
	"LaserManΩ"
	end
}
script 212 mmbn4s {
	"KendoMan"
	end
}
script 213 mmbn4s {
	"KendoManα"
	end
}
script 214 mmbn4s {
	"KendoManβ"
	end
}
script 215 mmbn4s {
	"KendoManΩ"
	end
}
script 216 mmbn4s {
	"VideoMan"
	end
}
script 217 mmbn4s {
	"VideoManα"
	end
}
script 218 mmbn4s {
	"VideoManβ"
	end
}
script 219 mmbn4s {
	"VideoManΩ"
	end
}
script 220 mmbn4s {
	"NavShadow"
	end
}
script 221 mmbn4s {
	"NavShadoΩ"
	end
}
script 222 mmbn4s {
	"NavBlack"
	end
}
script 223 mmbn4s {
	"NavBlackΩ"
	end
}
script 224 mmbn4s {
	"Duo"
	end
}
script 225 mmbn4s {
	"Duoα"
	end
}
script 226 mmbn4s {
	"Duoβ"
	end
}
script 227 mmbn4s {
	"DuoΩ"
	end
}
script 228 mmbn4s {
	"Bass"
	end
}
script 229 mmbn4s {
	"BassΩ"
	end
}
script 230 mmbn4s {
	"BassXX"
	end
}
script 231 mmbn4s {
	end
}
script 232 mmbn4s {
	end
}
script 233 mmbn4s {
	end
}
script 234 mmbn4s {
	end
}
script 235 mmbn4s {
	end
}
script 236 mmbn4s {
	end
}
script 237 mmbn4s {
	end
}
script 238 mmbn4s {
	end
}
script 239 mmbn4s {
	end
}
script 240 mmbn4s {
	"MegaManDS"
	end
}
script 241 mmbn4s {
	"RollDS"
	end
}
script 242 mmbn4s {
	"GutsManDS"
	end
}
script 243 mmbn4s {
	"WindManDS"
	end
}
script 244 mmbn4s {
	"SrchManDS"
	end
}
script 245 mmbn4s {
	"FireManDS"
	end
}
script 246 mmbn4s {
	"ThunManDS"
	end
}
script 247 mmbn4s {
	"ProtoMnDS"
	end
}
script 248 mmbn4s {
	"NumbrMnDS"
	end
}
script 249 mmbn4s {
	"MetalMnDS"
	end
}
script 250 mmbn4s {
	"JunkManDS"
	end
}
script 251 mmbn4s {
	"AquaManDS"
	end
}
script 252 mmbn4s {
	"WoodManDS"
	end
}
@archive 748A14
@size 24

script 0 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's start
	virus busting!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Operate away!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	Leave it to me!
	Here we go,MegaMan!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Umm… To battle
	viruses…
	"""
	keyWait
		any = false
	clearMsg
	"""
	…first I've gotta
	send Chip Data to
	MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can select
	BattleChips in
	this Custom Window.
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Here are the chips
	I can select. Hmm…
	Any good ones?
	"""
	keyWait
		any = false
	clearMsg
	"""
	The chips in the
	folder I've equipped
	are shown here.
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I see the currently
	highlighted chip's
	data here!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	This is its Attack.
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	OK,we're all set!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Now this is crucial.
	This is the viruses'
	HP,or hit points.
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	HP shows how much
	damage it can take.
	Gotta pay attention!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	"""
	Remember,Lan,you can
	usually only send data
	for 1 chip per turn,
	"""
	keyWait
		any = false
	clearMsg
	"""
	unless they're the
	same type of chip!
	"""
	keyWait
		any = false
	clearMsg
	"""
	We have 2 Cannons,
	so let's go with those!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	That's a no-brainer!
	I got it down!
	"""
	keyWait
		any = false
	clearMsg
	"""
	[SwitchA] selects the chip
	to send.
	"""
	keyWait
		any = false
	clearMsg
	"""
	[SwitchR] shows information
	about the chip.
	"""
	keyWait
		any = false
	clearMsg
	"""
	And [SwitchL] is used for
	escaping.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But this is no time
	to run away!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'd better send chip
	data to MegaMan now!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	There are 2 Cannons,
	so I can select 1
	more!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you don't have
	to cancel that last
	move,do you?
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,send 1 more
	Cannon!
	"""
	keyWait
		any = false
	clearMsg
	"""
	We can delete the
	viruses in a flash!!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! You haven't
	selected any chips!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can fight with my
	MegaBuster alone,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but some chip data
	would be a big help!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Got any good chips?
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Don't run!
	There's no breakfast
	without the oven!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Now that I've
	chosen the chip data,
	I just select OK!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Here we go,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The chips you've
	selected are fine!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Hurry up and send
	the data!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,I sent the
	chip data! Time to
	start virus busting!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's on you to
	operate me now,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can move up,down,
	left,and right on
	the battlefield.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Fire the MegaBuster
	with [SwitchB]. It's weak
	but fast.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But I'm sure you
	remember that!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Here's my HP!
	"""
	keyWait
		any = false
	clearMsg
	"""
	I'll be deleted if
	this reaches 0!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The chip data you
	just sent is shown
	above my head.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Use chips with [SwitchA]!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But be careful!
	Each one can be
	used only once!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If any viruses remain,
	and you've used up
	all your chips…
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 20
}
script 20 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	I know,I know!
	The CustGauge,right?
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The CustGauge
	gradually fills up
	over time.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Once it's full,I can
	reopen the Custom
	Screen with [SwitchL]/[SwitchR].
	"""
	keyWait
		any = false
	clearMsg
	"""
	I got the battle
	basics down pat!
	"""
	keyWait
		any = false
	clearMsg
	"""
	But enough already.
	Let's bust these
	viruses!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's select
	a Cannon!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Cancel with [SwitchB]
	and reselect!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Come on,Lan! Let's
	select a Cannon!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Cancel with [SwitchB]
	and reselect!
	"""
	keyWait
		any = false
	end
}
@archive 74914C
@size 18

script 0 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	All right,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Now let's use both
	support and weapon
	chips in our attack!
	"""
	keyWait
		any = false
	clearMsg
	"""
	That AreaGrab chip
	gives me more room
	to move around.
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Using AreaGrab with
	WideSwrd is a very
	effective strategy.
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Huh? I thought you
	could only select the
	same chips together.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 3
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	"""
	Come on,Lan!
	You forgot already?
	Take a look at this!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Whoops! I completely
	forgot!
	"""
	keyWait
		any = false
	clearMsg
	"""
	These letters are the
	chip code. Different
	types of chips can
	"""
	keyWait
		any = false
	clearMsg
	"""
	be selected together
	as long as they
	have the same code!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's see…
	AreaGrab and WideSwrd
	have the same code,
	"""
	keyWait
		any = false
	clearMsg
	"""
	so I can select
	them together!
	"""
	keyWait
		any = false
	clearMsg
	"""
	And there are also
	wildcard-like chips
	with an "*" code.
	"""
	keyWait
		any = false
	clearMsg
	"""
	I can select them
	with any other code!
	"""
	keyWait
		any = false
	clearMsg
	"""
	There aren't any "*"
	ones now,so I'll try
	it out with "S"!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Attack with AreaGrab
	and WideSwrd!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That's AreaGrab!
	OK,now use WideSwrd!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,select AreaGrab
	first! Cancel with [SwitchB],
	OK?
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Select AreaGrab,Lan!
	Use [SwitchB] to cancel.
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Select the AreaGrab
	chip first,Lan!
	"""
	keyWait
		any = false
	clearMsg
	"""
	If you ever select
	the wrong chip,
	cancel with [SwitchB]!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you got the
	order wrong.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Cancel by pressing
	[SwitchB] twice.
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Ready! Now I just
	select OK to send
	the data to MegaMan.
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,there's no
	need to cancel!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,there's no need
	to cancel! Send the
	chip data quickly!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This time,let's send
	a WideSwrd along
	with the AreaGrab.
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Don't run! We gotta
	fix the oven!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,
	I sent the data!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's score a combo!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	OK! Time for our
	combo attack!
	"""
	keyWait
		any = false
	clearMsg
	"""
	By using AreaGrab
	with [SwitchA],
	"""
	keyWait
		any = false
	clearMsg
	"""
	part of the viruses'
	area will become
	ours to use!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Then we can move up
	and use WideSwrd!
	"""
	keyWait
		any = false
	clearMsg
	"""
	This is a powerful
	attack,but remember,
	"""
	keyWait
		any = false
	clearMsg
	"""
	I have to get close to
	a virus to strike it!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let's give it a try!
	"""
	keyWait
		any = false
	end
}
@archive 7496AC
@size 14

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Got a moment,Lan?
	I have something you
	might like to know.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Let me tell you
	about Counter
	and Full Synchro.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	Huh? What are those?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	"""
	Take a look at the
	"Emotion Window" here.
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	It shows your Navi's
	emotional state.
	"""
	keyWait
		any = false
	clearMsg
	"""
	By looking here,
	"""
	keyWait
		any = false
	clearMsg
	"""
	you can tell how well
	you're operating your
	Navi.
	"""
	keyWait
		any = false
	clearMsg
	"""
	At first,your Navi
	will be calm,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but if you operate him
	poorly and he keeps
	taking damage,
	"""
	keyWait
		any = false
	clearMsg
	"""
	he'll be in an
	anxious mood.
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Conversely,operating
	a Navi skillfully
	will put you into
	"""
	keyWait
		any = false
	clearMsg
	"""
	Full Synchro,a state
	where Navi and
	operator act as one.
	"""
	keyWait
		any = false
	clearMsg
	"""
	This improves focus.
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What do you mean by
	skilled operating…?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 6
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	"""
	If you avoid attacks
	and score your own
	hits using chips,
	"""
	keyWait
		any = false
	clearMsg
	"""
	you will go Full
	Synchro naturally.
	"""
	keyWait
		any = false
	clearMsg
	"""
	But the most effective
	way to attain it
	is with a Counter.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	Counter?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 8
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	"""
	Countering means
	hitting an enemy
	with a chip attack
	"""
	keyWait
		any = false
	clearMsg
	"""
	right when that enemy
	is about to attack.
	"""
	keyWait
		any = false
	clearMsg
	"""
	They'll be stunned,
	and won't be able to
	move for a bit.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 9
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	I get it.
	It surprises them!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 10
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	"""
	During Full Synchro,
	your next chip will
	have x2 Attack power,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and enemies will
	flash to show when
	you should Counter.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Thus,you can maintain
	x2 chip damage if you
	keep up Counters!
	"""
	keyWait
		any = false
	clearMsg
	"""
	OK… This is a good
	opportunity to get
	some practice.
	"""
	keyWait
		any = false
	clearMsg
	"""
	And since it's just
	practice,we'll start
	in Full Synchro.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Use a chip attack
	when the enemy
	flashes!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Were you able to
	perform a Counter?
	"""
	keyWait
		any = false
	clearMsg
	"""
	You don't need
	to go for a Counter
	every single time,
	"""
	keyWait
		any = false
	clearMsg
	"""
	but if you get it down,
	I think you'll find
	it very effective.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Oh,I almost forgot…
	"""
	keyWait
		any = false
	clearMsg
	"""
	It won't work with
	chips that stop time
	such as AreaGrab.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Remember to use the
	right chip at the
	right time.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 12
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	Thanks,Dad!
	Counter and Full
	Synchro… How cool!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	No need to run away.
	Let's continue.
	"""
	keyWait
		any = false
	end
}
@archive 749B60
@size 13

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	To use DublSoul,you
	must first sacrifice a
	chip matching the soul.
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 1
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	Sacrifice? You mean,
	you discard it for the
	rest of the battle?
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 2
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Correct. Right now,
	MegaMan can unite
	with GutsSoul.
	"""
	keyWait
		any = false
	clearMsg
	"""
	GutsMan's a powerful
	soul that destroys
	panels outright.
	"""
	keyWait
		any = false
	clearMsg
	"""
	By offering a panel-
	destroying chip like
	CrakOut,you can unite!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Here's how to do it.
	First,select CrakOut.
	"""
	keyWait
		any = false
	end
}
script 3 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Next,select the
	Unite command.
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Try it,Lan.
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Let's practice by
	selecting "CrakOut."
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	No,select "CrakOut."
	Cancel,and then
	select again.
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,you forgot the
	Unite command!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	Lan,there's no need
	to cancel.
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	No need to run away.
	Let's continue.
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	See? That's how a
	DublChip is made.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Selecting OK will
	now automatically
	activate DublSoul!
	"""
	keyWait
		any = false
	clearMsg
	"""
	GutsSoul gives +30
	Attack to \[None\] and
	panel-breaking chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Your PwrAtk from
	holding [SwitchB] will
	become GutPunch,
	"""
	keyWait
		any = false
	clearMsg
	"""
	and then pressing
	[SwitchB] rapidly will
	fire the GutsMGun.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Give it a try!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	That's DublSoul!
	Mastering it will
	make you stronger.
	"""
	keyWait
		any = false
	clearMsg
	"""
	However,there are a
	few restrictions
	on uniting.
	"""
	keyWait
		any = false
	clearMsg
	"""
	First,you can't
	sacrifice Regular
	Chips.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Second,you can only
	unite once with the
	same soul per battle.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Third,DublSoul only
	lasts for 3 turns.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Consider this before
	you use DublSoul!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Dad
	msgOpen
	"""
	No need to cancel.
	"""
	keyWait
		any = false
	end
}
@archive 749F30
@size 256

script 0 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 1 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 2 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 3 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cannon to
	attack
	1 enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 4 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Knocks
	enemy
	back 1
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 5 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Snowstorm
	attack!
	Ice panel
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 6 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firestorm
	attack!
	Magma pnl
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 7 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MuteAnt
	to blind
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 8 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	8-hit
	whirlwind
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 9 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 10 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 11 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires 3sq
	shotgun
	blast!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 12 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 13 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 14 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebeam
	2sq ahead
	3sq long!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 15 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-shot
	pierces
	1sq past!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 16 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5-shot
	pierces
	1sq past!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 17 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	7-shot
	pierces
	1sq past!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Creates
	a large
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	1 square
	behind
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	2 diag.
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	up,down
	on hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	1 square
	behind
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	2 diag.
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 24 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explodes
	up,down
	on hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 25 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on magma!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 26 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on ice!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 27 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A static
	blast 2sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 28 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Enemies'
	HP set to
	target's
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 29 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb 3
	squares
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 30 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	multi-hit
	bomb 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 31 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	multi-hit
	bomb 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 32 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hold for
	2x3-range
	sunbeam
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 33 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hold for
	2x3-range
	sunbeam
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 34 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hold for
	2x3-range
	sunbeam
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 35 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 36 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 37 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Shocks an
	enemy
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 38 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 39 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 40 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	sonic
	blast
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 41 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bug-bomb
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 42 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Electric
	blast!
	Crack pnl
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 43 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Radial
	spores!
	Grass pnl
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 44 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Breaks
	3rd panel
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 45 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Geyser
	from hole
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 46 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Firebomb
	hits 3rd
	sq ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 47 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Opens a
	pitfall
	trap
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 48 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	1sq range
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 49 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	3sq wide
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 50 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	2sq range
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 51 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	3sq wide
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 52 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cuts enmy
	in front!
	2sq range
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 53 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blow enmy
	in front!
	3sq wide
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 54 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cust
	Gauge=
	Atk Str
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 55 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A magical
	shifting
	sword
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 56 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut while
	[SwitchA]'s held!
	
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 57 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Paralyzng
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 58 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Paralyzng
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 59 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Paralyzng
	electric
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 60 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 61 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 62 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Counter-
	attack to
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 63 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 64 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 65 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ricochet
	attack to
	right
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 66 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	w/ Button
	to fire
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 67 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	w/ Button
	to fire
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 68 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	w/ Button
	to fire
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 69 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 70 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 71 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launch 2
	fangs up
	and down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 72 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web over
	top row
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 73 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web over
	middl row
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 74 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stretches
	web over
	bottm row
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 75 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 76 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 77 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Boomerang
	encircles
	field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 78 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attack
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 79 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attack
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 80 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lance
	attack
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 81 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lances
	through
	back line
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 82 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DarkHole
	appears
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 83 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WindBox
	blows at
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 84 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	VacuumFan
	pulls
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 85 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 86 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 87 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places
	BoyBom in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 88 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 89 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 90 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	enemy's
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 91 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	1 panel
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 92 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	2 panels
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 93 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Destroys
	3 panels
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 94 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cursor
	destroys
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 95 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gel attck
	steals a
	panel!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 96 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Snake frm
	hole in
	your area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 97 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	An area-
	wide time
	bomb
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 98 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	mine in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 99 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	rock cube
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 100 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Take no
	dmg for a
	while
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 101 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Confuses
	enemies
	w/ music
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 102 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Paralyzes
	enemies
	w/ music
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 103 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws
	VDoll 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 104 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 105 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 106 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hammr atk
	smashes
	in front!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 107 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	10HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 108 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	30HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 109 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	50HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 110 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	80HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 111 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	120HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 112 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	150HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 113 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	200HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 114 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	300HP
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 115 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Recovers
	HP of
	objects
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 116 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Steals 1
	enemy
	square!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 117 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Steals
	left edge
	from enmy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 118 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	stolen
	panels!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 119 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	stolen
	panels!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 120 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	temporary
	slow-down
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 121 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	temporary
	speed-up
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 122 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fix your
	area's
	panels
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 123 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cracks
	all panls
	on screen
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 124 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Breaks
	all empty
	panels
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 125 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Turns all
	panels to
	swamp
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 126 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on grass!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 127 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+10 for
	next chip
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 128 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-sq atk
	Powerful
	on pitfal
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 129 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blinds
	enemy w/
	light
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 130 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 131 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 132 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 Molokos
	charge
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 133 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Invisible
	for a
	while
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 134 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attack
	frm under
	ground
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 135 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	10 HP of
	damage
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 136 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	100 HP of
	damage
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 137 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Nullifies
	200 HP of
	damage
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 138 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Wind blws
	off aura,
	barriers
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 139 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Creates a
	HolyPanl
	in front
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 140 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Trap enmy
	Fire atks
	punished
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 141 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Trap enmy
	Watr atks
	punished
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 142 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Trap enmy
	Elec atks
	punished
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 143 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Trap enmy
	Wood atks
	punished
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 144 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Enemy's
	Navi chip
	betrays
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 145 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throwing
	star when
	hit taken
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 146 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Retaliate
	for sword
	damage
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 147 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Damages
	enemy in
	recovery
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 148 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Duplicate
	damage to
	2nd enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 149 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+10 for
	selected
	atk chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 150 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+20 for
	selected
	Navi chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 151 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 152 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 153 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollArrow
	destroys
	chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 154 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutPunch
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 155 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutStrght
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 156 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Launches
	GutImpact
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 157 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 158 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 159 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rushing
	causes an
	explosion
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 160 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 161 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 162 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws a
	bomb at
	the enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 163 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5 Meteors
	on nearst
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 164 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5 Meteors
	on nearst
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 165 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5 Meteors
	on nearst
	enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 166 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 167 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 168 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Thunder
	strikes
	obstacles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 169 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 170 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 171 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Cut twice
	once wide
	once long
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 172 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-shot
	ball,Atk=
	HP digits
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 173 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	4-shot
	ball,Atk=
	HP digits
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 174 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	5-shot
	ball,Atk=
	HP digits
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 175 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 176 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 177 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Gear
	crushes
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 178 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lifts
	panel and
	throws it
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 179 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws
	panels in
	frnt/back
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 180 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throws 4
	srounding
	panels
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 181 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 182 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 183 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	AquaTowrs
	frm crack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 184 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 185 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 186 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Raises
	WoodTowrs
	frm grass
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 187 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 188 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 189 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 190 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 191 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 192 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 193 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 194 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 195 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 196 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DARKCHIP
	CREATED
	BY DESIRE
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 197 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call1
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 198 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call2
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 199 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call3
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 200 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Treasure-
	Call4
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 201 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repels
	all attck
	under 200
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 202 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Power=
	HP lost
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 203 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Statue
	retaliate
	when hit
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 204 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Anubis
	poisons
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 205 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+30 for
	selected
	atk chip
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 206 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Repairs &
	removes
	bugs
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 207 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	+20 for
	next chip
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 208 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Chng all
	own panel
	to holy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 209 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CustGauge
	instantly
	refills
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 210 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Drop many
	meteor on
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 211 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires
	bugs into
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 212 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	More dmg
	if enemy
	has chips
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 213 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Powerful
	ovr swamp
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 214 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Wings
	descend
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 215 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	stone
	statue
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 216 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Turn your
	row into
	DarkHoles
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 217 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Advanced
	shifting
	sword
	"""
	keyWait
		any = true
	end
	keyWait
		any = true
	end
	msgCloseQuick
}
script 218 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Reploid
	swrd cuts
	3 times
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 219 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fires a
	spread
	sunbeam
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 220 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	12-shot
	vulcan
	cannon
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 221 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 222 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 223 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Attcks an
	enmy,then
	heals you
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 224 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 225 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 226 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsHammr
	destroys
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 227 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	spins
	over 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 228 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	spins
	over 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 229 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Whirlwind
	spins
	over 3sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 230 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 231 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 232 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Stop sght
	and fire
	5 shots
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 233 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	pierce
	forward
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 234 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	pierce
	forward
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 235 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	pierce
	forward
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 236 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	on column
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 237 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	on column
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 238 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Lightning
	on column
	3sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 239 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 240 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 241 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rush up
	to enemy
	and slice
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 242 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rndm bomb
	3 ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 243 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rndm bomb
	3 ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 244 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Rndm bomb
	3 ahead!
	Hits 9sq
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 245 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 246 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 247 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Iron fist
	crushes
	1sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 248 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 249 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 250 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Throw any
	objects
	on field
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 251 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 252 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 253 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Water gun
	sprays
	2sq ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 254 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 255 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74C670
@size 113

script 0 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodTowr
	pierce in
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 1 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Diagonal
	tops 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 2 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Diagonal
	tops 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 3 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Diagonal
	tops 3sq
	ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 4 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 5 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 6 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	CrshNoise
	attck all
	direction
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 7 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-directn
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 8 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-directn
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 9 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3-directn
	burnr fry
	2 ahead!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 10 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 11 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 12 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Ices over
	all and
	slides!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 13 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 14 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 15 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SparkWave
	blinds
	enemy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 16 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 17 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 18 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A laser
	pierces
	1 thru!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 19 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 slashes
	at enmy's
	frnt/back
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 20 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 slashes
	at enmy's
	frnt/back
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 21 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 slashes
	at enmy's
	frnt/back
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 22 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Tape slam
	attack
	2sq in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 23 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Tape slam
	attack
	2sq in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 24 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Tape slam
	attack
	2sq in
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 25 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 26 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 27 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 28 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 29 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 30 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 31 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 32 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 33 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 34 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 35 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 36 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 37 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 38 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 39 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 40 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 41 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 42 mmbn4-lc {
	textSpeed
		delay = 0
	msgCloseQuick
}
script 43 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 44 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 45 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Buster
	rake half
	enmy area
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 46 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hold [SwitchA] to
	powr swrd
	3 stages
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 47 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Make enmy
	buggy!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 48 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A RedSun
	bombards
	3 ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 49 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Enmy chip
	is no use
	while red
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 50 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A ring
	that hits
	4 times
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 51 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Holy shot
	sucks in
	HolyPanl!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 52 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Darkness
	barrier,
	comes bck
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 53 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Blue moon
	drains
	3 ahead
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 54 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	EvilChip!
	Gets powr
	with turn
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 55 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	ereaderDesc
		data = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 56 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	ereaderDesc
		data = 1
	keyWait
		any = true
	end
	msgCloseQuick
}
script 57 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 58 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 59 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 60 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 61 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 62 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 63 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
script 64 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Fusion
	of dark
	warriors!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 65 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explosion
	by Wide
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 66 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Bubbles
	by Wide
	attack
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 67 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 68 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 69 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A cannon
	driven by
	GigaPower
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 70 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 71 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 72 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A 3-hit
	wide shot
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 73 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	of Hades
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 74 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	of Hades
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 75 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Flames
	of Hades
	in cross!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 76 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rangs atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 77 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rangs atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 78 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	3 boome-
	rangs atk
	enemies
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 79 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Onslaught
	of fangs
	alongside
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 80 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Onslaught
	of fangs
	alongside
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 81 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Onslaught
	of fangs
	alongside
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 82 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hockey
	puck
	ricochet
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 83 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hockey
	puck
	ricochet
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 84 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Hockey
	puck
	ricochet
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 85 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 86 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 87 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Powerful
	magnet
	attack!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 88 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Big sword
	2 long
	3 wide!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 89 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	A sun
	generator
	fries all
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 90 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Sets a
	strong
	TimeBom
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 91 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Places a
	poisoned
	Pharaoh
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 92 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Assassin
	who takes
	out enemy
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 93 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	Explosion
	spreads
	by 1sq!
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 94 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 95 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	msgCloseQuick
}
script 96 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MegaSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 97 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	RollSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 98 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	GutsSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 99 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WindSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 100 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	SrchSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 101 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	FireSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 102 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ThunSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 103 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	ProtSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 104 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	NumSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 105 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	MetlSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 106 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	JunkSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 107 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	AquaSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 108 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	WoodSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 109 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DuoSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 110 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	BassSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 111 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	DarkSoul
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
script 112 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	"""
	 
	"""
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74D3A4
@size 1

script 0 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 74D3B4
@size 1

script 0 mmbn4-lc {
	msgOpenQuick
	textSpeed
		delay = 0
	keyWait
		any = true
	end
	msgCloseQuick
}
@archive 753658
@size 51

script 0 mmbn4s {
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm sending additional
	chips! Just hang on
	for 1 turn!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4457
		jumpIfTrue = 49
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,should we run?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	OK  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	No!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 3 mmbn4-lc {
	checkFlag
		flag = 4457
		jumpIfTrue = 50
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	Yes!
	We got away!
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	No!
	We can't escape…
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 8
		padZeros = false
		padLeft = true
	"""
	 [z]
	"""
	end
}
script 6 mmbn4s {
	printBuffer
		buffer = 0
		minLength = 3
		padZeros = false
		padLeft = true
	end
}
script 7 mmbn4s {
	"""
	      HP+
	"""
	end
}
script 8 mmbn4s {
	"""
	     HP+
	"""
	end
}
script 9 mmbn4s {
	"""
	    HP+
	"""
	end
}
script 10 mmbn4s {
	"""
	    MAX HP
	"""
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Communication error!
	Canceling battle…
	"""
	keyWait
		any = false
	end
	"""
	4
	"""
}
script 12 mmbn4s {
	"""
	VS
	"""
	end
}
script 45 mmbn4s {
	"""
	DOUBLE DELETE!
	"""
	end
}
script 46 mmbn4s {
	"""
	TRIPLE DELETE!
	"""
	end
}
script 47 mmbn4s {
	"""
	 BugFrag 
	"""
	end
}
script 48 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Communication error!
	Canceling battle…
	Error Code 
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = false
	keyWait
		any = false
	end
	"""
	4
	"""
}
script 49 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wish Lan were
	here! What'll I do?
	
	"""
	positionOptionHorizontal
		width = 11
	option
		brackets = false
		left = 0
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Run  
	"""
	option
		brackets = false
		left = 0
		right = 1
		up = 1
		down = 1
	space
		count = 1
	"""
	Fight!
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 50 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	.
	"""
	wait
		frames = 18
	"""
	Yes!
	I got away!
	"""
	keyWait
		any = false
	end
}
@archive 7542B4
@size 17

script 0 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 1
	controlLock
	textSpeed
		delay = 1
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack in!!
	"""
	wait
		frames = 10
	"""
	
	MegaMan,Execute!
	"""
	wait
		frames = 30
	controlUnlock
	end
}
script 1 mmbn4-lc {
	flagSet
		flag = 4478
	msgOpen
	"""
	MegaMan isn't in
	the PET…
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	checkChapter
		lower = 0
		upper = 0
		jumpIfInRange = continue
		jumpIfOutOfRange = 0
	checkFlag
		flag = 798
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Mom looks upset…
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkFlag
		flag = 799
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's do that
	some other time!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	checkFlag
		flag = 1029
		jumpIfTrue = continue
		jumpIfFalse = 0
	checkFlag
		flag = 1030
		jumpIfTrue = 15
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in later,Lan!
	Mom's in trouble!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	checkChapter
		lower = 12
		upper = 12
		jumpIfInRange = continue
		jumpIfOutOfRange = 0
	checkFlag
		flag = 45
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	your email!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	checkFlag
		flag = 46
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Dad sent you mail!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	checkFlag
		flag = 1099
		jumpIfTrue = 0
		jumpIfFalse = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wait! Didn't Mom
	say something about
	your PC…?
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	checkFlag
		flag = 2821
		jumpIfTrue = 0
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 0
		jumpIfGreater = 0
		jumpIfLess = continue
	flagSet
		flag = 4478
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	First off,Lan,
	we have to find the
	"
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
@archive 754474
@size 12

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,jack out?
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	end
}
script 1 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	"""
	OK! Roger that!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I can't jack out…!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we've got to
	stop this top!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = Roll
	msgOpen
	"""
	Mega! Where are
	you going?! Are you
	running away?!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! This is no
	time to jack out!
	"""
	keyWait
		any = false
	flagSet
		flag = 4478
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = NormalNaviBrown
	msgOpen
	"""
	Hey! It's practice
	time! Sit still!
	"""
	flagSet
		flag = 4478
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Tamako
	msgOpen
	"""
	No jacking out yet!
	"""
	flagSet
		flag = 4478
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	If I jack out now,
	the fire may spread!
	Should I really?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"""
	Yes  
	"""
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"""
	No
	"""
	select
		default = 1
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = 1,
			jump = continue,
			jump = continue
		]
	end
}
@archive 7545EC
@size 34

script 0 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 14
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Where to?
	([SwitchDPad]: Move Cursor)
	([SwitchR]: Description)
	"""
	waitHold
}
script 1 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 15
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Let's go!
	"""
	waitHold
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 16
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Going back!
	"""
	wait
		frames = 60
	end
}
script 3 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 17
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Our home,ACDC Town.
	You shouldn't need
	a description!
	"""
	waitHold
}
script 4 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 18
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	This is ElecTown.
	It's an area full of
	electrical stores.
	"""
	waitHold
}
script 5 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 19
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	It's the DenDome.
	40000 people can
	fit inside!
	"""
	waitHold
}
script 6 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 20
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Castillo! It's like
	a castle in the sky,
	hence the name!
	"""
	waitHold
}
script 7 mmbn4-lc {
	checkFlag
		flag = 4477
		jumpIfTrue = continue
		jumpIfFalse = 21
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Den Airport.
	The world's just
	a flight away!
	"""
	waitHold
}
script 8 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	C'mon,that's our
	country - Electopia!
	"""
	waitHold
}
script 9 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Netopia!
	Its historic towns
	are spectacular!
	"""
	waitHold
}
script 10 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Yumland! Its ancient
	ruins are preserved
	even today!
	"""
	waitHold
}
script 11 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	NetFrica! Famous for
	its abundant natural
	beauty!
	"""
	waitHold
}
script 12 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	Sharo! A frigid land
	where snow falls all
	year round!
	"""
	waitHold
}
script 13 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	NAXA! The world's
	foremost space
	research center!
	"""
	waitHold
}
script 14 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	GO WHERE?
	([SwitchDPad]: Move Cursor)
	([SwitchR]: Description)
	"""
	waitHold
}
script 15 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	NOW DEPARTING.
	"""
	waitHold
}
script 16 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	RETURNING…
	"""
	wait
		frames = 60
	end
}
script 17 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ACDC TOWN.
	A SUBURB OF DENCITY.
	"""
	waitHold
}
script 18 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	ELECTOWN. A DISTRICT
	FOR ELECTRONICS
	STORES.
	"""
	waitHold
}
script 19 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	DENDOME. MAXIMUM
	CAPACITY: 40000
	PEOPLE.
	"""
	waitHold
}
script 20 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	CASTILLO. DENCITY'S
	FIRST THEME PARK.
	"""
	waitHold
}
script 21 mmbn4-lc {
	positionText
		left = 59
		top = 116
		arrowDistance = 3
	textSpeed
		delay = 0
	"""
	DEN AIRPORT.
	ELECTOPIA'S GATEWAY
	TO THE SKY.
	"""
	waitHold
}
script 22 mmbn4s {
	"""
	     ACDC Town
	"""
	end
}
script 23 mmbn4s {
	"""
	ElecTown
	"""
	end
}
script 24 mmbn4s {
	"""
	DenDome
	"""
	end
}
script 25 mmbn4s {
	"""
	Castillo
	"""
	end
}
script 26 mmbn4s {
	"""
	     Airport
	"""
	end
}
script 27 mmbn4s {
	"""
	Electopia
	"""
	end
}
script 28 mmbn4s {
	"""
	Netopia
	"""
	end
}
script 29 mmbn4s {
	"""
	     Yumland
	"""
	end
}
script 30 mmbn4s {
	"""
	NetFrica
	"""
	end
}
script 31 mmbn4s {
	"""
	     Sharo
	"""
	end
}
script 32 mmbn4s {
	"""
	     NAXA
	"""
	end
}
script 33 mmbn4s {
	"""
	Test
	"""
	end
}
@archive 7548F4
@size 192

script 0 mmbn4s {
	"PET"
	end
}
script 1 mmbn4s {
	"Earbuds"
	end
}
script 2 mmbn4s {
	"RcvPatch"
	end
}
script 3 mmbn4s {
	"CyberBat"
	end
}
script 4 mmbn4s {
	"???Data"
	end
}
script 5 mmbn4s {
	"BootDatA"
	end
}
script 6 mmbn4s {
	"BootDatB"
	end
}
script 7 mmbn4s {
	"SmTrophy"
	end
}
script 8 mmbn4s {
	"FireID"
	end
}
script 9 mmbn4s {
	"Paper"
	end
}
script 10 mmbn4s {
	"Memo"
	end
}
script 11 mmbn4s {
	"HintData"
	end
}
script 12 mmbn4s {
	"Data1"
	end
}
script 13 mmbn4s {
	"Data2"
	end
}
script 14 mmbn4s {
	"Data3"
	end
}
script 15 mmbn4s {
	"Data4"
	end
}
script 16 mmbn4s {
	"Data5"
	end
}
script 17 mmbn4s {
	"CyberTop"
	end
}
script 18 mmbn4s {
	"Secret1"
	end
}
script 19 mmbn4s {
	"Secret2"
	end
}
script 20 mmbn4s {
	"Secret3"
	end
}
script 21 mmbn4s {
	"Secret4"
	end
}
script 22 mmbn4s {
	"LabData"
	end
}
script 23 mmbn4s {
	"GoldbugM"
	end
}
script 24 mmbn4s {
	"GoldbugF"
	end
}
script 25 mmbn4s {
	"Mmbrship"
	end
}
script 26 mmbn4s {
	"FreePass"
	end
}
script 27 mmbn4s {
	"IceCream"
	end
}
script 28 mmbn4s {
	"OxyTank"
	end
}
script 29 mmbn4s {
	"ShukoKey"
	end
}
script 30 mmbn4s {
	"SolSensr"
	end
}
script 31 mmbn4s {
	"MdTrophy"
	end
}
script 32 mmbn4s {
	"LgTrophy"
	end
}
script 33 mmbn4s {
	"NetPassp"
	end
}
script 34 mmbn4s {
	"KeyDataA"
	end
}
script 35 mmbn4s {
	"KeyDataB"
	end
}
script 36 mmbn4s {
	"KeyDataC"
	end
}
script 37 mmbn4s {
	"KeyDataD"
	end
}
script 38 mmbn4s {
	"Mirror"
	end
}
script 39 mmbn4s {
	"Comb"
	end
}
script 40 mmbn4s {
	"BigTree"
	end
}
script 41 mmbn4s {
	"Statue"
	end
}
script 42 mmbn4s {
	"MghtyBlw"
	end
}
script 43 mmbn4s {
	"StrmKiss"
	end
}
script 44 mmbn4s {
	"Lecture"
	end
}
script 45 mmbn4s {
	"WizCat"
	end
}
script 46 mmbn4s {
	"WizRat"
	end
}
script 47 mmbn4s {
	"WzDragon"
	end
}
script 48 mmbn4s {
	"MagcSeal"
	end
}
script 49 mmbn4s {
	"WildDnce"
	end
}
script 50 mmbn4s {
	"BadJoke"
	end
}
script 51 mmbn4s {
	"GoodNose"
	end
}
script 52 mmbn4s {
	"Scratch"
	end
}
script 53 mmbn4s {
	"GoodEyes"
	end
}
script 54 mmbn4s {
	"Thrust"
	end
}
script 55 mmbn4s {
	"War"
	end
}
script 56 mmbn4s {
	"Emotion"
	end
}
script 57 mmbn4s {
	"Comedy"
	end
}
script 58 mmbn4s {
	"Pride"
	end
}
script 59 mmbn4s {
	"Bird"
	end
}
script 60 mmbn4s {
	"Dance"
	end
}
script 61 mmbn4s {
	"Lance"
	end
}
script 62 mmbn4s {
	"Zombie"
	end
}
script 63 mmbn4s {
	"ToyPart"
	end
}
script 64 mmbn4s {
	"Dancer"
	end
}
script 65 mmbn4s {
	"Politicn"
	end
}
script 66 mmbn4s {
	"FarmRobo"
	end
}
script 67 mmbn4s {
	"GunDelSl"
	end
}
script 68 mmbn4s {
	"CrmScarf"
	end
}
script 69 mmbn4s {
	"RdUndies"
	end
}
script 70 mmbn4s {
	"WalshP37"
	end
}
script 71 mmbn4s {
	"Otenko"
	end
}
script 72 mmbn4s {
	"Sunlight"
	end
}
script 73 mmbn4s {
	"Moonlght"
	end
}
script 74 mmbn4s {
	"MissSun"
	end
}
script 75 mmbn4s {
	"Skylight"
	end
}
script 76 mmbn4s {
	"Taiyohh!"
	end
}
script 77 mmbn4s {
	"Mo-o-m!"
	end
}
script 78 mmbn4s {
	"BaldHead"
	end
}
script 79 mmbn4s {
	"C-Slider"
	end
}
script 80 mmbn4s {
	"TownKyDt"
	end
}
script 81 mmbn4s {
	"DadsNote"
	end
}
script 82 mmbn4s {
	"CybSutra"
	end
}
script 83 mmbn4s {
	"CybCryst"
	end
}
script 84 mmbn4s {
	"PlTicket"
	end
}
script 85 mmbn4s {
	"RoomKey"
	end
}
script 86 mmbn4s {
	"BraveryM"
	end
}
script 87 mmbn4s {
	"StrngthM"
	end
}
script 88 mmbn4s {
	"WisdomM"
	end
}
script 89 mmbn4s {
	"KindnesM"
	end
}
script 90 mmbn4s {
	"HigsbyAd"
	end
}
script 91 mmbn4s {
	"HigsbyKy"
	end
}
script 92 mmbn4s {
	"GrasFlut"
	end
}
script 93 mmbn4s {
	"VirusCln"
	end
}
script 94 mmbn4s {
	"CybrJrky"
	end
}
script 95 mmbn4s {
	"Video1"
	end
}
script 96 mmbn4s {
	"Video2"
	end
}
script 97 mmbn4s {
	"Video3"
	end
}
script 98 mmbn4s {
	"BmbShoes"
	end
}
script 99 mmbn4s {
	"DumpKey"
	end
}
script 100 mmbn4s {
	"Transmtr"
	end
}
script 101 mmbn4s {
	"License1"
	end
}
script 102 mmbn4s {
	"License2"
	end
}
script 103 mmbn4s {
	"License3"
	end
}
script 104 mmbn4s {
	"GateData"
	end
}
script 105 mmbn4s {
	"WaterGun"
	end
}
script 106 mmbn4s {
	"FireBstr"
	end
}
script 107 mmbn4s {
	"Shovel"
	end
}
script 108 mmbn4s {
	"BoardPrt"
	end
}
script 109 mmbn4s {
	"JetPart"
	end
}
script 110 mmbn4s {
	"WingPart"
	end
}
script 111 mmbn4s {
	"RedKey"
	end
}
script 112 mmbn4s {
	"BlueKey"
	end
}
script 113 mmbn4s {
	"GreenKey"
	end
}
script 114 mmbn4s {
	"YelowKey"
	end
}
script 115 mmbn4s {
	"WhiteKey"
	end
}
script 116 mmbn4s {
	"BlackKey"
	end
}
script 117 mmbn4s {
	"CopyKey"
	end
}
script 118 mmbn4s {
	"RecvrDrp"
	end
}
script 119 mmbn4s {
	"LionKey"
	end
}
script 120 mmbn4s {
	"CursDoll"
	end
}
script 121 mmbn4s {
	"NebulaCd"
	end
}
script 122 mmbn4s {
	"ChefKey"
	end
}
script 123 mmbn4s {
	"Ingrdnts"
	end
}
script 124 mmbn4s {
	"KindData"
	end
}
script 125 mmbn4s {
	"JomonCde"
	end
}
script 126 mmbn4s {
	"CybrSwrd"
	end
}
script 127 mmbn4s {
	"WaterGod"
	end
}
script 128 mmbn4s {
	"SpinWhit"
	end
}
script 129 mmbn4s {
	"SpinPink"
	end
}
script 130 mmbn4s {
	"SpinYllw"
	end
}
script 131 mmbn4s {
	"SpinRed"
	end
}
script 132 mmbn4s {
	"SpinBlue"
	end
}
script 133 mmbn4s {
	"SpinGrn"
	end
}
script 144 mmbn4s {
	"MaylCode"
	end
}
script 145 mmbn4s {
	"DexCode"
	end
}
script 146 mmbn4s {
	"YaiCode"
	end
}
script 147 mmbn4s {
	"HotelCde"
	end
}
script 148 mmbn4s {
	"YumlandC"
	end
}
script 149 mmbn4s {
	"NetFricC"
	end
}
script 150 mmbn4s {
	"SharoCde"
	end
}
script 151 mmbn4s {
	"CastlCde"
	end
}
script 152 mmbn4s {
	"SpaceCde"
	end
}
script 153 mmbn4s {
	"MaylBanr"
	end
}
script 154 mmbn4s {
	"DexBannr"
	end
}
script 155 mmbn4s {
	"YaiBannr"
	end
}
script 156 mmbn4s {
	"JomonBnr"
	end
}
script 157 mmbn4s {
	"CastlBnr"
	end
}
script 158 mmbn4s {
	"HotelBnr"
	end
}
script 159 mmbn4s {
	"SpaceBnr"
	end
}
script 160 mmbn4s {
	"HPMemory"
	end
}
script 161 mmbn4s {
	"ExpMemry"
	end
}
script 162 mmbn4s {
	"RegUP1"
	end
}
script 163 mmbn4s {
	"RegUP2"
	end
}
script 164 mmbn4s {
	"RegUP3"
	end
}
script 165 mmbn4s {
	"SubMemry"
	end
}
script 176 mmbn4s {
	"MiniEnrg"
	end
}
script 177 mmbn4s {
	"FullEnrg"
	end
}
script 178 mmbn4s {
	"SneakRun"
	end
}
script 179 mmbn4s {
	"Untrap"
	end
}
script 180 mmbn4s {
	"LocEnemy"
	end
}
script 181 mmbn4s {
	"Unlocker"
	end
}
@archive 754F38
@size 256

script 0 mmbn4-lc {
	msgOpen
	itemGive
		item = 2
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 2
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 1 mmbn4-lc {
	msgOpen
	itemGive
		item = 28
		amount = 1
	callScenarioEffect
		effect = 2
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 28
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	msgOpen
	itemGive
		item = 1
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 1
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 4 mmbn4-lc {
	msgOpen
	flagSet
		flag = 840
	"""
	Entry completed!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	msgOpen
	flagSet
		flag = 843
	"""
	Start Prelim1!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	msgOpen
	flagSet
		flag = 844
	"""
	Prelim1 completed!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	msgOpen
	flagSet
		flag = 852
	"""
	You talked to the
	Navis in ACDC Area!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	msgOpen
	flagSet
		flag = 853
	"""
	You talked to the
	Navis in Town Area!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	msgOpen
	itemGive
		item = 83
		amount = 1
	itemGive
		item = 82
		amount = 1
	callScenarioEffect
		effect = 3
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 82
	"""
	"
	Got the "
	"""
	printItem
		buffer = 0
		item = 83
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	msgOpen
	flagSet
		flag = 2242
	itemGive
		item = 93
		amount = 1
	itemGive
		item = 94
		amount = 1
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	msgOpen
	flagSet
		flag = 797
	flagSet
		flag = 799
	itemGive
		item = 0
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 0
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	msgOpen
	itemGive
		item = 1
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 1
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	msgOpen
	itemGive
		item = 2
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 2
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	msgOpen
	itemGive
		item = 3
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 3
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	msgOpen
	itemGive
		item = 4
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 4
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	msgOpen
	itemGive
		item = 5
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 5
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	msgOpen
	itemGive
		item = 6
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 6
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	msgOpen
	itemGive
		item = 7
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 7
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	msgOpen
	itemGive
		item = 8
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 8
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	msgOpen
	itemGive
		item = 9
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 9
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	msgOpen
	itemGive
		item = 10
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 10
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	msgOpen
	itemGive
		item = 11
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 11
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	msgOpen
	itemGive
		item = 12
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 12
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	msgOpen
	itemGive
		item = 13
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 13
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	msgOpen
	itemGive
		item = 14
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 14
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	msgOpen
	itemGive
		item = 15
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 15
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4-lc {
	msgOpen
	itemGive
		item = 16
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 16
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4-lc {
	msgOpen
	itemGive
		item = 17
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 17
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4-lc {
	msgOpen
	itemGive
		item = 18
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 18
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 39 mmbn4-lc {
	msgOpen
	itemGive
		item = 19
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 19
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	msgOpen
	itemGive
		item = 20
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 20
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	msgOpen
	itemGive
		item = 21
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 21
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4-lc {
	msgOpen
	itemGive
		item = 22
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 22
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4-lc {
	msgOpen
	itemGive
		item = 23
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 23
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4-lc {
	msgOpen
	itemGive
		item = 24
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 24
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	msgOpen
	itemGive
		item = 25
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 25
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4-lc {
	msgOpen
	itemGive
		item = 26
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 26
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	msgOpen
	itemGive
		item = 27
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 27
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4-lc {
	msgOpen
	itemGive
		item = 28
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 28
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4-lc {
	msgOpen
	itemGive
		item = 29
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 29
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	msgOpen
	itemGive
		item = 30
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 30
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	msgOpen
	itemGive
		item = 31
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 31
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	msgOpen
	itemGive
		item = 32
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 32
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	msgOpen
	itemGive
		item = 33
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 33
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	msgOpen
	itemGive
		item = 34
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 34
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 55 mmbn4-lc {
	msgOpen
	itemGive
		item = 35
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 35
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 56 mmbn4-lc {
	msgOpen
	itemGive
		item = 36
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 36
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 57 mmbn4-lc {
	msgOpen
	itemGive
		item = 37
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 37
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 58 mmbn4-lc {
	msgOpen
	itemGive
		item = 79
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 79
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	msgOpen
	itemGive
		item = 80
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 80
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	msgOpen
	itemGive
		item = 81
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 81
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4-lc {
	msgOpen
	itemGive
		item = 82
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 82
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	msgOpen
	itemGive
		item = 83
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 83
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	msgOpen
	itemGive
		item = 84
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 84
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	msgOpen
	itemGive
		item = 85
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 85
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	msgOpen
	itemGive
		item = 86
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 86
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	msgOpen
	itemGive
		item = 87
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 87
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	msgOpen
	itemGive
		item = 88
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 88
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	msgOpen
	itemGive
		item = 89
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 89
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 69 mmbn4-lc {
	msgOpen
	itemGive
		item = 90
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 90
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	msgOpen
	itemGive
		item = 91
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 91
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 71 mmbn4-lc {
	msgOpen
	itemGive
		item = 92
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 92
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 72 mmbn4-lc {
	msgOpen
	itemGive
		item = 93
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 93
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	msgOpen
	itemGive
		item = 94
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 94
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	msgOpen
	itemGive
		item = 95
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 95
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	msgOpen
	itemGive
		item = 96
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 96
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 76 mmbn4-lc {
	msgOpen
	itemGive
		item = 97
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 97
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 77 mmbn4-lc {
	msgOpen
	itemGive
		item = 98
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 78 mmbn4-lc {
	msgOpen
	itemGive
		item = 99
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 99
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 79 mmbn4-lc {
	msgOpen
	itemGive
		item = 100
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 100
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	msgOpen
	itemGive
		item = 101
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 101
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	msgOpen
	itemGive
		item = 102
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 102
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	msgOpen
	itemGive
		item = 103
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 103
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	msgOpen
	itemGive
		item = 104
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 104
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	msgOpen
	itemGive
		item = 105
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 105
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	msgOpen
	itemGive
		item = 106
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 106
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	msgOpen
	itemGive
		item = 107
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 107
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	msgOpen
	itemGive
		item = 108
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 108
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 88 mmbn4-lc {
	msgOpen
	itemGive
		item = 109
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 109
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 89 mmbn4-lc {
	msgOpen
	itemGive
		item = 110
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 110
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	msgOpen
	itemGive
		item = 111
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 111
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	msgOpen
	itemGive
		item = 112
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 112
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	msgOpen
	itemGive
		item = 113
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 113
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 93 mmbn4-lc {
	msgOpen
	itemGive
		item = 114
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 114
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 94 mmbn4-lc {
	msgOpen
	itemGive
		item = 115
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 115
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 95 mmbn4-lc {
	msgOpen
	itemGive
		item = 116
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 116
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 96 mmbn4-lc {
	msgOpen
	itemGive
		item = 117
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 117
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 97 mmbn4-lc {
	msgOpen
	itemGive
		item = 118
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 98 mmbn4-lc {
	msgOpen
	itemGive
		item = 119
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 119
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 99 mmbn4-lc {
	msgOpen
	itemGive
		item = 120
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	msgOpen
	itemGive
		item = 121
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 121
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	msgOpen
	itemGive
		item = 122
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 122
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	msgOpen
	itemGive
		item = 123
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 123
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	msgOpen
	itemGive
		item = 124
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 124
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	msgOpen
	itemGive
		item = 125
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 125
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	msgOpen
	itemGive
		item = 126
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 126
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	msgOpen
	itemGive
		item = 127
		amount = 1
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 127
	"""
	"
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	msgOpen
	flagAddMail
		flag = 5568
	flagAddMail
		flag = 5569
	flagAddMail
		flag = 5570
	flagAddMail
		flag = 5571
	flagAddMail
		flag = 5572
	flagAddMail
		flag = 5573
	flagAddMail
		flag = 5574
	flagAddMail
		flag = 5575
	flagAddMail
		flag = 5576
	flagAddMail
		flag = 5577
	flagAddMail
		flag = 5578
	flagAddMail
		flag = 5579
	flagAddMail
		flag = 5580
	flagAddMail
		flag = 5581
	flagAddMail
		flag = 5582
	flagAddMail
		flag = 5583
	flagAddMail
		flag = 5584
	flagAddMail
		flag = 5585
	flagAddMail
		flag = 5586
	flagAddMail
		flag = 5587
	flagAddMail
		flag = 5588
	flagAddMail
		flag = 5589
	flagAddMail
		flag = 5590
	flagAddMail
		flag = 5591
	flagAddMail
		flag = 5592
	flagAddMail
		flag = 5593
	flagAddMail
		flag = 5594
	flagAddMail
		flag = 5595
	flagAddMail
		flag = 5596
	flagAddMail
		flag = 5597
	flagAddMail
		flag = 5598
	flagAddMail
		flag = 5599
	flagAddMail
		flag = 5600
	flagAddMail
		flag = 5601
	"""
	All Mail Get!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4-lc {
	msgOpen
	flagAddBBSMessage
		flag = 4608
	flagAddBBSMessage
		flag = 4609
	flagAddBBSMessage
		flag = 4610
	flagAddBBSMessage
		flag = 4611
	flagAddBBSMessage
		flag = 4612
	flagAddBBSMessage
		flag = 4613
	flagAddBBSMessage
		flag = 4614
	flagAddBBSMessage
		flag = 4615
	flagAddBBSMessage
		flag = 4616
	flagAddBBSMessage
		flag = 4617
	flagAddBBSMessage
		flag = 4618
	flagAddBBSMessage
		flag = 4619
	flagAddBBSMessage
		flag = 4620
	flagAddBBSMessage
		flag = 4621
	flagAddBBSMessage
		flag = 4622
	flagAddBBSMessage
		flag = 4623
	flagAddBBSMessage
		flag = 4624
	flagAddBBSMessage
		flag = 4625
	flagAddBBSMessage
		flag = 4626
	flagAddBBSMessage
		flag = 4627
	flagAddBBSMessage
		flag = 4628
	flagAddBBSMessage
		flag = 4629
	flagAddBBSMessage
		flag = 4630
	flagAddBBSMessage
		flag = 4631
	flagAddBBSMessage
		flag = 4632
	flagAddBBSMessage
		flag = 4633
	flagAddBBSMessage
		flag = 4634
	flagAddBBSMessage
		flag = 4635
	flagAddBBSMessage
		flag = 4636
	flagAddBBSMessage
		flag = 4672
	flagAddBBSMessage
		flag = 4673
	flagAddBBSMessage
		flag = 4674
	flagAddBBSMessage
		flag = 4675
	flagAddBBSMessage
		flag = 4676
	flagAddBBSMessage
		flag = 4677
	flagAddBBSMessage
		flag = 4678
	flagAddBBSMessage
		flag = 4679
	flagAddBBSMessage
		flag = 4680
	flagAddBBSMessage
		flag = 4681
	flagAddBBSMessage
		flag = 4682
	flagAddBBSMessage
		flag = 4683
	flagAddBBSMessage
		flag = 4684
	flagAddBBSMessage
		flag = 4685
	flagAddBBSMessage
		flag = 4686
	flagAddBBSMessage
		flag = 4687
	flagAddBBSMessage
		flag = 4736
	flagAddBBSMessage
		flag = 4737
	flagAddBBSMessage
		flag = 4738
	flagAddBBSMessage
		flag = 4739
	flagAddBBSMessage
		flag = 4740
	flagAddBBSMessage
		flag = 4741
	flagAddBBSMessage
		flag = 4742
	flagAddBBSMessage
		flag = 4743
	flagAddBBSMessage
		flag = 4744
	flagAddBBSMessage
		flag = 4745
	flagAddBBSMessage
		flag = 4746
	flagAddBBSMessage
		flag = 4800
	flagAddBBSMessage
		flag = 4801
	flagAddBBSMessage
		flag = 4802
	flagAddBBSMessage
		flag = 4803
	flagAddBBSMessage
		flag = 4804
	flagAddBBSMessage
		flag = 4805
	flagAddBBSMessage
		flag = 4806
	flagAddBBSMessage
		flag = 4807
	flagAddBBSMessage
		flag = 4808
	flagAddBBSMessage
		flag = 4809
	flagAddBBSMessage
		flag = 4810
	flagAddBBSMessage
		flag = 4811
	flagAddBBSMessage
		flag = 4812
	flagAddBBSMessage
		flag = 4813
	flagAddBBSMessage
		flag = 4814
	flagAddBBSMessage
		flag = 4815
	flagAddBBSMessage
		flag = 4816
	flagAddBBSMessage
		flag = 4817
	flagAddBBSMessage
		flag = 4864
	flagAddBBSMessage
		flag = 4865
	flagAddBBSMessage
		flag = 4866
	flagAddBBSMessage
		flag = 4867
	flagAddBBSMessage
		flag = 4868
	flagAddBBSMessage
		flag = 4869
	flagAddBBSMessage
		flag = 4870
	flagAddBBSMessage
		flag = 4871
	flagAddBBSMessage
		flag = 4872
	flagAddBBSMessage
		flag = 4873
	flagAddBBSMessage
		flag = 4874
	flagAddBBSMessage
		flag = 4875
	flagAddBBSMessage
		flag = 4876
	flagAddBBSMessage
		flag = 4877
	flagAddBBSMessage
		flag = 4878
	flagAddBBSMessage
		flag = 4879
	flagAddBBSMessage
		flag = 4928
	flagAddBBSMessage
		flag = 4929
	flagAddBBSMessage
		flag = 4930
	flagAddBBSMessage
		flag = 4931
	flagAddBBSMessage
		flag = 4932
	flagAddBBSMessage
		flag = 4933
	flagAddBBSMessage
		flag = 4934
	flagAddBBSMessage
		flag = 4935
	flagAddBBSMessage
		flag = 4936
	flagAddBBSMessage
		flag = 4937
	flagAddBBSMessage
		flag = 4938
	flagAddBBSMessage
		flag = 4939
	"""
	Entered on the board
	"""
	keyWait
		any = false
	end
}
script 201 mmbn4-lc {
	msgOpen
	flagSet
		flag = 3094
	flagSet
		flag = 797
	itemGiveNaviCustProgram
		program = 80
		color = 2
		amount = 1
	"""
	Got the Humor!
	"""
	keyWait
		any = false
	end
}
script 202 mmbn4-lc {
	msgOpen
	itemGiveChip
		chip = 32
		code = G
		amount = 1
	itemGiveChip
		chip = 33
		code = G
		amount = 1
	itemGiveChip
		chip = 34
		code = G
		amount = 1
	itemGiveChip
		chip = 219
		code = G
		amount = 1
	"""
	Got the GunDelSl.
	"""
	keyWait
		any = false
	end
}
script 203 mmbn4-lc {
	msgOpen
	mugshotShow
		mugshot = DirectorOzuma
	"""
	One day while I was
	on the Net,
	"""
	keyWait
		any = false
	clearMsg
	"""
	a vampire Navi
	appeared in front
	of my Navi.
	"""
	keyWait
		any = false
	clearMsg
	"""
	It was so terrifyingly
	powerful,I was sure
	I'd be deleted…
	"""
	keyWait
		any = false
	clearMsg
	"""
	But then Django
	came to my rescue!
	I'm not kidding!!
	"""
	keyWait
		any = false
	clearMsg
}
script 204 mmbn4-lc {
	msgOpen
	mugshotShow
		mugshot = DirectorOzuma
	"""
	I have a feeling
	Django is fighting
	vampires somewhere,
	"""
	keyWait
		any = false
	clearMsg
	"""
	even as we speak…
	"""
	keyWait
		any = false
	end
}
script 205 mmbn4-lc {
	msgOpen
	mugshotShow
		mugshot = DirectorOzuma
	"""
	Django and Master
	Otenko are probably
	on the Net right now
	"""
	keyWait
		any = false
	clearMsg
	"""
	battling evil,
	so I'm going to join
	the fight as well!
	"""
	keyWait
		any = false
	clearMsg
	"""
	That's it! I'm going
	to write a sequel to
	Django,the Solar Boy!
	"""
	keyWait
		any = false
	end
}
script 225 mmbn4-lc {
	msgOpen
	flagClear
		flag = 113
	"""
	Hide Record Display
	"""
	keyWait
		any = false
	end
}
script 226 mmbn4-lc {
	msgOpen
	itemGive
		item = 0
		amount = 1
	itemGive
		item = 1
		amount = 1
	itemGive
		item = 2
		amount = 1
	itemGive
		item = 3
		amount = 1
	itemGive
		item = 4
		amount = 1
	itemGive
		item = 5
		amount = 1
	itemGive
		item = 6
		amount = 1
	itemGive
		item = 7
		amount = 1
	itemGive
		item = 8
		amount = 1
	itemGive
		item = 9
		amount = 1
	itemGive
		item = 10
		amount = 1
	itemGive
		item = 11
		amount = 1
	itemGive
		item = 12
		amount = 1
	itemGive
		item = 13
		amount = 1
	itemGive
		item = 14
		amount = 1
	itemGive
		item = 15
		amount = 1
	itemGive
		item = 16
		amount = 1
	itemGive
		item = 17
		amount = 1
	itemGive
		item = 18
		amount = 1
	itemGive
		item = 19
		amount = 1
	itemGive
		item = 20
		amount = 1
	itemGive
		item = 21
		amount = 1
	itemGive
		item = 22
		amount = 1
	itemGive
		item = 23
		amount = 1
	itemGive
		item = 24
		amount = 1
	itemGive
		item = 25
		amount = 1
	itemGive
		item = 26
		amount = 1
	itemGive
		item = 27
		amount = 1
	itemGive
		item = 28
		amount = 1
	itemGive
		item = 29
		amount = 1
	itemGive
		item = 30
		amount = 1
	itemGive
		item = 31
		amount = 1
	itemGive
		item = 32
		amount = 1
	itemGive
		item = 33
		amount = 1
	itemGive
		item = 34
		amount = 1
	itemGive
		item = 35
		amount = 1
	itemGive
		item = 36
		amount = 1
	itemGive
		item = 37
		amount = 1
	itemGive
		item = 38
		amount = 1
	itemGive
		item = 39
		amount = 1
	itemGive
		item = 40
		amount = 1
	itemGive
		item = 41
		amount = 1
	itemGive
		item = 42
		amount = 1
	itemGive
		item = 43
		amount = 1
	itemGive
		item = 44
		amount = 1
	itemGive
		item = 45
		amount = 1
	itemGive
		item = 46
		amount = 1
	itemGive
		item = 47
		amount = 1
	itemGive
		item = 48
		amount = 1
	itemGive
		item = 49
		amount = 1
	itemGive
		item = 50
		amount = 1
	itemGive
		item = 51
		amount = 1
	itemGive
		item = 52
		amount = 1
	itemGive
		item = 53
		amount = 1
	itemGive
		item = 54
		amount = 1
	itemGive
		item = 55
		amount = 1
	itemGive
		item = 56
		amount = 1
	itemGive
		item = 57
		amount = 1
	itemGive
		item = 58
		amount = 1
	itemGive
		item = 59
		amount = 1
	itemGive
		item = 60
		amount = 1
	itemGive
		item = 61
		amount = 1
	itemGive
		item = 62
		amount = 1
	itemGive
		item = 63
		amount = 1
	itemGive
		item = 64
		amount = 1
	itemGive
		item = 65
		amount = 1
	itemGive
		item = 66
		amount = 1
	itemGive
		item = 67
		amount = 1
	itemGive
		item = 68
		amount = 1
	itemGive
		item = 69
		amount = 1
	itemGive
		item = 70
		amount = 1
	itemGive
		item = 71
		amount = 1
	itemGive
		item = 72
		amount = 1
	itemGive
		item = 73
		amount = 1
	itemGive
		item = 74
		amount = 1
	itemGive
		item = 75
		amount = 1
	itemGive
		item = 76
		amount = 1
	itemGive
		item = 77
		amount = 1
	itemGive
		item = 78
		amount = 1
	itemGive
		item = 79
		amount = 1
	itemGive
		item = 80
		amount = 1
	itemGive
		item = 81
		amount = 1
	itemGive
		item = 82
		amount = 1
	itemGive
		item = 83
		amount = 1
	itemGive
		item = 84
		amount = 1
	itemGive
		item = 85
		amount = 1
	itemGive
		item = 86
		amount = 1
	itemGive
		item = 87
		amount = 1
	itemGive
		item = 88
		amount = 1
	itemGive
		item = 89
		amount = 1
	itemGive
		item = 90
		amount = 1
	itemGive
		item = 91
		amount = 1
	itemGive
		item = 92
		amount = 1
	itemGive
		item = 93
		amount = 1
	itemGive
		item = 94
		amount = 1
	itemGive
		item = 95
		amount = 1
	itemGive
		item = 96
		amount = 1
	itemGive
		item = 97
		amount = 1
	itemGive
		item = 98
		amount = 1
	itemGive
		item = 99
		amount = 1
	itemGive
		item = 100
		amount = 1
	itemGive
		item = 101
		amount = 1
	itemGive
		item = 102
		amount = 1
	itemGive
		item = 103
		amount = 1
	itemGive
		item = 104
		amount = 1
	itemGive
		item = 105
		amount = 1
	itemGive
		item = 106
		amount = 1
	itemGive
		item = 107
		amount = 1
	itemGive
		item = 108
		amount = 1
	itemGive
		item = 109
		amount = 1
	itemGive
		item = 110
		amount = 1
	itemGive
		item = 111
		amount = 1
	itemGive
		item = 112
		amount = 1
	itemGive
		item = 113
		amount = 1
	itemGive
		item = 114
		amount = 1
	itemGive
		item = 115
		amount = 1
	itemGive
		item = 116
		amount = 1
	itemGive
		item = 117
		amount = 1
	itemGive
		item = 118
		amount = 1
	itemGive
		item = 119
		amount = 1
	itemGive
		item = 120
		amount = 1
	itemGive
		item = 121
		amount = 1
	itemGive
		item = 122
		amount = 1
	itemGive
		item = 123
		amount = 1
	itemGive
		item = 124
		amount = 1
	itemGive
		item = 125
		amount = 1
	itemGive
		item = 126
		amount = 1
	itemGive
		item = 127
		amount = 1
	itemGive
		item = 128
		amount = 1
	itemGive
		item = 129
		amount = 1
	itemGive
		item = 130
		amount = 1
	itemGive
		item = 131
		amount = 1
	itemGive
		item = 132
		amount = 1
	itemGive
		item = 133
		amount = 1
	itemGive
		item = 144
		amount = 1
	itemGive
		item = 145
		amount = 1
	itemGive
		item = 146
		amount = 1
	itemGive
		item = 147
		amount = 1
	itemGive
		item = 148
		amount = 1
	itemGive
		item = 149
		amount = 1
	itemGive
		item = 150
		amount = 1
	itemGive
		item = 151
		amount = 1
	itemGive
		item = 152
		amount = 1
	itemGive
		item = 153
		amount = 1
	itemGive
		item = 154
		amount = 1
	itemGive
		item = 155
		amount = 1
	itemGive
		item = 156
		amount = 1
	itemGive
		item = 157
		amount = 1
	itemGive
		item = 158
		amount = 1
	itemGive
		item = 159
		amount = 1
	"""
	Get all key items
	"""
	keyWait
		any = false
	end
}
script 227 mmbn4-lc {
	msgOpen
	flagSet
		flag = 2242
	flagSet
		flag = 2243
	"""
	MetalMan minigame
	"""
	keyWait
		any = false
	end
}
script 228 mmbn4-lc {
	msgOpen
	flagClear
		flag = 155
	"""
	Reset lot flags
	"""
	keyWait
		any = false
	end
}
script 229 mmbn4-lc {
	msgOpen
	startGiveFolder
		slot = 2
		folder = 5
	"""
	Got the Subfolder!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4-lc {
	msgOpen
	itemGive
		item = 79
		amount = 1
	"""
	Got the C-Slider!
	"""
	keyWait
		any = false
	end
}
script 231 mmbn4-lc {
	msgOpen
	startGiveFolder
		slot = 1
		folder = 1
	"""
	Got Folder 2!
	"""
	keyWait
		any = false
	end
}
script 232 mmbn4-lc {
	msgOpen
	itemGiveChip
		chip = 2
		code = D
		amount = 1
	itemGiveChip
		chip = 2
		code = E
		amount = 1
	itemGiveChip
		chip = 2
		code = C
		amount = 1
	itemGiveChip
		chip = 3
		code = F
		amount = 1
	itemGiveChip
		chip = 3
		code = G
		amount = 1
	itemGiveChip
		chip = 3
		code = *
		amount = 1
	itemGiveChip
		chip = 154
		code = B
		amount = 1
	itemGiveChip
		chip = 1
		code = A
		amount = 1
	itemGiveChip
		chip = 1
		code = B
		amount = 2
	"""
	Chip Set
	"""
	keyWait
		any = false
	end
}
script 233 mmbn4-lc {
	msgOpen
	itemGiveChip
		chip = 1
		code = A
		amount = 1
	itemGiveChip
		chip = 232
		code = S
		amount = 1
	"""
	Chip Set
	"""
	keyWait
		any = false
	end
}
script 234 mmbn4-lc {
	msgOpen
	itemGive
		item = 128
		amount = 1
	itemGive
		item = 129
		amount = 1
	itemGive
		item = 130
		amount = 1
	itemGive
		item = 131
		amount = 1
	itemGive
		item = 132
		amount = 1
	itemGive
		item = 133
		amount = 1
	"""
	Got the Spin items
	"""
	keyWait
		any = false
	end
}
script 235 mmbn4-lc {
	msgOpen
	itemGive
		item = 160
		amount = 1
	"""
	Got HPMemory
	"""
	keyWait
		any = false
	end
}
script 236 mmbn4-lc {
	msgOpen
	flagSet
		flag = 116
	"""
	DarkSoul appears.
	However,a scenario
	flag is up,so the
	"""
	keyWait
		any = false
	clearMsg
	"""
	scenario cannot be
	continued
	"""
	keyWait
		any = false
	end
}
script 237 mmbn4-lc {
	msgOpen
	itemGive
		item = 164
		amount = 1
	"""
	Got RegUP3
	"""
	keyWait
		any = false
	end
}
script 238 mmbn4-lc {
	msgOpen
	itemGive
		item = 163
		amount = 1
	"""
	Got RegUP2
	"""
	keyWait
		any = false
	end
}
script 239 mmbn4-lc {
	msgOpen
	itemGive
		item = 162
		amount = 1
	"""
	Got RegUP1
	"""
	keyWait
		any = false
	end
}
script 240 mmbn4-lc {
	msgOpen
	itemGive
		item = 161
		amount = 1
	"""
	Got ExpMemry
	"""
	keyWait
		any = false
	end
}
script 241 mmbn4-lc {
	msgOpen
	itemGive
		item = 105
		amount = 1
	itemGive
		item = 106
		amount = 1
	flagSet
		flag = 2442
	flagSet
		flag = 2444
	"""
	Got the "
	"""
	printItem
		buffer = 0
		item = 105
	"""
	"
	Got the "
	"""
	printItem
		buffer = 0
		item = 106
	"""
	"
	Start Fire Minigame!
	"""
	keyWait
		any = false
	end
}
script 242 mmbn4-lc {
	flagSet
		flag = 115
	msgOpen
	"""
	Hold Free Tournament
	But a scenario clear
	flag is up,so don't
	"""
	keyWait
		any = false
	clearMsg
	"""
	continue the game
	"""
	keyWait
		any = false
	end
}
script 243 mmbn4-lc {
	flagSet
		flag = 20
	flagSet
		flag = 21
	flagSet
		flag = 29
	flagSet
		flag = 30
	flagSet
		flag = 31
	flagSet
		flag = 32
	flagSet
		flag = 33
	flagSet
		flag = 34
	itemGiveChip
		chip = 359
		code = 255
		amount = 0
	itemGiveChip
		chip = 360
		code = 255
		amount = 0
	itemGiveChip
		chip = 361
		code = 255
		amount = 0
	itemGiveChip
		chip = 362
		code = 255
		amount = 0
	itemGiveChip
		chip = 363
		code = 255
		amount = 0
	itemGiveChip
		chip = 364
		code = 255
		amount = 0
	msgOpen
	"""
	Got the DublBlue
	"""
	keyWait
		any = false
	end
}
script 244 mmbn4-lc {
	flagSet
		flag = 20
	flagSet
		flag = 21
	flagSet
		flag = 23
	flagSet
		flag = 24
	flagSet
		flag = 25
	flagSet
		flag = 26
	flagSet
		flag = 27
	flagSet
		flag = 28
	itemGiveChip
		chip = 353
		code = 255
		amount = 0
	itemGiveChip
		chip = 354
		code = 255
		amount = 0
	itemGiveChip
		chip = 355
		code = 255
		amount = 0
	itemGiveChip
		chip = 356
		code = 255
		amount = 0
	itemGiveChip
		chip = 357
		code = 255
		amount = 0
	itemGiveChip
		chip = 358
		code = 255
		amount = 0
	msgOpen
	"""
	Got the DublRed
	"""
	keyWait
		any = false
	end
}
script 245 mmbn4-lc {
	msgOpen
	itemGive
		item = 108
		amount = 1
	itemGive
		item = 109
		amount = 1
	itemGive
		item = 110
		amount = 1
	"""
	Got the C-Slider
	parts!
	"""
	keyWait
		any = false
	end
}
script 246 mmbn4-lc {
	msgOpen
	checkGiveTournamentPoints
		amount = 50
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"""
	Got 50 BattlePoints
	"""
	keyWait
		any = false
	end
}
script 247 mmbn4-lc {
	msgOpen
	checkGiveZenny
		amount = 100000
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	checkGiveBugFrags
		amount = 9999
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	"""
	Rich
	"""
	keyWait
		any = false
	end
}
script 248 mmbn4-lc {
	msgOpen
	flagSet
		flag = 256
	flagSet
		flag = 257
	flagSet
		flag = 258
	flagSet
		flag = 259
	flagSet
		flag = 260
	flagSet
		flag = 261
	flagSet
		flag = 262
	flagSet
		flag = 263
	flagSet
		flag = 264
	"""
	Travel around the
	world!
	"""
	keyWait
		any = false
	end
}
script 249 mmbn4-lc {
	msgOpen
	flagSet
		flag = 6144
	flagSet
		flag = 6145
	flagSet
		flag = 6146
	flagSet
		flag = 6147
	flagSet
		flag = 6148
	flagSet
		flag = 6149
	flagSet
		flag = 6150
	flagSet
		flag = 6151
	flagSet
		flag = 6152
	flagSet
		flag = 6153
	flagSet
		flag = 6154
	flagSet
		flag = 6155
	flagSet
		flag = 6156
	flagSet
		flag = 6157
	flagSet
		flag = 6158
	flagSet
		flag = 6159
	flagSet
		flag = 6160
	flagSet
		flag = 6161
	flagSet
		flag = 6162
	flagSet
		flag = 6163
	flagSet
		flag = 6164
	flagSet
		flag = 6165
	flagSet
		flag = 6166
	flagSet
		flag = 6167
	flagSet
		flag = 6168
	flagSet
		flag = 6169
	flagSet
		flag = 6170
	flagSet
		flag = 6171
	flagSet
		flag = 6172
	flagSet
		flag = 6173
	itemGiveChip
		chip = 320
		code = 255
		amount = 0
	itemGiveChip
		chip = 321
		code = 255
		amount = 0
	itemGiveChip
		chip = 322
		code = 255
		amount = 0
	itemGiveChip
		chip = 323
		code = 255
		amount = 0
	itemGiveChip
		chip = 324
		code = 255
		amount = 0
	itemGiveChip
		chip = 325
		code = 255
		amount = 0
	itemGiveChip
		chip = 326
		code = 255
		amount = 0
	itemGiveChip
		chip = 327
		code = 255
		amount = 0
	itemGiveChip
		chip = 328
		code = 255
		amount = 0
	itemGiveChip
		chip = 329
		code = 255
		amount = 0
	itemGiveChip
		chip = 330
		code = 255
		amount = 0
	itemGiveChip
		chip = 331
		code = 255
		amount = 0
	itemGiveChip
		chip = 332
		code = 255
		amount = 0
	itemGiveChip
		chip = 333
		code = 255
		amount = 0
	itemGiveChip
		chip = 334
		code = 255
		amount = 0
	itemGiveChip
		chip = 335
		code = 255
		amount = 0
	itemGiveChip
		chip = 336
		code = 255
		amount = 0
	itemGiveChip
		chip = 337
		code = 255
		amount = 0
	itemGiveChip
		chip = 338
		code = 255
		amount = 0
	itemGiveChip
		chip = 339
		code = 255
		amount = 0
	itemGiveChip
		chip = 340
		code = 255
		amount = 0
	itemGiveChip
		chip = 341
		code = 255
		amount = 0
	itemGiveChip
		chip = 342
		code = 255
		amount = 0
	itemGiveChip
		chip = 343
		code = 255
		amount = 0
	itemGiveChip
		chip = 344
		code = 255
		amount = 0
	itemGiveChip
		chip = 345
		code = 255
		amount = 0
	itemGiveChip
		chip = 346
		code = 255
		amount = 0
	itemGiveChip
		chip = 347
		code = 255
		amount = 0
	itemGiveChip
		chip = 348
		code = 255
		amount = 0
	itemGiveChip
		chip = 349
		code = 255
		amount = 0
	"""
	Got the PA
	"""
	keyWait
		any = false
	end
}
script 250 mmbn4-lc {
	msgOpen
	flagSet
		flag = 1
	flagSet
		flag = 2
	flagSet
		flag = 3
	flagSet
		flag = 4
	flagSet
		flag = 5
	flagSet
		flag = 6
	flagSet
		flag = 7
	flagSet
		flag = 8
	flagSet
		flag = 9
	flagSet
		flag = 10
	flagSet
		flag = 11
	flagSet
		flag = 12
	flagSet
		flag = 13
	flagSet
		flag = 14
	flagSet
		flag = 15
	flagSet
		flag = 16
	flagSet
		flag = 17
	flagSet
		flag = 18
	flagSet
		flag = 21
	"""
	Delete flag set
	"""
	keyWait
		any = false
	end
}
script 251 mmbn4-lc {
	msgOpen
	callGiveAllNaviCustPrograms
	flagSet
		flag = 112
	flagSet
		flag = 113
	"""
	Got the NaviCust
	"""
	keyWait
		any = false
	end
}
script 252 mmbn4-lc {
	msgOpen
	itemGive
		item = 0
		amount = 1
	itemGive
		item = 2
		amount = 1
	itemGive
		item = 3
		amount = 1
	itemGive
		item = 5
		amount = 1
	itemGive
		item = 8
		amount = 1
	itemGive
		item = 9
		amount = 1
	itemGive
		item = 11
		amount = 1
	itemGive
		item = 14
		amount = 1
	itemGive
		item = 15
		amount = 1
	itemGive
		item = 16
		amount = 1
	itemGive
		item = 18
		amount = 1
	itemGive
		item = 19
		amount = 1
	itemGive
		item = 20
		amount = 1
	itemGive
		item = 21
		amount = 1
	itemGive
		item = 22
		amount = 1
	itemGive
		item = 23
		amount = 1
	itemGive
		item = 24
		amount = 1
	itemGive
		item = 25
		amount = 1
	"""
	Got the items
	"""
	keyWait
		any = false
	end
}
script 253 mmbn4-lc {
	msgOpen
	itemGive
		item = 176
		amount = 1
	itemGive
		item = 177
		amount = 1
	itemGive
		item = 178
		amount = 1
	itemGive
		item = 179
		amount = 1
	itemGive
		item = 181
		amount = 1
	itemGive
		item = 180
		amount = 1
	"""
	Got the Sub items
	"""
	keyWait
		any = false
	end
}
script 254 mmbn4-lc {
	msgOpen
	itemGiveAllChips
	"""
	Got all chips
	"""
	keyWait
		any = false
	end
}
script 255 mmbn4-lc {
	flagSet
		flag = 161
	flagSet
		flag = 162
	msgOpen
	"""
	FOLD2
	RS(BM)
	...GET
	"""
	end
}
@archive 755B7C
@size 110

script 0 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 1 mmbn4-lc {
	jump
		target = 0
}
script 2 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 5
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGiveChip
		chip = 65535
		code = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got a
	BattleChip:
	"
	"""
	printChip
		buffer = 3
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 4
		code = A
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 3 mmbn4-lc {
	jump
		target = 2
}
script 4 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 5 mmbn4-lc {
	msgOpen
	"""
	It's locked.
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	" is needed
	to open it.
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGiveChip
		chip = 65535
		code = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got a
	BattleChip:
	"
	"""
	printChip
		buffer = 3
		chip = 0
	"""
	 
	"""
	printCode
		buffer = 4
		code = A
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 10 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 17
}
script 11 mmbn4-lc {
	jump
		target = 10
}
script 12 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 15
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	checkGiveItem
		item = 255
		amount = 1
		jumpIfAll = continue
		jumpIfNone = 16
		jumpIfSome = 16
	flagSetBuffered
		buffer = 0
	playerAnimateScene
		animation = 24
	"""
	MegaMan got a
	SubChip:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 13 mmbn4-lc {
	jump
		target = 12
}
script 14 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 17
}
script 15 mmbn4-lc {
	jump
		target = 5
}
script 16 mmbn4-lc {
	msgOpen
	"""
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	" stock full.
	You can't carry
	any more.
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	checkGiveItem
		item = 255
		amount = 1
		jumpIfAll = continue
		jumpIfNone = 16
		jumpIfSome = 16
	flagSetBuffered
		buffer = 0
	playerAnimateObject
		animation = 24
	"""
	MegaMan got a
	SubChip:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 20 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 21 mmbn4-lc {
	jump
		target = 20
}
script 22 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 25
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateScene
		animation = 24
	"""
	MegaMan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	 Zennys"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 23 mmbn4-lc {
	jump
		target = 22
}
script 24 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 25 mmbn4-lc {
	jump
		target = 5
}
script 27 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	checkGiveZenny
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = continue
		jumpIfSome = continue
	playerAnimateObject
		animation = 24
	"""
	MegaMan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	 Zennys"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 30 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 37
}
script 31 mmbn4-lc {
	jump
		target = 30
}
script 32 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 35
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 33 mmbn4-lc {
	jump
		target = 32
}
script 34 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 37
}
script 35 mmbn4-lc {
	jump
		target = 5
}
script 37 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 40 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 47
}
script 41 mmbn4-lc {
	jump
		target = 40
}
script 42 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 25
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 46
		jumpIfSome = 46
	flagSetBuffered
		buffer = 0
	playerAnimateScene
		animation = 24
	"""
	MegaMan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	 BugFrags"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 43 mmbn4-lc {
	jump
		target = 42
}
script 44 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 47
}
script 45 mmbn4-lc {
	jump
		target = 5
}
script 46 mmbn4-lc {
	msgOpen
	"""
	You can't carry
	any more BugFrags.
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	checkGiveBugFrags
		amount = 4294967295
		jumpIfAll = continue
		jumpIfNone = 46
		jumpIfSome = 46
	flagSetBuffered
		buffer = 0
	playerAnimateObject
		animation = 24
	"""
	MegaMan got:
	"
	"""
	printBuffer
		buffer = 3
		minLength = 0
		padZeros = false
		padLeft = false
	"""
	 BugFrags"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 50 mmbn4-lc {
	jump
		target = 7
}
script 51 mmbn4-lc {
	jump
		target = 0
}
script 52 mmbn4-lc {
	jump
		target = 2
}
script 53 mmbn4-lc {
	jump
		target = 2
}
script 54 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4459
		jumpIfTrue = continue
		jumpIfFalse = 57
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 179
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The viruses hidden
	in the mystery data
	were deleted!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 7
}
script 55 mmbn4-lc {
	jump
		target = 5
}
script 57 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	"""
	The mystery data
	was a virus!!
	"""
	keyWait
		any = false
	startRandomBattle
	end
}
script 60 mmbn4-lc {
	jump
		target = 27
}
script 61 mmbn4-lc {
	jump
		target = 20
}
script 62 mmbn4-lc {
	jump
		target = 22
}
script 63 mmbn4-lc {
	jump
		target = 22
}
script 64 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	checkFlag
		flag = 4459
		jumpIfTrue = continue
		jumpIfFalse = 67
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 179
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	"""
	The viruses hidden
	in the mystery data
	were deleted!
	"""
	keyWait
		any = false
	clearMsg
	jump
		target = 27
}
script 65 mmbn4-lc {
	jump
		target = 5
}
script 67 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	"""
	The mystery data
	was a virus!!
	"""
	keyWait
		any = false
	startRandomBattle
	end
}
script 70 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 77
}
script 71 mmbn4-lc {
	jump
		target = 70
}
script 72 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 75
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 73 mmbn4-lc {
	jump
		target = 72
}
script 74 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 77
}
script 75 mmbn4-lc {
	jump
		target = 5
}
script 77 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 80 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 87
}
script 81 mmbn4-lc {
	jump
		target = 80
}
script 82 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 85
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGiveNaviCustProgram
		program = 255
		color = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got a Navi
	Customizer Program:
	"
	"""
	printNaviCustProgram
		buffer = 3
		program = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	end
}
script 83 mmbn4-lc {
	jump
		target = 82
}
script 84 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 87
}
script 85 mmbn4-lc {
	jump
		target = 5
}
script 87 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGiveNaviCustProgram
		program = 255
		color = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got a Navi
	Customizer Program:
	"
	"""
	printNaviCustProgram
		buffer = 3
		program = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	end
}
script 90 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 97
}
script 91 mmbn4-lc {
	jump
		target = 90
}
script 92 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 95
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	"""
	Regular Memory
	increased by 
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	"""
	 MB!!
	"""
	keyWait
		any = false
	end
}
script 93 mmbn4-lc {
	jump
		target = 92
}
script 94 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 97
}
script 95 mmbn4-lc {
	jump
		target = 5
}
script 97 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	clearMsg
	"""
	Regular Memory
	increased by 
	"""
	printBuffer
		buffer = 1
		minLength = 0
		padZeros = false
		padLeft = true
	"""
	 MB!!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 107
}
script 101 mmbn4-lc {
	jump
		target = 100
}
script 102 mmbn4-lc {
	checkFlag
		flag = 4458
		jumpIfTrue = continue
		jumpIfFalse = 105
	msgOpen
	"""
	The SubChip
	"
	"""
	printItem
		buffer = 0
		item = 181
	"""
	"
	was activated!
	"""
	keyWait
		any = false
	clearMsg
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateScene
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetScene
	clearMsg
	"""
	Now you can carry
	more SubChips!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	jump
		target = 102
}
script 104 mmbn4-lc {
	msgOpen
	"""
	MegaMan accessed
	the mystery data.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	"""
	.
	"""
	wait
		frames = 10
	keyWait
		any = false
	clearMsg
	jump
		target = 107
}
script 105 mmbn4-lc {
	jump
		target = 5
}
script 107 mmbn4-lc {
	flagSetBuffered
		buffer = 0
	itemGive
		item = 255
		amount = 1
	playerAnimateObject
		animation = 24
	"""
	MegaMan got
	a PowerUp:
	"
	"""
	printItem
		buffer = 3
		item = 0
	"""
	"!!
	"""
	keyWait
		any = false
	playerFinish
	playerResetObject
	clearMsg
	"""
	Now you can carry
	more SubChips!
	"""
	keyWait
		any = false
	end
}
@archive 7566E4
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 4
		upper = 4
		jumpIfInRange = 29
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4-lc {
	checkFlag
		flag = 774
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 10
		jumpIfGreater = 10
		jumpIfLess = continue
	checkFlag
		flag = 832
		jumpIfTrue = 9
		jumpIfFalse = continue
	checkFlag
		flag = 772
		jumpIfTrue = 8
		jumpIfFalse = continue
	checkFlag
		flag = 831
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkFlag
		flag = 797
		jumpIfTrue = 6
		jumpIfFalse = continue
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go say hi to
	Mom and Dad!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me into
	the oven!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's ask Dad
	for some money!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"
	"""
	printItem
		buffer = 0
		item = 2
	"""
	es" are
	being sold in ACDC
	Area 3 on the Net.
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's give the
	"
	"""
	printItem
		buffer = 0
		item = 2
	"""
	" to Dad!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkMultiFlag
		flag = 803
		count = 5
		jumpIfAllSet = 12
		jumpIfNotAllSet = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's pass the
	time by talking with
	people around town.
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey Lan,we should
	probably be getting
	back to the station.
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Dad's
	going to be a while.
	Let's wait outside.
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our friends are in
	danger! Hurry home
	and get to ACDC Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me into
	your PC!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	checkFlag
		flag = 788
		jumpIfTrue = 42
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkFlag
		flag = 785
		jumpIfTrue = 40
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 39
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 37
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 36
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back to
	the Net! We have to
	get that black Navi!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4-lc {
	checkFlag
		flag = 839
		jumpIfTrue = 44
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wasn't the Tower in
	ElecTown Square?
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4-lc {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 38
		jumpIfGreater = 38
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find a way to
	stop the ultrasonic
	waves in ElecTown!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back to
	ElecTown!
	"""
	keyWait
		any = false
	end
}
script 39 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Roll's in
	trouble! Let's hurry
	to ElecTown!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	msgOpen
	"""
	MegaMan isn't
	inside the PET…
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This thing looks
	like a chip. Let's
	take it to Higsby.
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 2
		jumpIfInRange = 43
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go home.
	I can't wait for the
	tournament tomorrow!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get some rest
	for tomorrow.
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	another way to the
	Square in ElecTown!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	checkFlag
		flag = 791
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 47
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 46
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	C'mon Lan,
	let's get over to
	ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The gray Navi in
	Town Area 3 will
	enter us,right?
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're signed up now,
	so let's head back
	to the Square!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4-lc {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 51
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished the
	three tasks. Now back
	to ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to DenDome.
	We've got a
	tournament to win!
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's complete the
	three tasks to pass
	the preliminary!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4-lc {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The kidnapper's clues
	should lead us to
	Chisao!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head over to
	ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We finally get to
	face Dex! Let's show
	him what we've got!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's collect the
	number data and head
	for ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4-lc {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	hotdog stand.
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in,Lan. I'll
	fix the hotdog fryer!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Looks like only Mr.
	Match can fix this.
	Let's go find him!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm worried about
	FireMan,but let's go
	to the hotdog stand!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,the match is
	going to start!
	It's showtime!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4-lc {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's tune up our
	PET! It's in front
	of the Dome,right?
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We need to find
	someone to fix our
	folder!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,that "
	"""
	printItem
		buffer = 0
		item = 9
	"""
	"
	might help us figure
	out the password.
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our folder's fixed,
	so let's head back
	to the arena!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match won't
	start for a while.
	What should we do?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's give the top
	to that elderly guy!
	Where'd he go?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Some elderly
	NetBattlers should
	be in the park!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Gotta take a test
	in Town Area? Let's
	give it a shot,Lan!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm a little worried.
	Why don't we go
	check on things?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oh no,the match is
	about to start!
	Quick! To the arena!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Chief's Navi
	should be in ACDC,
	right? Let's go!
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4-lc {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's some random
	fortune know?! C'mon,
	let's go outside!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	So that girl's our
	opponent. She seems
	a bit much to handle…
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what all
	that commotion was
	about?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to hurry
	and find AquaMan or
	the Net's in danger!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's get back
	on the Net and chase
	down AquaMan!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	Shuko! Maybe someone
	knows where she is?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Shuko's in
	ElecTown1!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to AquaMan!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm glad that's all
	cleared up. Let's go
	to DenDome!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4-lc {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Yuko's waiting
	outside the Dome.
	Let's go!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder who came to
	see you? Let's go
	home and find out!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4-lc {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We got rid of the
	evil ghosts. Let's
	tell Yuko's father!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got to put
	those evil ghosts to
	rest! Jack me in!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's time to battle
	Yuko! Let's go to
	the Dome!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm feeling pumped!
	Let's go outside and
	get some fresh air!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Tetsu is really
	something! We should
	thank him!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Town
	Area 3! Tetsu needs
	our help!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! Tetsu's
	Navi is in trouble!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! We can't
	just do nothing!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Dome! We have a duel
	of honor to attend!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4-lc {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 217
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Higsby must have a
	reason for quitting.
	Let's go to his shop!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in! We have to
	hand out 10+ Higsby's
	flyers in Cyberworld!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! Higsby's
	warehouse is in the
	Town Area!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4-lc {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to get the
	warehouse key and
	help NumberMan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm concerned about
	Higsby. Let's go
	see him!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Time for our battle
	with Higsby! Let's
	go to DenDome!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Town Area and help
	NumberMan!
	"""
	keyWait
		any = false
	end
}
script 217 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	There's Higsby!
	Let's hear what he
	has to say!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4-lc {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We handed out enough
	flyers. Want to head
	back to Higsby's?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4-lc {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I passed out all
	the flyers! Let's go
	back to Higsby's!
	"""
	keyWait
		any = false
	end
}
script 220 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Higsby's not back
	yet. Let's tell
	Nanako.
	"""
	keyWait
		any = false
	end
}
@archive 757124
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4-lc {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1030
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1027
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkItem
		item = 144
		amount = 1
		jumpIfEqual = 12
		jumpIfGreater = 12
		jumpIfLess = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Mayl's
	house!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to say hi
	to Mayl!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in,Lan!
	We don't want to
	keep Roll waiting!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's get back
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go home and
	see what happened!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's going on?
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Didn't Mom say
	something about
	your PC?
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get back
	on the Net and go
	to Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan!
	Mom's in trouble!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkFlag
		flag = 5708
		jumpIfTrue = continue
		jumpIfFalse = 26
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head to
	Castillo! Mayl's
	waiting for us!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Find the BattlePoints!
	Once we get 50,let's
	head to Castillo!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	waiting room!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Good job,Lan!
	Let's get back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for the
	boss! She's probably
	in Castillo!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the Park
	Area! I'm worried
	about Riki's Navi!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It'll be tough to
	get through the park
	with those guards!
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hope Riki's OK!
	Let's go to Castillo
	and check!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Play tag with Roll?
	Looks like we don't
	have a choice…
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if Mayl is
	nearby? Let's look
	for her!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to Glyde in
	Park Area 1!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	to the Net and look
	for Roll!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Roll must be locked
	up somewhere! We
	need to find a clue!
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to
	Park Area 3 and help
	Roll!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Shall we go to the
	castle,then?
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 69
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A challenge? What's
	gotten into Roll?
	Well,let's go see!
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Roll's
	serious… Shall we
	go to the castle?
	"""
	keyWait
		any = false
	end
}
script 69 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in to the
	toy and ask Roll
	about this!
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get some
	lunch from Mom!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Park Area! We've got
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A storm's destroying
	Park Area! We have
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time for
	the match! I'll bet
	Lilly's waiting!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what Tamako
	wants to do in
	TaleSquare?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go see
	the Master! He's in
	Town Area 4!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master will make
	us his students now!
	Let's go see him!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master's friends
	are in the Park Area!
	Let's find them!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! When you're
	ready,let's start
	breaking some rocks!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished our
	training,so let's
	go see Tamako!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in to the
	ice cream stand!
	MetalMan's waiting!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	castle and fight
	MetalMan!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What would be an
	entrance to a lively
	part of the Net…?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for those videos!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to hurry to
	the castle or we'll
	be disqualified!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if we'll
	get to meet Sal
	before the match?
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to ElecTown
	to check on Sal!
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to fight
	for Sal! Off to
	DenDome!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go check
	on Sal!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in and
	look for WoodMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to find
	WoodMan somewhere
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	and see if WoodMan
	got back to Sal!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time
	for the match!
	I hope we do well!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2480
		jumpIfTrue = 117
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What do you want to
	do until the match?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wait for me,MegaMan!
	I'm on my way!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Atsuki probably
	gave up fighting and
	is at the arena!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me in so
	that I can stop them
	from fighting!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Almost time for
	the match!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Smoke? From your PC?
	We've got to hurry!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's go put
	out the fire in
	ACDC Area!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4-lc {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's Flave up to?
	We should go over
	to Castillo!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Cooking Master…?
	Let's go to Park Area
	2 to see what's up!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Hurry to
	Park Area 2 for the
	cooking practice!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4-lc {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find the Navi
	selling ingredients
	in Park Area!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	for the cook-off
	with Flave!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	castle for our
	battle with Flave!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got the
	ingredients! Let's go
	to the Cooking Dojo!
	"""
	keyWait
		any = false
	end
}
@archive 7579F0
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkFlag
		flag = 1350
		jumpIfTrue = 13
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's say good
	morning to Mom and
	go to the airport!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What are you doing?!
	We have to get back
	to Netopia!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! The tournament
	is about to start!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	airport!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our entire planet's
	facing destruction!
	Quick! Back to NAXA!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to go
	see Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NAXA whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to
	hurry back to NAXA!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry back to
	NAXA and change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Strange guy… Right,
	off to the Netopian
	bread challenge!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I-Isn't there a-anyone
	we c… can count on…?
	Uh… ugh…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have the
	4 marks… Let's find
	the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"…
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan… Let's find the 4
	marks… and get that
	CursDoll…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Take the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	to ThunderMan…
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm as good as new!
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where could that
	"spacious area" be?
	Have any ideas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"HeroComp"…
	Where could that be?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Colosseum,Lan!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	GoddessComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	HeroComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	Area! Who knows,
	maybe we can help?
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey,Lan! Who cares
	about the tournament?
	Let's just forfeit!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	…Are you sure you're
	really MegaMan…?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-what're you saying…
	'Course I'm MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	O-Okay…
	"""
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wh-whaddya want now?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I'll ask you one
	more time. Are you
	really MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-why wouldn't I be,
	huh?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	This is so suspicious…
	"""
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's the matter!
	You're not doubtin'
	my identity,are you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's it! MegaMan,
	do you remember that
	last math test?
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was my grade?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wha?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	0 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	35 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	75 pts
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,that's right.
	Don't tell Mom!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,what's
	my favorite food?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	Sukiyaki
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Steak
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	Cutlet Curry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,curry topped with
	a fresh pork cutlet…
	Nothing beats that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	…I got it! You've
	fought a lot of Navis.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Which one was
	the strongest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	MachoManβ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	KickManΩ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	CyberManZ
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	That'd have to be…
	uh… that guy. Yeah!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha! Gotcha!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's never
	battled any of those
	Navis!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Sorry! Wrong answer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would have
	no problem answering
	that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	Even if you go to
	Yumland Area,MegaMan
	is already trashed…
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A vision of a big
	person… Hmm. Let's
	look around!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	Yumland and jack
	into the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	Yumland Area and
	check the junkyard!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	and ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	Area to see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I don't really get it,
	but let's go train
	in Yumland Area.
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Sharo Area.
	I'm exhausted!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're finally done
	training! Let's
	go see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	At least that's all
	cleared up. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where's Mr.Famous?
	Do you have any idea
	where he could be?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and fix
	that lion statue!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Time for our showdown
	with Mr.Famous!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica!
	I love festivals!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's check out
	the NetFrica Area
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net and look for
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We should take this
	WaterGod back to
	NetFrica Area,right?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and restore
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! To the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to go to Netopia
	Area to see ColdMan!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Natural cold…?
	Hmm…
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Sharo!
	We have to save the
	tournament somehow!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Back to Sharo! We
	have to stop that
	blizzard,or else!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oooh… I can't stand
	selfish people! To
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You aren't planning
	on going to Sharo,
	are you? Come on!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika and SearchMan
	are in Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	the Undernet! We can
	beat SearchMan!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Let's show SearchMan
	what we're made of!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What happened to
	ProtoMan? Let's go
	to the hotel,Lan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the Net!
	He can't be far!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	Undernet,I'm worried
	about ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to
	Undernet 5,Lan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	duel with ProtoMan!
	"""
	keyWait
		any = false
	end
}
@archive 75861C
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 2
		upper = 4
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	msgOpen
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	checkFlag
		flag = 779
		jumpIfTrue = 29
		jumpIfFalse = continue
	checkFlag
		flag = 778
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 777
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 834
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 835
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 776
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	All right! Let's
	look for that new
	electrical store!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look around
	while we're waiting.
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	checkMultiFlag
		flag = 836
		count = 2
		jumpIfAllSet = 24
		jumpIfNotAllSet = continue
	checkMultiFlag
		flag = 834
		count = 2
		jumpIfAllSet = continue
		jumpIfNotAllSet = 23
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Roll and Glyde are
	here too! Jack me
	into that stereo!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Did you say hi to
	both Mayl and Yai?
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Mayl
	and Yai want to talk.
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 26
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That's too bad about
	Dad. C'mon,let's go
	over to the Square.
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What are all those
	people doing?
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 28
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A NetBattle
	tournament? Cool!
	Let's head on home.
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's all the
	commotion? Let's go
	check it out!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our friends are in
	danger! Hurry home
	and get to ACDC Area!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	checkFlag
		flag = 788
		jumpIfTrue = 42
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkFlag
		flag = 785
		jumpIfTrue = 44
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 39
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 37
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 36
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back to
	the Net! We have to
	get that black Navi!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4-lc {
	checkFlag
		flag = 839
		jumpIfTrue = 43
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head over to
	the Square!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4-lc {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 38
		jumpIfGreater = 38
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got to find a
	way to stop the
	ultrasonic waves!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4-lc {
	checkSubArea
		lower = 0
		upper = 1
		jumpIfInRange = continue
		jumpIfOutOfRange = 40
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back
	to the Square!
	"""
	keyWait
		any = false
	end
}
script 39 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Roll's in trouble!
	Let's hurry back
	to the ElTwrComp!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,jack me into the
	Tower!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This thing looks
	like a chip. Let's
	take it to Higsby.
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go home.
	I can't wait for the
	tournament tomorrow!
	"""
	keyWait
		any = false
	end
}
script 43 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find another
	way to the Square!
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4-lc {
	msgOpen
	"""
	MegaMan isn't
	inside the PET…
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	checkFlag
		flag = 791
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 47
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 46
		jumpIfFalse = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 49
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	Square!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The gray Navi in
	Town Area 3 will
	enter us,right?
	"""
	keyWait
		any = false
	end
}
script 47 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're signed up!
	Now we can enter
	the preliminary!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4-lc {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 51
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = continue
		jumpIfOutOfRange = 52
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We finished the
	three tasks. Let's go
	tell that guy!!
	"""
	keyWait
		any = false
	end
}
script 49 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This is the meeting
	place,right?
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to DenDome.
	We've got a
	tournament to win!
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's complete the
	three tasks to pass
	the preliminary!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished the
	three tasks. Now back
	to ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4-lc {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The kidnapper's clues
	should lead us to
	Chisao!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 135
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head over to
	the Square!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We finally get to
	face Dex! Let's show
	him what we've got!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	C'mon Lan,we've got
	to find that numbered
	data!
	"""
	keyWait
		any = false
	end
}
script 135 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This is the place
	the culprit
	designated,right?
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4-lc {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	hotdog stand.
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in,Lan. I'll
	fix the hotdog fryer!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Looks like only Mr.
	Match can fix this.
	Let's go find him!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm worried about
	FireMan,but let's go
	to the hotdog stand!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,the match is
	going to start!
	It's showtime!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4-lc {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's tune up our
	PET! It's in front
	of the Dome,right?
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We need to find
	someone to fix our
	folder!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,that "
	"""
	printItem
		buffer = 0
		item = 9
	"""
	"
	might help us figure
	out the password.
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our folder's fixed,
	so let's head back
	to the arena!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match won't
	start for a while.
	What should we do?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's give the top
	to that elderly guy!
	Where'd he go?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to ACDC Park,
	where the elderly
	NetBattlers meet up!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Gotta take a test
	in Town Area? Let's
	give it a shot,Lan!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm a little worried.
	Why don't we go
	check on things?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oh no,the match is
	about to start!
	Quick! To the arena!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Chief's Navi
	should be in ACDC,
	right? Let's go!
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4-lc {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's some random
	fortune know?! C'mon,
	let's go outside!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	So that girl's our
	opponent. She seems
	a bit much to handle…
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what all
	that commotion was
	about?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to hurry
	and find AquaMan or
	the Net's in danger!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's get back
	on the Net and chase
	down AquaMan!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	Shuko! Maybe someone
	knows where she is?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 179
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Shuko's in
	ElecTown1!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to AquaMan!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm glad that's all
	cleared up. Let's go
	to DenDome!
	"""
	keyWait
		any = false
	end
}
script 179 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Shuko should be in
	this area…
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4-lc {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Yuko's waiting
	outside the Dome.
	Let's go!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder who came to
	see you? Let's go
	home and find out!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4-lc {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We got rid of the
	evil ghosts. Let's
	tell Yuko's father!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got to put
	those evil ghosts to
	rest! Jack me in!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's time to battle
	Yuko! Let's go to
	the Dome!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm feeling pumped!
	Let's go outside and
	get some fresh air!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Tetsu is really
	something! We should
	thank him!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Town
	Area 3! Tetsu needs
	our help!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! Tetsu's
	Navi is in trouble!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! We can't
	just do nothing!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Dome! We have a duel
	of honor to attend!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4-lc {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Higsby must have a
	reason for quitting.
	Let's go to his shop!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in! We have to
	hand out 10+ Higsby's
	flyers in Cyberworld!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! Higsby's
	warehouse is in the
	Town Area!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4-lc {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to get the
	warehouse key and
	help NumberMan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm concerned about
	Higsby. Let's go
	see him!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Time for our battle
	with Higsby! Let's
	go to the stadium!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Town Area and help
	NumberMan!
	"""
	keyWait
		any = false
	end
}
script 217 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	There's Higsby!
	Let's hear what he
	has to say!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We handed out enough
	flyers. Want to head
	back to Higsby's?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I passed out all
	the flyers! Let's go
	back to Higsby's!
	"""
	keyWait
		any = false
	end
}
@archive 759090
@size 256

script 0 mmbn4-lc {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4-lc {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Mayl's
	house!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go home and
	see what happened!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get back
	on the Net and go
	to Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head to
	Castillo! Mayl's
	waiting for us!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Find the BattlePoints!
	Once we get 50,let's
	head to Castillo!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	waiting room!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Good job,Lan!
	Let's get back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for the
	boss! She's probably
	in Castillo!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the Park
	Area! I'm worried
	about Riki's Navi!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It'll be tough to
	get through the park
	with those guards!
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hope Riki's OK!
	Let's go to Castillo
	and check!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Play tag with Roll?
	Looks like we don't
	have a choice…
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if Mayl is
	nearby? Let's look
	for her!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to Glyde in
	Park Area 1!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	to the Net and look
	for Roll!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Roll must be locked
	up somewhere! We
	need to find a clue!
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to
	Park Area 3 and help
	Roll!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Shall we go to the
	castle,then?
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A challenge? What's
	gotten into Roll?
	Well,let's go see!
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Roll's
	serious… Shall we
	go to the castle?
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back home!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Park Area! We've got
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A storm's destroying
	Park Area! We have
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time for
	the match! I'll bet
	Lilly's waiting!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what Tamako
	wants to do in
	TaleSquare?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go see
	the Master! He's in
	Town Area 4!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master will make
	us his students now!
	Let's go see him!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master's friends
	are in the Park Area!
	Let's find them!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! When you're
	ready,let's start
	breaking some rocks!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished our
	training,so let's
	go see Tamako!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in to the
	ice cream stand!
	MetalMan's waiting!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	castle and fight
	MetalMan!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What would be an
	entrance to a lively
	part of the Net…?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for those videos!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to hurry to
	the castle or we'll
	be disqualified!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if we'll
	get to meet Sal
	before the match?
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Sal should be around
	here somewhere…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to fight
	for Sal! Off to
	DenDome!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go check
	on Sal!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in and
	look for WoodMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to find
	WoodMan somewhere
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	and see if WoodMan
	got back to Sal!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time
	for the match!
	I hope we do well!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What do you want to
	do until the match?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wait for me,MegaMan!
	I'm on my way!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Atsuki probably
	gave up fighting and
	is at the arena!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me in so
	that I can stop them
	from fighting!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Almost time for
	the match!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Smoke? From your PC?
	We've got to hurry!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4-lc {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's Flave up to?
	We should go over
	to Castillo!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Cooking Master…?
	Let's go to Park Area
	2 to see what's up!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Hurry to
	Park Area 2 for the
	cooking practice!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4-lc {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find the Navi
	selling ingredients
	in Park Area!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	for the cook-off
	with Flave!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	castle for our
	battle with Flave!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got the
	ingredients! Let's go
	to the Cooking Dojo!
	"""
	keyWait
		any = false
	end
}
@archive 759878
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	airport!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What are you doing?!
	We have to get back
	to Netopia!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! The tournament
	is about to start!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to go
	see Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NAXA whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to
	hurry back to NAXA!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry back to
	NAXA and change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Strange guy… Right,
	off to the Netopian
	bread challenge!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I-Isn't there a-anyone
	we c… can count on…?
	Uh… ugh…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have the
	4 marks… Let's find
	the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"…
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan… Let's find the 4
	marks… and get that
	CursDoll…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Take the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	to ThunderMan…
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm as good as new!
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where could that
	"spacious area" be?
	Have any ideas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"HeroComp"…
	Where could that be?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Colosseum,Lan!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	GoddessComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	HeroComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	Area! Who knows,
	maybe we can help?
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey,Lan! Who cares
	about the tournament?
	Let's just forfeit!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	…Are you sure you're
	really MegaMan…?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-what're you saying…
	'Course I'm MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	O-Okay…
	"""
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wh-whaddya want now?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I'll ask you one
	more time. Are you
	really MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-why wouldn't I be,
	huh?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	This is so suspicious…
	"""
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's the matter!
	You're not doubtin'
	my identity,are you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's it! MegaMan,
	do you remember that
	last math test?
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was my grade?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wha?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	0 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	35 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	75 pts
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,that's right.
	Don't tell Mom!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,what's
	my favorite food?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	Sukiyaki
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Steak
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	Cutlet Curry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,curry topped with
	a fresh pork cutlet…
	Nothing beats that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	…I got it! You've
	fought a lot of Navis.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Which one was
	the strongest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	MachoManβ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	KickManΩ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	CyberManZ
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	That'd have to be…
	uh… that guy. Yeah!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha! Gotcha!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's never
	battled any of those
	Navis!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Sorry! Wrong answer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would have
	no problem answering
	that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	Even if you go to
	Yumland Area,MegaMan
	is already trashed…
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A vision of a big
	person… Hmm. Let's
	look around!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	Yumland and jack
	into the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	Yumland Area and
	check the junkyard!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	and ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	Area to see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I don't really get it,
	but let's go train
	in Yumland Area.
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Sharo Area.
	I'm exhausted!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're finally done
	training! Let's
	go see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	At least that's all
	cleared up. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where's Mr.Famous?
	Do you have any idea
	where he could be?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and fix
	that lion statue!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Time for our showdown
	with Mr.Famous!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica!
	I love festivals!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's check out
	the NetFrica Area
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net and look for
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We should take this
	WaterGod back to
	NetFrica Area,right?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and restore
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! To the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to go to Netopia
	Area to see ColdMan!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Natural cold…?
	Hmm…
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Sharo!
	We have to save the
	tournament somehow!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Back to Sharo! We
	have to stop that
	blizzard,or else!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oooh… I can't stand
	selfish people! To
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You aren't planning
	on going to Sharo,
	are you? Come on!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika and SearchMan
	are in Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	the Undernet! We can
	beat SearchMan!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Let's show SearchMan
	what we're made of!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What happened to
	ProtoMan? Let's go
	to the hotel,Lan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the Net!
	He can't be far!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	Undernet,I'm worried
	about ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to
	Undernet 5,Lan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	duel with ProtoMan!
	"""
	keyWait
		any = false
	end
}
@archive 75A488
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 12
		upper = 12
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkChapter
		lower = 11
		upper = 11
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 10
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The tournament's
	going to start!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we did it!
	Let's go back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	checkPlaythrough
		lower = 1
		upper = 255
		jumpIfInRange = continue
		jumpIfOutOfRange = 8
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we did it!
	Let's go back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	checkFlag
		flag = 5696
		jumpIfTrue = continue
		jumpIfFalse = 9
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we did it!
	Let's go back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4-lc {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got some time
	before the match.
	Let's look around!
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The kidnapper's clues
	should lead us to
	Chisao!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head over to
	ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We finally get to
	face Dex! Let's show
	him what we've got!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's collect the
	number data and head
	for ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4-lc {
	checkFlag
		flag = 1613
		jumpIfTrue = 148
		jumpIfFalse = continue
	checkFlag
		flag = 1612
		jumpIfTrue = 147
		jumpIfFalse = continue
	checkFlag
		flag = 1606
		jumpIfTrue = 145
		jumpIfFalse = continue
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	hotdog stand.
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in,Lan. I'll
	fix the hotdog fryer!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Looks like only Mr.
	Match can fix this.
	Let's go find him!
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm worried about
	FireMan,but let's go
	to the hotdog stand!
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,the match is
	going to start!
	It's showtime!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 1607
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1608
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1609
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1610
		jumpIfTrue = continue
		jumpIfFalse = 146
	checkFlag
		flag = 1611
		jumpIfTrue = continue
		jumpIfFalse = 146
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That should be all
	of them. Let's go
	to the Stadium!
	"""
	keyWait
		any = false
	end
}
script 146 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find the five
	ignition devices
	inside the Dome!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to stop the MT
	ignition devices!
	"""
	keyWait
		any = false
	end
}
script 148 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We've
	almost stopped the
	MT ignition devices!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4-lc {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's tune up our
	PET! It's in front
	of the Dome,right?
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We need to find
	someone to fix our
	folder!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,that "
	"""
	printItem
		buffer = 0
		item = 9
	"""
	"
	might help us figure
	out the password.
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our folder's fixed,
	so let's head back
	to the arena!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match won't
	start for a while.
	What should we do?
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's give the top
	to that elderly guy!
	Where'd he go?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to ACDC Park,
	where the elderly
	NetBattlers meet up!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Gotta take a test
	in Town Area? Let's
	give it a shot,Lan!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm a little worried.
	Why don't we go
	check on things?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oh no,the match is
	about to start!
	Quick! To the arena!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Chief's Navi
	should be in ACDC,
	right? Let's go!
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4-lc {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	checkFlag
		flag = 1794
		jumpIfTrue = 171
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's some random
	fortune know?! C'mon,
	let's go outside!
	"""
	keyWait
		any = false
	end
}
script 171 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	So that girl's our
	opponent. She seems
	a bit much to handle…
	"""
	keyWait
		any = false
	end
}
script 172 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what all
	that commotion was
	about?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to hurry
	and find AquaMan or
	the Net's in danger!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's get back
	on the Net and chase
	down AquaMan!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	Shuko! Maybe someone
	knows where she is?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Shuko's in
	ElecTown1!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to AquaMan!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm glad that's all
	cleared up. Let's go
	to DenDome!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4-lc {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next match won't
	be for a while. What
	should we do?
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Yuko's waiting
	outside the Dome.
	Let's go!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder who came to
	see you? Let's go
	home and find out!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4-lc {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We got rid of the
	evil ghosts. Let's
	tell Yuko's father!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got to put
	those evil ghosts to
	rest! Jack me in!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's time to battle
	Yuko! Let's go to
	the Dome!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm feeling pumped!
	Let's go outside and
	get some fresh air!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Tetsu is really
	something! We should
	thank him!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Town
	Area 3! Tetsu needs
	our help!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! Tetsu's
	Navi is in trouble!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net! We can't
	just do nothing!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Dome! We have a duel
	of honor to attend!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4-lc {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Higsby must have a
	reason for quitting.
	Let's go to his shop!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in! We have to
	hand out 10+ Higsby's
	flyers in Cyberworld!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! Higsby's
	warehouse is in the
	Town Area!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4-lc {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to get the
	warehouse key and
	help NumberMan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm concerned about
	Higsby. Let's go
	see him!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 231
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Time for our battle
	with Higsby! Let's
	go to DenDome!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Town Area and help
	NumberMan!
	"""
	keyWait
		any = false
	end
}
script 217 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	There's Higsby!
	Let's hear what he
	has to say!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4-lc {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We handed out enough
	flyers. Want to head
	back to Higsby's?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4-lc {
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 220
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I passed out all
	the flyers! Let's go
	back to Higsby's!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match is about to
	start! Hurry through
	the door in the back!
	"""
	keyWait
		any = false
	end
}
script 231 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	waiting room!
	"""
	keyWait
		any = false
	end
}
@archive 75AD28
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4-lc {
	checkFlag
		flag = 296
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 18
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 14
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Mayl's
	house!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go home and
	see what happened!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get back
	on the Net and go
	to Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head to
	Castillo! Mayl's
	waiting for us!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Find the BattlePoints!
	Once we get 50,let's
	head to Castillo!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	waiting room!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Good job,Lan!
	Let's get back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for the
	boss! She's probably
	in Castillo!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the Park
	Area! I'm worried
	about Riki's Navi!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It'll be tough to
	get through the park
	with those guards!
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hope Riki's OK!
	Let's go to Castillo
	and check!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Play tag with Roll?
	Looks like we don't
	have a choice…
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if Mayl is
	nearby? Let's look
	for her!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to Glyde in
	Park Area 1!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	to the Net and look
	for Roll!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Roll must be locked
	up somewhere! We
	need to find a clue!
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to
	Park Area 3 and help
	Roll!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Shall we go to the
	castle,then?
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A challenge? What's
	gotten into Roll?
	Well,let's go see!
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Roll's
	serious… Shall we
	go to the castle?
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
}
script 72 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back home!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Park Area! We've got
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A storm's destroying
	Park Area! We have
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time for
	the match! I'll bet
	Lilly's waiting!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what Tamako
	wants to do in
	TaleSquare?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go see
	the Master! He's in
	Town Area 4!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master will make
	us his students now!
	Let's go see him!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master's friends
	are in the Park Area!
	Let's find them!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! When you're
	ready,let's start
	breaking some rocks!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished our
	training,so let's
	go see Tamako!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in to the
	ice cream stand!
	MetalMan's waiting!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	castle and fight
	MetalMan!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What would be an
	entrance to a lively
	part of the Net…?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for those videos!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to hurry to
	the castle or we'll
	be disqualified!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if we'll
	get to meet Sal
	before the match?
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to ElecTown
	to check on Sal!
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to fight
	for Sal! Off to
	the stadium!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go check
	on Sal!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in and
	look for WoodMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to find
	WoodMan somewhere
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	and see if WoodMan
	got back to Sal!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time
	for the match!
	I hope we do well!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What do you want to
	do until the match?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wait for me,MegaMan!
	I'm on my way!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Atsuki probably
	gave up fighting and
	is at the arena!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me in so
	that I can stop them
	from fighting!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Almost time for
	the match!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Smoke? From your PC?
	We've got to hurry!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4-lc {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's Flave up to?
	We should go over
	to Castillo!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Cooking Master…?
	Let's go to Park Area
	2 to see what's up!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Hurry to
	Park Area 2 for the
	cooking practice!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4-lc {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find the Navi
	selling ingredients
	in Park Area!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Castillo
	for the cook-off
	with Flave!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	castle for our
	battle with Flave!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got the
	ingredients! Let's go
	to the Cooking Dojo!
	"""
	keyWait
		any = false
	end
}
@archive 75B514
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	airport!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What are you doing?!
	We have to get back
	to Netopia!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! The tournament
	is about to start!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our entire planet's
	facing destruction!
	Quick! Back to NAXA!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to go
	see Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NAXA whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to
	hurry back to NAXA!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry back to
	NAXA and change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Strange guy… Right,
	off to the Netopian
	bread challenge!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I-Isn't there a-anyone
	we c… can count on…?
	Uh… ugh…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have the
	4 marks… Let's find
	the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"…
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan… Let's find the 4
	marks… and get that
	CursDoll…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Take the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	to ThunderMan…
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm as good as new!
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where could that
	"spacious area" be?
	Have any ideas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"HeroComp"…
	Where could that be?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Colosseum,Lan!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	GoddessComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	HeroComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	Area! Who knows,
	maybe we can help?
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey,Lan! Who cares
	about the tournament?
	Let's just forfeit!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	…Are you sure you're
	really MegaMan…?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-what're you saying…
	'Course I'm MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	O-Okay…
	"""
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wh-whaddya want now?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I'll ask you one
	more time. Are you
	really MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-why wouldn't I be,
	huh?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	This is so suspicious…
	"""
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's the matter!
	You're not doubtin'
	my identity,are you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's it! MegaMan,
	do you remember that
	last math test?
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was my grade?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wha?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	0 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	35 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	75 pts
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,that's right.
	Don't tell Mom!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,what's
	my favorite food?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	Sukiyaki
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Steak
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	Cutlet Curry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,curry topped with
	a fresh pork cutlet…
	Nothing beats that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	…I got it! You've
	fought a lot of Navis.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Which one was
	the strongest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	MachoManβ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	KickManΩ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	CyberManZ
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	That'd have to be…
	uh… that guy. Yeah!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha! Gotcha!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's never
	battled any of those
	Navis!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Sorry! Wrong answer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would have
	no problem answering
	that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	Even if you go to
	Yumland Area,MegaMan
	is already trashed…
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A vision of a big
	person… Hmm. Let's
	look around!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	Yumland and jack
	into the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	Yumland Area and
	check the junkyard!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	and ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	Area to see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I don't really get it,
	but let's go train
	in Yumland Area.
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Sharo Area.
	I'm exhausted!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're finally done
	training! Let's
	go see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	At least that's all
	cleared up. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where's Mr.Famous?
	Do you have any idea
	where he could be?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and fix
	that lion statue!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Time for our showdown
	with Mr.Famous!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica!
	I love festivals!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's check out
	the NetFrica Area
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net and look for
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We should take this
	WaterGod back to
	NetFrica Area,right?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and restore
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! To the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to go to Netopia
	Area to see ColdMan!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Natural cold…?
	Hmm…
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Sharo!
	We have to save the
	tournament somehow!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Back to Sharo! We
	have to stop that
	blizzard,or else!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oooh… I can't stand
	selfish people! To
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You aren't planning
	on going to Sharo,
	are you? Come on!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika and SearchMan
	are in Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	the Undernet! We can
	beat SearchMan!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Let's show SearchMan
	what we're made of!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What happened to
	ProtoMan? Let's go
	to the hotel,Lan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the Net!
	He can't be far!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	Undernet,I'm worried
	about ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to
	Undernet 5,Lan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	duel with ProtoMan!
	"""
	keyWait
		any = false
	end
}
@archive 75C124
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 25
		upper = 25
		jumpIfInRange = 48
		jumpIfOutOfRange = continue
	checkChapter
		lower = 23
		upper = 24
		jumpIfInRange = 45
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1038
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1037
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkItem
		item = 27
		amount = 1
		jumpIfEqual = 15
		jumpIfGreater = 15
		jumpIfLess = continue
	checkFlag
		flag = 1097
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1036
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1096
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1035
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We were supposed
	to meet at the
	entrance,right?
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Something's strange…
	Let's check it out!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Looks like something
	is up at Park Area 3!
	Let's go look!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hope Mayl isn't
	angry at us for
	keeping her waiting…
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get some ice
	cream! I wonder where
	they sell it?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back
	to Mayl!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Mayl sure is in high
	spirits… Let's go to
	the VampireManor!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Looks like Mayl went
	in ahead of us…
	Let's go on in!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if there's
	any real vampires
	in here?
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wasn't that Mayl
	that just ran by?
	Let's go on!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkFlag
		flag = 1045
		jumpIfTrue = 28
		jumpIfFalse = continue
	checkFlag
		flag = 1044
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to stop
	the ToyRobo and
	save everyone!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's go back
	to the VampireManor!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = continue
		jumpIfOutOfRange = 29
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's pitch black…
	Let's find the ToyRobo
	and jack in to it!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack in!
	We need to get back
	and handle this!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's get back
	to the VampireManor!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 42
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Find the BattlePoints!
	Once we get 50,let's
	go to CenterSquare!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	waiting room!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	So we come back here
	after we get 50
	BattlePoints,right?
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Good job,Lan!
	Let's get back to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack in to the
	NetBattle machine!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 2055
		jumpIfTrue = 55
		jumpIfFalse = continue
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Both that operator
	and his Navi were
	kinda scary,huh?
	"""
	keyWait
		any = false
	end
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for the
	boss! She's probably
	in Castillo!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the Park
	Area! I'm worried
	about Riki's Navi!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It'll be tough to
	get through the park
	with those guards!
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I hope Riki's OK…
	He should be around
	here,right?
	"""
	keyWait
		any = false
	end
}
script 55 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go into the
	castle and watch
	Riki's match!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Play tag with Roll?
	Looks like we don't
	have a choice…
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if Mayl is
	nearby? Let's look
	for her!
	"""
	keyWait
		any = false
	end
}
script 61 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	and go to Glyde in
	Park Area 1!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's jack in
	to the Net and look
	for Roll!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Roll must be locked
	up somewhere! We
	need to find a clue!
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to
	Park Area 3 and help
	Roll!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Shall we go to the
	castle,then?
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A challenge? What's
	gotten into Roll?
	Well,let's go see!
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It looks like Roll's
	serious… Shall we
	go to the castle?
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
	checkFlag
		flag = 2179
		jumpIfTrue = 71
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	That scream came
	from TaleSquare!
	"""
	keyWait
		any = false
	end
}
script 71 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to help
	Lilly!
	"""
	keyWait
		any = false
	end
}
script 72 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back home!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	Park Area! We've got
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A storm's destroying
	Park Area! We have
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 76
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time for
	the match! I'll bet
	Lilly's waiting!
	"""
	keyWait
		any = false
	end
}
script 76 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! There's Lilly,
	over there!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 88
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what Tamako
	wants to do in
	TaleSquare?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go see
	the Master! He's in
	Town Area 4!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master will make
	us his students now!
	Let's go see him!
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The Master's friends
	are in the Park Area!
	Let's find them!
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! When you're
	ready,let's start
	breaking some rocks!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 89
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've finished our
	training,so let's
	go see Tamako!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack in to the
	ice cream stand!
	MetalMan's waiting!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to the
	castle and fight
	MetalMan!
	"""
	keyWait
		any = false
	end
}
script 88 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder what Tamako
	wanted to do around
	here?
	"""
	keyWait
		any = false
	end
}
script 89 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	This is the right
	place,isn't it?
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What would be an
	entrance to a lively
	part of the Net…?
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for those videos!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to hurry to
	the castle or we'll
	be disqualified!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if we'll
	get to meet Sal
	before the match?
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to ElecTown
	to check on Sal!
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to fight
	for Sal! Off to
	DenDome!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go check
	on Sal!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in and
	look for WoodMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have to find
	WoodMan somewhere
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder if WoodMan
	got back to Sal?
	She should be here…
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	It's almost time
	for the match!
	I hope we do well!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What do you want to
	do until the match?
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wait for me,MegaMan!
	I'm on my way!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Atsuki probably
	gave up fighting and
	is at the arena!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me in so
	that I can stop them
	from fighting!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Almost time for
	the match!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Smoke? From your PC?
	We've got to hurry!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4-lc {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's Flave up to?
	He should be nearby,
	so let's look for him!
	"""
	keyWait
		any = false
	end
}
script 121 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan? Are you OK?
	…Lan!
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Cooking Master…?
	Let's go to Park Area
	2 to see what's up!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Hurry to
	Park Area 2 for the
	cooking practice!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4-lc {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's find the Navi
	selling ingredients
	in Park Area!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get to
	TaleSquare for the
	cook-off with Flave!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry to the
	castle for our
	battle with Flave!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We've got the
	ingredients! Let's go
	to the Cooking Dojo!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match is starting!
	Take the elevator
	to the stadium!
	"""
	keyWait
		any = false
	end
}
@archive 75CB74
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	airport!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What are you doing?!
	We have to get back
	to Netopia!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! The tournament
	is about to start!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our entire planet's
	facing destruction!
	Quick! Back to NAXA!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to go
	see Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NAXA whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to
	hurry back to NAXA!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry back to
	NAXA and change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Strange guy… Right,
	off to the Netopian
	bread challenge!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I-Isn't there a-anyone
	we c… can count on…?
	Uh… ugh…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have the
	4 marks… Let's find
	the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"…
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan… Let's find the 4
	marks… and get that
	CursDoll…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Take the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	to ThunderMan…
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm as good as new!
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where could that
	"spacious area" be?
	Have any ideas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"HeroComp"…
	Where could that be?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Colosseum,Lan!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	GoddessComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	HeroComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	Area! Who knows,
	maybe we can help?
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey,Lan! Who cares
	about the tournament?
	Let's just forfeit!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	…Are you sure you're
	really MegaMan…?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-what're you saying…
	'Course I'm MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	O-Okay…
	"""
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wh-whaddya want now?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I'll ask you one
	more time. Are you
	really MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-why wouldn't I be,
	huh?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	This is so suspicious…
	"""
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's the matter!
	You're not doubtin'
	my identity,are you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's it! MegaMan,
	do you remember that
	last math test?
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was my grade?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wha?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	0 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	35 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	75 pts
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,that's right.
	Don't tell Mom!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,what's
	my favorite food?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	Sukiyaki
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Steak
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	Cutlet Curry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,curry topped with
	a fresh pork cutlet…
	Nothing beats that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	…I got it! You've
	fought a lot of Navis.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Which one was
	the strongest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	MachoManβ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	KickManΩ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	CyberManZ
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	That'd have to be…
	uh… that guy. Yeah!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha! Gotcha!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's never
	battled any of those
	Navis!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Sorry! Wrong answer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would have
	no problem answering
	that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	Even if you go to
	Yumland Area,MegaMan
	is already trashed…
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A vision of a big
	person… Hmm. Let's
	look around!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	Yumland and jack
	into the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	Yumland Area and
	check the junkyard!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	and ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	Area to see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I don't really get it,
	but let's go train
	in Yumland Area.
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Sharo Area.
	I'm exhausted!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're finally done
	training! Let's
	go see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	At least that's all
	cleared up. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where's Mr.Famous?
	Do you have any idea
	where he could be?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and fix
	that lion statue!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Time for our showdown
	with Mr.Famous!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica!
	I love festivals!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's check out
	the NetFrica Area
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net and look for
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We should take this
	WaterGod back to
	NetFrica Area,right?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and restore
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! To the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to go to Netopia
	Area to see ColdMan!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Natural cold…?
	Hmm…
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Sharo!
	We have to save the
	tournament somehow!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Back to Sharo! We
	have to stop that
	blizzard,or else!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oooh… I can't stand
	selfish people! To
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You aren't planning
	on going to Sharo,
	are you? Come on!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika and SearchMan
	are in Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	the Undernet! We can
	beat SearchMan!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Let's show SearchMan
	what we're made of!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What happened to
	ProtoMan? Let's go
	to the hotel,Lan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the Net!
	He can't be far!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	Undernet,I'm worried
	about ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to
	Undernet 5,Lan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	duel with ProtoMan!
	"""
	keyWait
		any = false
	end
}
@archive 75D784
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 35
		upper = 36
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1286
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1285
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1379
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 5703
		jumpIfTrue = continue
		jumpIfFalse = 11
	checkFlag
		flag = 5575
		jumpIfTrue = continue
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,you've got mail!
	Let's read it!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go see that
	guy from the NetBattle
	Association!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	checkFlag
		flag = 1377
		jumpIfTrue = continue
		jumpIfFalse = 13
	checkFlag
		flag = 1376
		jumpIfTrue = continue
		jumpIfFalse = 13
	checkFlag
		flag = 1375
		jumpIfTrue = continue
		jumpIfFalse = 13
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Isn't it about time
	we go back to see
	Bonds?
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's pass the time
	by exploring
	Netopia.
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's look for
	someplace to jack in!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in,Lan!
	We have to hurry and
	find that "KeyData"!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's head over
	to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	waiting room until
	our next match.
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Our entire planet's
	facing destruction!
	Quick! Back to NAXA!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,we have to go
	see Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NAXA whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! We have to
	hurry back to NAXA!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's hurry back to
	NAXA and change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Strange guy… Right,
	off to the Netopian
	bread challenge!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I-Isn't there a-anyone
	we c… can count on…?
	Uh… ugh…
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We have the
	4 marks… Let's find
	the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"…
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan… Let's find the 4
	marks… and get that
	CursDoll…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Take the "
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"
	to ThunderMan…
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I'm as good as new!
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	checkFlag
		flag = 2642
		jumpIfTrue = 116
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where could that
	"spacious area" be?
	Have any ideas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	checkFlag
		flag = 2643
		jumpIfTrue = 117
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	"HeroComp"…
	Where could that be?
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to the
	Colosseum,Lan!
	"""
	keyWait
		any = false
	end
}
script 116 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	GoddessComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's head back to the
	HeroComp! We can't
	lose at FootBomb!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 128
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 127
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	Area! Who knows,
	maybe we can help?
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hey,Lan! Who cares
	about the tournament?
	Let's just forfeit!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	…Are you sure you're
	really MegaMan…?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-what're you saying…
	'Course I'm MegaMan!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	O-Okay…
	"""
	keyWait
		any = false
	flagSet
		flag = 2714
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Wh-whaddya want now?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	I'll ask you one
	more time. Are you
	really MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wh-why wouldn't I be,
	huh?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	This is so suspicious…
	"""
	keyWait
		any = false
	flagSet
		flag = 2715
	end
}
script 128 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What's the matter!
	You're not doubtin'
	my identity,are you?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	That's it! MegaMan,
	do you remember that
	last math test?
	"""
	keyWait
		any = false
	clearMsg
	"""
	What was my grade?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Wha?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	0 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	35 pts
	
	"""
	positionOptionVertical
		width = 4
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	75 pts
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = continue,
			jump = 129,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,that's right.
	Don't tell Mom!
	"""
	keyWait
		any = false
	clearMsg
	"""
	All right,what's
	my favorite food?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	Sukiyaki
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	Steak
	
	"""
	positionOptionVertical
		width = 5
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	Cutlet Curry
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = 129,
			jump = 129,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Yeah,curry topped with
	a fresh pork cutlet…
	Nothing beats that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	…I got it! You've
	fought a lot of Navis.
	"""
	keyWait
		any = false
	clearMsg
	"""
	Which one was
	the strongest?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 0
		right = 0
		up = 2
		down = 1
	space
		count = 1
	"""
	MachoManβ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 2
	space
		count = 1
	"""
	KickManΩ
	
	"""
	positionOptionVertical
		width = 8
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 0
	space
		count = 1
	"""
	CyberManZ
	"""
	select
		default = 0
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	That'd have to be…
	uh… that guy. Yeah!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Ha! Gotcha!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan's never
	battled any of those
	Navis!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 129 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Sorry! Wrong answer!
	"""
	keyWait
		any = false
	clearMsg
	"""
	MegaMan would have
	no problem answering
	that!
	"""
	keyWait
		any = false
	clearMsg
	"""
	Who are you?!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Argh! Guess I can't
	hide it any longer…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Th-the name's JunkMan…
	The new owner of
	MegaMan's body…
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	What?!
	"""
	keyWait
		any = false
	clearMsg
	"""
	So where's the real
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	By now,his ID chip's
	under a pile of trash
	in Yumland Area.
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Go get me that chip
	right this instant!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	Who,me?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Who else?! If you
	don't like it,I'll
	operate you myself!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	G-Go ahead and try!
	Don't expect me to
	cooperate,though!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	If that's how you
	want it,fine! Go to
	Yumland Area now!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = JunkMan
	"""
	M-Make me!
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = Lan
	"""
	Why you little…
	When I say go,
	I mean it!
	"""
	keyWait
		any = false
	flagSet
		flag = 2716
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = JunkMan
	msgOpen
	"""
	Even if you go to
	Yumland Area,MegaMan
	is already trashed…
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	A vision of a big
	person… Hmm. Let's
	look around!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	checkSubArea
		lower = 5
		upper = 6
		jumpIfInRange = 137
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	checkSubArea
		lower = 5
		upper = 6
		jumpIfInRange = 138
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	Yumland and jack
	into the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get over to
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	Yumland Area and
	check the junkyard!
	"""
	keyWait
		any = false
	end
}
script 137 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's ask if we can
	jack into the
	BuddhaComp.
	"""
	keyWait
		any = false
	end
}
script 138 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me into
	the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 146
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	and ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 146 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for the
	head of the youth
	group.
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica
	Area to see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I don't really get it,
	but let's go train
	in Yumland Area.
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The next training
	spot is Sharo Area.
	I'm exhausted!
	"""
	keyWait
		any = false
	end
}
script 154 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to
	NetFrica and fix
	that lion statue!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We're finally done
	training! Let's
	go see KendoMan!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	At least that's all
	cleared up. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where's Mr.Famous?
	Do you have any idea
	where he could be?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = continue
		jumpIfOutOfRange = 154
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's take care
	of the lion statue!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Time for our showdown
	with Mr.Famous!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 161
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to NetFrica!
	I love festivals!
	"""
	keyWait
		any = false
	end
}
script 161 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	I wonder where
	Paulie is?
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Let's check out
	the NetFrica Area
	on the Net!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get back on
	the Net and look for
	the WaterGod!
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We should take this
	WaterGod back to
	NetFrica Area,right?
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go look
	for the "
	"""
	printItem
		buffer = 0
		item = 118
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = continue
		jumpIfOutOfRange = 167
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's fix the
	WaterGod!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 167 mmbn4-lc {
	msgOpen
	end
}
script 168 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! To the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 180
		jumpIfGreater = 180
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 179
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to go to Netopia
	Area to see ColdMan!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Natural cold…?
	Hmm…
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = 183
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to Sharo!
	We have to save the
	tournament somehow!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's fix the
	antennas!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 179 mmbn4-lc {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	We need to look for
	something to shovel
	away the snow!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4-lc {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = continue
		jumpIfOutOfRange = 182
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's fix the
	antennas!
	Jack me in!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Oooh… I can't stand
	selfish people! To
	the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Back to Sharo! We
	have to stop that
	blizzard,or else!
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Well we're in Sharo
	now,but how will we
	stop the blizzard?
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's get our minds
	off things and
	explore Netopia.
	"""
	keyWait
		any = false
	end
}
script 186 mmbn4-lc {
	checkSubArea
		lower = 8
		upper = 9
		jumpIfInRange = 190
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	You aren't planning
	on going to Sharo,
	are you? Come on!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika and SearchMan
	are in Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go back to
	the Undernet! We can
	beat SearchMan!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	Let's show SearchMan
	what we're made of!
	"""
	keyWait
		any = false
	end
}
script 190 mmbn4-lc {
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 191
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Raika was saying
	something about the
	SpaceCenter,right?
	"""
	keyWait
		any = false
	end
}
script 191 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Maybe there's a clue
	here to help us find
	Raika?
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	What happened to
	ProtoMan? Let's go
	to the hotel,Lan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the Net!
	He can't be far!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's look for
	ProtoMan on the
	Undernet,Lan!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go back to the
	Undernet,I'm worried
	about ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's go to
	Undernet 5,Lan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 230
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	duel with ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 230 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The match is about to
	start! Hurry through
	the door in the back!
	"""
	keyWait
		any = false
	end
}
@archive 75E578
@size 255

script 0 mmbn4-lc {
	msgOpen
	keyWait
		any = false
	end
}
@archive 75E5C4
@size 255

@archive 75E608
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	The far door on the
	second floor,right?
	Come on,let's hurry!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack directly into
	the Nets around the
	world and fix them!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's find the
	Official Navi in the
	Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Jack me in! We have
	to catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Where are Dad and
	the others? Maybe
	someone here knows?
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan,let's go to the
	roof!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Let's jack in
	whenever you're
	ready,Lan!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Lan! Jack me in!
	We're out of time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = MegaMan
	msgOpen
	"""
	Hurry! We have to
	change the
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
@archive 75E7B0
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 7
		upper = 255
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkChapter
		lower = 6
		upper = 6
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 5
		jumpIfInRange = 1
		jumpIfOutOfRange = continue
	end
}
script 1 mmbn4-lc {
	checkFlag
		flag = 781
		jumpIfTrue = 2
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Where did that black
	Navi go?!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	We'll go directly to
	the Tower!
	"""
	keyWait
		any = false
	end
}
script 5 mmbn4-lc {
	checkFlag
		flag = 787
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkFlag
		flag = 821
		jumpIfTrue = 10
		jumpIfFalse = continue
	checkFlag
		flag = 819
		jumpIfTrue = 9
		jumpIfFalse = continue
	checkFlag
		flag = 820
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkFlag
		flag = 818
		jumpIfTrue = 6
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's find
	Roll! We've got to
	hurry!
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's catch those
	
	"""
	printItem
		buffer = 0
		item = 3
	"""
	s and take
	them to the Mr.Prog!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Are there 
	"""
	printItem
		buffer = 0
		item = 3
	"""
	s
	here too?
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Roll's in trouble
	if we don't hurry!
	C'mon,let's go!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's catch those
	
	"""
	printItem
		buffer = 0
		item = 3
	"""
	s and take
	them to the Mr.Prog!
	"""
	keyWait
		any = false
	end
}
script 10 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hang in there,Roll!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Everything's back to
	normal now that
	ShadeMan's gone.
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	checkFlag
		flag = 1540
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 1554
		jumpIfTrue = 21
		jumpIfFalse = continue
	jump
		target = 15
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Is this what that
	clue written on the
	squirrel was about?
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 23
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's jack
	out and go to
	the Square!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go find that
	number data,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1986
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Everything's back to
	normal now that
	ShadeMan's gone.
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 33
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 32
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to hand out
	ten or more Higsby's
	flyers!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We passed out enough
	flyers. Want to head
	back to Higsby's?
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We passed out all
	the flyers! Let's go
	back to Higsby's!
	"""
	keyWait
		any = false
	end
}
@archive 75EA58
@size 255

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Everything's back to
	normal now that
	ShadeMan's gone.
	"""
	keyWait
		any = false
	end
}
@archive 75EAC8
@size 255

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Everything's back to
	normal now that
	ShadeMan's gone.
	"""
	keyWait
		any = false
	end
}
@archive 75EB38
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 21
		upper = 255
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1045
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1042
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1041
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Look for
	the ToyRobo's
	Stop switch!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Jack out
	so we can go to
	CenterSquare!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Turn off
	the ToyRobo! Where's
	the Stop switch?!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,jack out!
	Another ToyRobo has
	gone berserk!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	This ToyRobo seems
	safe! Time to
	jack out!
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Hurry up
	and stop this thing!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Quick,to
	the VampireManor!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What a creepy place!
	…No time for that!
	Find the Stop switch!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	checkChapter
		lower = 77
		upper = 77
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Looks like the crazed
	ToyRobo incident
	is over with…
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! This isn't
	the ToyRobo that's
	running wild!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 2192
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 2179
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Looks like the crazed
	ToyRobo incident
	is over with…
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We have
	to stop this thing
	and save Lilly!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I never thought that
	this thing would
	start up again…!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Looks like the crazed
	ToyRobo incident
	is over with…
	"""
	keyWait
		any = false
	end
}
@archive 75ED54
@size 255

script 0 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Looks like the crazed
	ToyRobo incident
	is over with…
	"""
	keyWait
		any = false
	end
}
@archive 75EDC8
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 41
		upper = 42
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Follow
	Dr.Regal's Navi!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to alter
	that asteroid's
	orbit,or else…!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hurry and alter the
	asteroid's orbit,
	MegaMan!
	"""
	keyWait
		any = false
	end
}
@archive 75EE84
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 67
		jumpIfInRange = 210
		jumpIfOutOfRange = continue
	checkChapter
		lower = 64
		upper = 65
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 61
		upper = 63
		jumpIfInRange = 180
		jumpIfOutOfRange = continue
	checkChapter
		lower = 58
		upper = 60
		jumpIfInRange = 170
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 57
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 54
		upper = 55
		jumpIfInRange = 150
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 53
		jumpIfInRange = 140
		jumpIfOutOfRange = continue
	checkChapter
		lower = 48
		upper = 50
		jumpIfInRange = 130
		jumpIfOutOfRange = continue
	checkChapter
		lower = 10
		upper = 12
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 8
		upper = 9
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 7
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 4
		upper = 4
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4-lc {
	checkFlag
		flag = 774
		jumpIfTrue = 7
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 6
		jumpIfGreater = 6
		jumpIfLess = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Dad said "
	"""
	printItem
		buffer = 0
		item = 2
	"""
	es"
	are being sold in
	ACDC Area 3,right?
	"""
	keyWait
		any = false
	end
}
script 6 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	All right,MegaMan.
	Let's go give the
	"
	"""
	printItem
		buffer = 0
		item = 2
	"""
	" to Dad!
	"""
	keyWait
		any = false
	end
}
script 7 mmbn4-lc {
	checkMultiFlag
		flag = 803
		count = 5
		jumpIfAllSet = 8
		jumpIfNotAllSet = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We can go on the Net
	when we get back.
	Let's go outside!
	"""
	keyWait
		any = false
	end
}
script 8 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's head back to
	the station. Dad may
	be waiting for us!
	"""
	keyWait
		any = false
	end
}
script 9 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	"
	"""
	printItem
		buffer = 0
		item = 2
	"""
	es"
	are being sold in
	this area,right?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We've got
	to find everyone!
	Where are they?!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	checkFlag
		flag = 788
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkFlag
		flag = 787
		jumpIfTrue = 25
		jumpIfFalse = continue
	checkFlag
		flag = 784
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 782
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkFlag
		flag = 781
		jumpIfTrue = 21
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Follow that
	black Navi!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to jack in
	directly to the
	Tower! Let's go!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	checkItem
		item = 1
		amount = 1
		jumpIfEqual = 23
		jumpIfGreater = 23
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	I'll look for a way
	to stop the noise!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get back to
	ElecTown!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Roll's in trouble!
	Let's go back to
	the ElTwrComp!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What's with this chip
	ShadeMan dropped?
	Maybe Higsby knows.
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's jack
	out. I'm beat!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 791
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 840
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 841
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's get
	off the Net and head
	for ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	He said a gray Navi
	in Town Area 3 will
	sign us up,right?
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We're signed up now,
	so let's head back
	to ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	checkFlag
		flag = 850
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 847
		jumpIfTrue = continue
		jumpIfFalse = 36
	checkFlag
		flag = 844
		jumpIfTrue = continue
		jumpIfFalse = 36
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We finished the three
	tasks,so let's go
	to ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to DenDome!
	We can't be late for
	the battle!
	"""
	keyWait
		any = false
	end
}
script 36 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	No prelim's going to
	stop us from making it
	to the tournament!
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4-lc {
	checkFlag
		flag = 1541
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 1539
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 1538
		jumpIfTrue = 131
		jumpIfFalse = continue
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The kidnapper's clue
	should help us
	find Chisao!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	checkItem
		item = 12
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 13
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 14
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 15
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	checkItem
		item = 16
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 134
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Time to head over
	to ElecTown Square!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Time to face Dex!
	Once we're ready,
	I'll enter the arena!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Where are the Navis
	with number data?
	Find them,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 140 mmbn4-lc {
	checkFlag
		flag = 1605
		jumpIfTrue = 144
		jumpIfFalse = continue
	checkFlag
		flag = 1604
		jumpIfTrue = 143
		jumpIfFalse = continue
	checkFlag
		flag = 1603
		jumpIfTrue = 142
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = 141
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get off the
	Net. We have to get
	to the hotdog stand!
	"""
	keyWait
		any = false
	end
}
script 141 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's hurry up and
	fix the hotdog
	fryer,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 142 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Where'd Mr.Match go?
	Maybe we can find
	FireMan on the Net…
	"""
	keyWait
		any = false
	end
}
script 143 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We should also be
	getting back to the
	hotdog stand.
	"""
	keyWait
		any = false
	end
}
script 144 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Once you're ready,
	MegaMan,let's get
	over to the Dome!
	"""
	keyWait
		any = false
	end
}
script 150 mmbn4-lc {
	checkFlag
		flag = 1668
		jumpIfTrue = 153
		jumpIfFalse = continue
	checkFlag
		flag = 1667
		jumpIfTrue = 152
		jumpIfFalse = continue
	checkFlag
		flag = 1666
		jumpIfTrue = 151
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	There's not much
	time! Let's get our
	PET tuned up!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to find
	someone to fix our
	folder!
	"""
	keyWait
		any = false
	end
}
script 152 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	That "
	"""
	printItem
		buffer = 0
		item = 9
	"""
	" is
	our only clue.
	We have to hurry!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Our folder's fixed!
	Come on,we have a
	tournament to win!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 1735
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkFlag
		flag = 1734
		jumpIfTrue = 164
		jumpIfFalse = continue
	checkFlag
		flag = 1733
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 1732
		jumpIfTrue = 162
		jumpIfFalse = continue
	checkFlag
		flag = 1731
		jumpIfTrue = 161
		jumpIfFalse = continue
}
script 161 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's give
	the top to that
	elderly man.
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	There's no time for
	the Net. Let's go to
	ACDC Park!
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	checkItem
		item = 25
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	A test in Town Area?
	Well,if it'll help
	that old man…
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's go to
	ElecTown Square too!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We're out of time,
	MegaMan. Let's go to
	the arena!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The Chief's Navi is
	in the ACDC Area!
	Let's go!
	"""
	keyWait
		any = false
	end
}
script 170 mmbn4-lc {
	checkFlag
		flag = 1798
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkItem
		item = 29
		amount = 1
		jumpIfEqual = 177
		jumpIfGreater = 177
		jumpIfLess = continue
	checkFlag
		flag = 1801
		jumpIfTrue = 176
		jumpIfFalse = continue
	checkFlag
		flag = 1797
		jumpIfTrue = 175
		jumpIfFalse = continue
	checkFlag
		flag = 1796
		jumpIfTrue = 174
		jumpIfFalse = continue
	checkItem
		item = 28
		amount = 1
		jumpIfEqual = 173
		jumpIfGreater = 173
		jumpIfLess = continue
	checkFlag
		flag = 1795
		jumpIfTrue = 172
		jumpIfFalse = continue
	end
}
script 172 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I wonder what all
	the ruckus was in
	front of the Dome?
	"""
	keyWait
		any = false
	end
}
script 173 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Go find
	AquaMan!
	"""
	keyWait
		any = false
	end
}
script 174 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hurry! Don't let
	AquaMan get away!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to find
	Shuko. I wonder if
	anyone has any info?
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's get
	to Shuko! We can
	go on the Net later!
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's get
	over to AquaMan!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The Net's back to
	normal. Let's head
	back to DenDome!
	"""
	keyWait
		any = false
	end
}
script 180 mmbn4-lc {
	checkFlag
		flag = 1869
		jumpIfTrue = 185
		jumpIfFalse = continue
	checkFlag
		flag = 1860
		jumpIfTrue = 183
		jumpIfFalse = continue
	checkFlag
		flag = 1859
		jumpIfTrue = 182
		jumpIfFalse = continue
	checkFlag
		flag = 1858
		jumpIfTrue = 181
		jumpIfFalse = continue
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Yuko's waiting
	outside the Dome! We
	go on the Net later!
	"""
	keyWait
		any = false
	end
}
script 182 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Mom said someone's
	waiting to see me.
	Let's go home.
	"""
	keyWait
		any = false
	end
}
script 183 mmbn4-lc {
	checkFlag
		flag = 1863
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1864
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1866
		jumpIfTrue = continue
		jumpIfFalse = 184
	checkFlag
		flag = 1867
		jumpIfTrue = continue
		jumpIfFalse = 184
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We've driven off the
	evil Navi ghosts.
	Jack out anytime!
	"""
	keyWait
		any = false
	end
}
script 184 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's put those evil
	Navi ghosts to rest,
	MegaMan!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Time for our match
	with Yuko! Let's
	go back to the Dome!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 1926
		jumpIfTrue = 200
		jumpIfFalse = continue
	checkFlag
		flag = 1925
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 1924
		jumpIfTrue = 198
		jumpIfFalse = continue
	checkFlag
		flag = 1923
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 1922
		jumpIfTrue = 196
		jumpIfFalse = continue
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We should say thanks
	to Tetsu for what he
	did.
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to Town
	Area 3! We've got
	to help Tetsu!
	"""
	keyWait
		any = false
	end
}
script 198 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's return to Town
	Area 3! Tetsu's Navi
	is in trouble!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go back to
	Town Area 3 and
	make those guys pay!
	"""
	keyWait
		any = false
	end
}
script 200 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	To the Dome!
	It's time to see
	who's the better man!
	"""
	keyWait
		any = false
	end
}
script 210 mmbn4-lc {
	checkFlag
		flag = 1991
		jumpIfTrue = 215
		jumpIfFalse = continue
	checkFlag
		flag = 1990
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 1988
		jumpIfTrue = 213
		jumpIfFalse = continue
	checkFlag
		flag = 1987
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 1986
		jumpIfTrue = 211
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Why would Higsby
	drop out? Let's go
	ask at his store!
	"""
	keyWait
		any = false
	end
}
script 211 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 219
	checkItem
		item = 90
		amount = 11
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 218
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to hand out
	ten or more Higsby's
	flyers!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Higsby's warehouse
	is in the Town Area!
	Let's hurry,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 213 mmbn4-lc {
	checkItem
		item = 91
		amount = 1
		jumpIfEqual = 216
		jumpIfGreater = 216
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We've got to get the
	Warehouse Key and
	help NumberMan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go see if
	Higsby's is all right!
	"""
	keyWait
		any = false
	end
}
script 215 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Time for our battle
	with Higsby! Let's
	go to the Dome!
	"""
	keyWait
		any = false
	end
}
script 216 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hurry to the Town
	Area! We've got to
	save NumberMan!
	"""
	keyWait
		any = false
	end
}
script 218 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We passed out enough
	flyers. Want to head
	back to Higsby's?
	"""
	keyWait
		any = false
	end
}
script 219 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We passed out all
	the flyers! Let's go
	back to Higsby's!
	"""
	keyWait
		any = false
	end
}
@archive 75F7A8
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 91
		upper = 95
		jumpIfInRange = 120
		jumpIfOutOfRange = continue
	checkChapter
		lower = 86
		upper = 90
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 84
		upper = 85
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 82
		upper = 83
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 79
		upper = 81
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	checkChapter
		lower = 77
		upper = 78
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 75
		upper = 76
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 72
		upper = 74
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 21
		upper = 22
		jumpIfInRange = 40
		jumpIfOutOfRange = continue
	checkChapter
		lower = 19
		upper = 20
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 18
		upper = 18
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkChapter
		lower = 16
		upper = 17
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
}
script 10 mmbn4-lc {
	checkFlag
		flag = 296
		jumpIfTrue = 16
		jumpIfFalse = continue
	checkFlag
		flag = 1032
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 1099
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 1030
		jumpIfTrue = 13
		jumpIfFalse = continue
	checkFlag
		flag = 1029
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1027
		jumpIfTrue = 11
		jumpIfFalse = continue
	checkItem
		item = 144
		amount = 1
		jumpIfEqual = 17
		jumpIfGreater = 17
		jumpIfLess = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Alone on the Net
	with Mayl?
	…How embarrassing…
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go back to the
	Town Area!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's get
	home and check on Mom!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Didn't Mom say
	something about
	my PC…?
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's get
	to Park Area 2! …Um,
	which way is that?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,back to Town
	Area 3! Open the door
	to head to Park Area!
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Go to
	Park Area 2!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Roll is in
	Town Area 3,right?
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go say hi
	to Mayl!
	"""
	keyWait
		any = false
	end
}
script 20 mmbn4-lc {
	checkFlag
		flag = 1037
		jumpIfTrue = 26
		jumpIfFalse = continue
	checkItem
		item = 27
		amount = 1
		jumpIfEqual = 25
		jumpIfGreater = 25
		jumpIfLess = continue
	checkFlag
		flag = 1097
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 1036
		jumpIfTrue = 23
		jumpIfFalse = continue
	checkFlag
		flag = 1096
		jumpIfTrue = 22
		jumpIfFalse = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 21
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to head
	to Castillo quick,
	or it'll get ugly!
	"""
	keyWait
		any = false
	end
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We can't just ditch
	Mayl like this!
	Let's jack out!
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Shall we go to
	Park Area 3?
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's get
	back! Mayl's waiting!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Where can we get ice
	cream? Not in the
	Cyberworld…
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get back to
	Mayl!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I guess we have to
	go back… to the
	VampireManor…
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1044
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkFlag
		flag = 1043
		jumpIfTrue = 31
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,come back!
	We don't have time
	for this!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,jack out!
	We have to get to
	the VampireManor!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We have to
	get back to the
	VampireManor!
	"""
	keyWait
		any = false
	end
}
script 40 mmbn4-lc {
	checkFlag
		flag = 1050
		jumpIfTrue = 41
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Find the BattlePoints!
	Once we get 50,let's
	head to Castillo!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,when you're
	ready,let's get to
	the waiting room!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 2054
		jumpIfTrue = 54
		jumpIfFalse = continue
	checkFlag
		flag = 2052
		jumpIfTrue = 53
		jumpIfFalse = continue
	checkFlag
		flag = 2051
		jumpIfTrue = 52
		jumpIfFalse = continue
	checkFlag
		flag = 2050
		jumpIfTrue = 51
		jumpIfFalse = continue
}
script 51 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to find that
	Mafia boss in
	Castillo!
	"""
	keyWait
		any = false
	end
}
script 52 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I don't like the
	smell of this… Let's
	go to the Park Area!
	"""
	keyWait
		any = false
	end
}
script 53 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Park Area is being
	closely watched! We
	have to be careful!
	"""
	keyWait
		any = false
	end
}
script 54 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm worried about Riki!
	Let's go to Castillo
	to check on him!
	"""
	keyWait
		any = false
	end
}
script 59 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Play tag,huh?
	I guess we don't
	have much choice…
	"""
	keyWait
		any = false
	end
}
script 60 mmbn4-lc {
	checkFlag
		flag = 2118
		jumpIfTrue = 68
		jumpIfFalse = continue
	checkFlag
		flag = 5576
		jumpIfTrue = 66
		jumpIfFalse = continue
	checkFlag
		flag = 2117
		jumpIfTrue = 65
		jumpIfFalse = continue
	checkItem
		item = 85
		amount = 1
		jumpIfEqual = 64
		jumpIfGreater = 64
		jumpIfLess = continue
	checkFlag
		flag = 2116
		jumpIfTrue = 63
		jumpIfFalse = continue
	checkFlag
		flag = 2130
		jumpIfTrue = 62
		jumpIfFalse = continue
	checkFlag
		flag = 2115
		jumpIfTrue = 61
		jumpIfFalse = continue
	end
}
script 61 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We've got
	to see Glyde in
	Park Area 1!
	"""
	keyWait
		any = false
	end
}
script 62 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	According to Glyde,
	the culprit went
	deep into Park Area!
	"""
	keyWait
		any = false
	end
}
script 63 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Do we have any leads
	on how to find Roll…?
	Where's the kidnapper?
	"""
	keyWait
		any = false
	end
}
script 64 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We have to
	get to Park Area 3 to
	help Roll!
	"""
	keyWait
		any = false
	end
}
script 65 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out for
	now and head for
	the castle.
	"""
	keyWait
		any = false
	end
}
script 66 mmbn4-lc {
	checkFlag
		flag = 5704
		jumpIfTrue = continue
		jumpIfFalse = 67
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What did that last
	email say?
	"""
	keyWait
		any = false
	end
}
script 67 mmbn4-lc {
	checkFlag
		flag = 2129
		jumpIfTrue = 59
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	A challenge? That's
	strange… Let's go
	talk to Roll!
	"""
	keyWait
		any = false
	end
}
script 68 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Roll's really into
	this… Well,let's
	head for the castle…
	"""
	keyWait
		any = false
	end
}
script 70 mmbn4-lc {
	checkFlag
		flag = 2184
		jumpIfTrue = 75
		jumpIfFalse = continue
	checkFlag
		flag = 2183
		jumpIfTrue = 74
		jumpIfFalse = continue
	checkFlag
		flag = 2182
		jumpIfTrue = 73
		jumpIfFalse = continue
	checkFlag
		flag = 2180
		jumpIfTrue = 72
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What's going on at
	TaleSquare? MegaMan,
	jack out!
	"""
	keyWait
		any = false
	end
}
script 72 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm starving! Let's
	go get some lunch
	from Mom!
	"""
	keyWait
		any = false
	end
}
script 73 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to hurry to
	the Park Area and
	stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 74 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Park Area's been hit
	by a storm! We have
	to stop WindMan!
	"""
	keyWait
		any = false
	end
}
script 75 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Lilly must be at the
	arena! Let's go
	there,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 80 mmbn4-lc {
	checkFlag
		flag = 2244
		jumpIfTrue = 87
		jumpIfFalse = continue
	checkFlag
		flag = 2254
		jumpIfTrue = 86
		jumpIfFalse = continue
	checkFlag
		flag = 2243
		jumpIfTrue = 85
		jumpIfFalse = continue
	checkFlag
		flag = 2253
		jumpIfTrue = 84
		jumpIfFalse = continue
	checkFlag
		flag = 2252
		jumpIfTrue = 82
		jumpIfFalse = continue
	checkFlag
		flag = 2242
		jumpIfTrue = 81
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I wonder what Tamako
	wants to do in
	TaleSquare?
	"""
	keyWait
		any = false
	end
}
script 81 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's go
	and meet Tamako's
	Master!
	"""
	keyWait
		any = false
	end
}
script 82 mmbn4-lc {
	checkItem
		item = 93
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	checkItem
		item = 94
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 83
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We got the drink
	and snack… Now will
	he teach us?
	"""
	keyWait
		any = false
	end
}
script 83 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The Master's friends
	are in the Park Area,
	right?
	"""
	keyWait
		any = false
	end
}
script 84 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,we have to
	get back to our
	training!
	"""
	keyWait
		any = false
	end
}
script 85 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	tell Tamako that our
	training is done!
	"""
	keyWait
		any = false
	end
}
script 86 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Tamako is waiting!
	Let's jack out and
	go to TaleSquare!
	"""
	keyWait
		any = false
	end
}
script 87 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm really getting
	into this! Let's get
	to the castle!
	"""
	keyWait
		any = false
	end
}
script 90 mmbn4-lc {
	checkFlag
		flag = 2307
		jumpIfTrue = 92
		jumpIfFalse = continue
	checkFlag
		flag = 2306
		jumpIfTrue = 91
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The entrance to a
	lively area?
	Oh,I know…!
	"""
	keyWait
		any = false
	end
}
script 91 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,find those
	videos! Be careful!
	"""
	keyWait
		any = false
	end
}
script 92 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,jack out
	quick! We'll be late
	for the match!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2377
		jumpIfTrue = 107
		jumpIfFalse = continue
	checkFlag
		flag = 2376
		jumpIfTrue = 106
		jumpIfFalse = continue
	checkFlag
		flag = 2375
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkFlag
		flag = 2374
		jumpIfTrue = 104
		jumpIfFalse = continue
	checkFlag
		flag = 2372
		jumpIfTrue = 103
		jumpIfFalse = continue
	checkFlag
		flag = 2371
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2370
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's go
	see Sal!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	What's up with Sal?
	Let's go to ElecTown
	and see!
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,we have to
	hurry to DenDome!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I hope Sal is OK…
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,search for
	WoodMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	WoodMan should be
	somewhere in Park
	Area! Be careful!
	"""
	keyWait
		any = false
	end
}
script 106 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to Castillo
	to see if Sal and
	WoodMan are OK!
	"""
	keyWait
		any = false
	end
}
script 107 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Almost time for the
	match! Let's head
	back there!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2437
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2436
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 2435
		jumpIfTrue = 112
		jumpIfFalse = continue
	checkFlag
		flag = 2480
		jumpIfTrue = 117
		jumpIfFalse = continue
	checkFlag
		flag = 2434
		jumpIfTrue = 111
		jumpIfFalse = continue
	checkFlag
		flag = 5581
		jumpIfTrue = 115
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's look for
	something to do
	until the match!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wait for me,MegaMan!
	I'm on my way!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's head to the
	match! Atsuki should
	be there already!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	They're fighting
	in Park Area! We have
	to go stop them!
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get to the
	castle! The match
	is about to start!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Smoke coming from my
	PC?! We have to
	hurry!!
	"""
	keyWait
		any = false
	end
}
script 117 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We have to
	get to ACDC Area
	and stop them!
	"""
	keyWait
		any = false
	end
}
script 120 mmbn4-lc {
	checkFlag
		flag = 2504
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2502
		jumpIfTrue = 125
		jumpIfFalse = continue
	checkFlag
		flag = 2501
		jumpIfTrue = 124
		jumpIfFalse = continue
	checkFlag
		flag = 2500
		jumpIfTrue = 123
		jumpIfFalse = continue
	checkFlag
		flag = 2499
		jumpIfTrue = 122
		jumpIfFalse = continue
	checkFlag
		flag = 2498
		jumpIfTrue = 121
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to Castillo
	and see what Flave
	is up to!
	"""
	keyWait
		any = false
	end
}
script 121 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	This is not good…
	This is NOT good…
	"""
	keyWait
		any = false
	end
}
script 122 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Cooking Master?
	Hah! Well,let's check
	Park Area 2 anyway!
	"""
	keyWait
		any = false
	end
}
script 123 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's go to
	Park Area 2 for our
	cooking lesson!
	"""
	keyWait
		any = false
	end
}
script 124 mmbn4-lc {
	checkFlag
		flag = 2516
		jumpIfTrue = 127
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's find the Navi
	selling ingredients
	in Park Area!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to get to
	TaleSquare for our
	contest with Flave!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have to go to the
	castle to battle
	with Flave!
	"""
	keyWait
		any = false
	end
}
script 127 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We've got the
	ingredients! Let's go
	to the Cooking Dojo!
	"""
	keyWait
		any = false
	end
}
@archive 7600DC
@size 255

script 0 mmbn4-lc {
	checkChapter
		lower = 123
		upper = 125
		jumpIfInRange = 195
		jumpIfOutOfRange = continue
	checkChapter
		lower = 120
		upper = 122
		jumpIfInRange = 185
		jumpIfOutOfRange = continue
	checkChapter
		lower = 117
		upper = 119
		jumpIfInRange = 175
		jumpIfOutOfRange = continue
	checkChapter
		lower = 114
		upper = 116
		jumpIfInRange = 160
		jumpIfOutOfRange = continue
	checkChapter
		lower = 110
		upper = 113
		jumpIfInRange = 145
		jumpIfOutOfRange = continue
	checkChapter
		lower = 107
		upper = 109
		jumpIfInRange = 125
		jumpIfOutOfRange = continue
	checkChapter
		lower = 104
		upper = 106
		jumpIfInRange = 110
		jumpIfOutOfRange = continue
	checkChapter
		lower = 101
		upper = 103
		jumpIfInRange = 100
		jumpIfOutOfRange = continue
	checkChapter
		lower = 40
		upper = 42
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	checkChapter
		lower = 38
		upper = 39
		jumpIfInRange = 25
		jumpIfOutOfRange = continue
	checkChapter
		lower = 32
		upper = 34
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	end
}
script 10 mmbn4-lc {
	checkFlag
		flag = 1288
		jumpIfTrue = 19
		jumpIfFalse = continue
	checkFlag
		flag = 1286
		jumpIfTrue = 17
		jumpIfFalse = continue
	checkFlag
		flag = 1379
		jumpIfTrue = 14
		jumpIfFalse = continue
	checkFlag
		flag = 5575
		jumpIfTrue = 12
		jumpIfFalse = continue
	checkFlag
		flag = 1350
		jumpIfTrue = 11
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's say good
	morning to Mom and
	go to the airport!
	"""
	keyWait
		any = false
	end
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Don't spend too long
	on the Net. We have
	a plane to catch!
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	checkFlag
		flag = 5703
		jumpIfTrue = continue
		jumpIfFalse = 13
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I wonder what that
	mail says. Let's
	read it!
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	see that NetBattle
	Club guy!
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	checkFlag
		flag = 1377
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1376
		jumpIfTrue = continue
		jumpIfFalse = 15
	checkFlag
		flag = 1375
		jumpIfTrue = continue
		jumpIfFalse = 15
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Isn't it about time
	we go back to see
	Bonds?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get off the
	Net and explore
	Netopia!
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	checkItem
		item = 34
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 35
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 36
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	checkItem
		item = 37
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 18
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	All right! We have
	all the KeyData!
	Let's jack out!
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan!
	Go find the 4 pieces
	of KeyData!
	"""
	keyWait
		any = false
	end
}
script 19 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Don't spend too long
	on the Net. Let's
	go to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	checkItem
		item = 80
		amount = 1
		jumpIfEqual = 28
		jumpIfGreater = 28
		jumpIfLess = continue
	checkFlag
		flag = 1299
		jumpIfTrue = 27
		jumpIfFalse = continue
	checkFlag
		flag = 1294
		jumpIfTrue = 26
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out MegaMan! We
	have to go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's go
	fix the Nets around
	the world!
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's look
	for the Official Navi
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan!
	Go catch the culprit
	in the Park Area!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 1307
		jumpIfTrue = 34
		jumpIfFalse = continue
	checkFlag
		flag = 1305
		jumpIfTrue = 33
		jumpIfFalse = continue
	checkFlag
		flag = 1304
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 81
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to NAXA!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	There's no time to
	goof around! Let's
	hurry to Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Whenever you're
	ready,let's get back
	to NAXA!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! We've got
	to hurry to NAXA!
	There's no time!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get back to
	NAXA and change that
	asteroid's orbit!
	"""
	keyWait
		any = false
	end
}
script 100 mmbn4-lc {
	checkFlag
		flag = 2565
		jumpIfTrue = 105
		jumpIfFalse = continue
	checkItem
		item = 120
		amount = 1
		jumpIfEqual = 104
		jumpIfGreater = 104
		jumpIfLess = continue
	checkFlag
		flag = 2564
		jumpIfTrue = 102
		jumpIfFalse = continue
	checkFlag
		flag = 2563
		jumpIfTrue = 101
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The Netopian bread
	challenge is by the
	shop in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 101 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	find someone we can
	count on!
	"""
	keyWait
		any = false
	end
}
script 102 mmbn4-lc {
	checkItem
		item = 86
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 87
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 88
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	checkItem
		item = 89
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
		jumpIfLess = 103
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We have the 4 marks,
	so let's find that
	"
	"""
	printItem
		buffer = 0
		item = 120
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 103 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Find the 4 marks!
	They're in the Netopia
	and Yumland Areas!
	"""
	keyWait
		any = false
	end
}
script 104 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's take the
	"
	"""
	printItem
		buffer = 0
		item = 120
	"""
	" to
	ThunderMan!
	"""
	keyWait
		any = false
	end
}
script 105 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Woo-hoo! Everything
	seems A-OK! Let's go
	to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 110 mmbn4-lc {
	checkFlag
		flag = 2628
		jumpIfTrue = 115
		jumpIfFalse = continue
	checkFlag
		flag = 2627
		jumpIfTrue = 114
		jumpIfFalse = continue
	checkFlag
		flag = 2626
		jumpIfTrue = 113
		jumpIfFalse = continue
	checkFlag
		flag = 5582
		jumpIfTrue = 111
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go get the
	"
	"""
	printItem
		buffer = 0
		item = 98
	"""
	"! They're
	in Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 111 mmbn4-lc {
	checkFlag
		flag = 5710
		jumpIfTrue = continue
		jumpIfFalse = 112
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's read
	that mail!
	"""
	keyWait
		any = false
	end
}
script 112 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	go to the
	GoddessComp!
	"""
	keyWait
		any = false
	end
}
script 113 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hey MegaMan,can you
	think of any really
	spacious areas?
	"""
	keyWait
		any = false
	end
}
script 114 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan!
	Let's go to the
	HeroComp!
	"""
	keyWait
		any = false
	end
}
script 115 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to the
	Colosseum! We've got
	a battle to win!
	"""
	keyWait
		any = false
	end
}
script 125 mmbn4-lc {
	checkFlag
		flag = 2713
		jumpIfTrue = 134
		jumpIfFalse = continue
	checkFlag
		flag = 2712
		jumpIfTrue = 133
		jumpIfFalse = continue
	checkFlag
		flag = 2711
		jumpIfTrue = 132
		jumpIfFalse = continue
	checkFlag
		flag = 2692
		jumpIfTrue = 131
		jumpIfFalse = continue
	checkFlag
		flag = 2716
		jumpIfTrue = 130
		jumpIfFalse = continue
	checkFlag
		flag = 2715
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2714
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkFlag
		flag = 2691
		jumpIfTrue = 126
		jumpIfFalse = continue
	checkItem
		item = 99
		amount = 1
		jumpIfEqual = 136
		jumpIfGreater = 136
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan,let's check
	out Yumland Area!
	"""
	keyWait
		any = false
	end
}
script 126 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Are you OK,MegaMan?
	You… are MegaMan…
	right?
	"""
	keyWait
		any = false
	end
}
script 130 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	JunkMan! You're gonna
	take responsibility and
	go recover MegaMan!
	"""
	keyWait
		any = false
	end
}
script 131 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go find that
	big guy you said
	you saw!
	"""
	keyWait
		any = false
	end
}
script 132 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to Yumland
	and ask to jack into
	the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 133 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go jack into
	the BuddhaComp!
	"""
	keyWait
		any = false
	end
}
script 134 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go to the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 136 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Go check the garbage
	dump,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 145 mmbn4-lc {
	checkFlag
		flag = 2762
		jumpIfTrue = 159
		jumpIfFalse = continue
	checkFlag
		flag = 2757
		jumpIfTrue = 158
		jumpIfFalse = continue
	checkFlag
		flag = 2756
		jumpIfTrue = 157
		jumpIfFalse = continue
	checkFlag
		flag = 2755
		jumpIfTrue = 156
		jumpIfFalse = continue
	checkItem
		item = 103
		amount = 1
		jumpIfEqual = 155
		jumpIfGreater = 155
		jumpIfLess = continue
	checkItem
		item = 102
		amount = 1
		jumpIfEqual = 153
		jumpIfGreater = 153
		jumpIfLess = continue
	checkItem
		item = 101
		amount = 1
		jumpIfEqual = 151
		jumpIfGreater = 151
		jumpIfLess = continue
	checkFlag
		flag = 2754
		jumpIfTrue = 149
		jumpIfFalse = continue
	checkFlag
		flag = 2788
		jumpIfTrue = 147
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	Let's go ask where
	KendoMan is!
	"""
	keyWait
		any = false
	end
}
script 147 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! KendoMan's
	in the NetFrica
	Area! Let's go!
	"""
	keyWait
		any = false
	end
}
script 149 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Our first training task
	is in Yumland Area.
	Let's go!
	"""
	keyWait
		any = false
	end
}
script 151 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The next training
	spot is Netopia Area.
	This is hard work!
	"""
	keyWait
		any = false
	end
}
script 153 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Next is Sharo Area.
	You can do it,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 155 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go back to
	KendoMan in
	NetFrica Area!
	"""
	keyWait
		any = false
	end
}
script 156 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Whew! I'm glad that
	misunderstanding's
	been cleared up!
	"""
	keyWait
		any = false
	end
}
script 157 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Where'd Mr.Famous go?
	Oh! I wonder if…?
	"""
	keyWait
		any = false
	end
}
script 158 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	We've got to fix the
	lion statue!
	"""
	keyWait
		any = false
	end
}
script 159 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's go face
	Mr.Famous at the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 160 mmbn4-lc {
	checkFlag
		flag = 2822
		jumpIfTrue = 168
		jumpIfFalse = continue
	checkItem
		item = 118
		amount = 1
		jumpIfEqual = 166
		jumpIfGreater = 166
		jumpIfLess = continue
	checkFlag
		flag = 2820
		jumpIfTrue = 165
		jumpIfFalse = continue
	checkItem
		item = 127
		amount = 1
		jumpIfEqual = 164
		jumpIfGreater = 164
		jumpIfLess = continue
	checkFlag
		flag = 2818
		jumpIfTrue = 163
		jumpIfFalse = continue
	checkFlag
		flag = 2836
		jumpIfTrue = 162
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	Let's find Paulie!
	"""
	keyWait
		any = false
	end
}
script 162 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Paulie told us to
	come to NetFrica Area,
	right?
	"""
	keyWait
		any = false
	end
}
script 163 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's get that
	"
	"""
	printItem
		buffer = 0
		item = 127
	"""
	"! Where is
	it this year?
	"""
	keyWait
		any = false
	end
}
script 164 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's bring the
	"
	"""
	printItem
		buffer = 0
		item = 127
	"""
	" to the
	NetFrica Area!
	"""
	keyWait
		any = false
	end
}
script 165 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	"
	"""
	printItem
		buffer = 0
		item = 118
	"""
	" is in
	NetFrica Area!
	"""
	keyWait
		any = false
	end
}
script 166 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out MegaMan!
	Let's go fix the
	WaterGod!
	"""
	keyWait
		any = false
	end
}
script 168 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We're out of time,
	MegaMan! Let's get
	to the Colosseum!
	"""
	keyWait
		any = false
	end
}
script 175 mmbn4-lc {
	checkFlag
		flag = 2885
		jumpIfTrue = 181
		jumpIfFalse = continue
	checkItem
		item = 107
		amount = 1
		jumpIfEqual = 178
		jumpIfGreater = 178
		jumpIfLess = continue
	checkFlag
		flag = 2928
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2884
		jumpIfTrue = 178
		jumpIfFalse = continue
	checkFlag
		flag = 2883
		jumpIfTrue = 177
		jumpIfFalse = continue
	checkFlag
		flag = 2882
		jumpIfTrue = 176
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	MegaMan! Let's go
	to the Netopia Area!
	"""
	keyWait
		any = false
	end
}
script 176 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Natural cold,huh?
	Well,let's jack out
	once we're done here.
	"""
	keyWait
		any = false
	end
}
script 177 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	Something's going
	down in Sharo!
	"""
	keyWait
		any = false
	end
}
script 178 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	We don't have time
	for the Net! We have
	to fix the antennas!
	"""
	keyWait
		any = false
	end
}
script 181 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	Let's go to the
	Colosseum!
	"""
	keyWait
		any = false
	end
}
script 185 mmbn4-lc {
	checkFlag
		flag = 2949
		jumpIfTrue = 189
		jumpIfFalse = continue
	checkFlag
		flag = 2948
		jumpIfTrue = 188
		jumpIfFalse = continue
	checkFlag
		flag = 2947
		jumpIfTrue = 187
		jumpIfFalse = continue
	checkFlag
		flag = 2946
		jumpIfTrue = 186
		jumpIfFalse = continue
	end
}
script 186 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's follow Raika,
	MegaMan! We can't
	let him get away!
	"""
	keyWait
		any = false
	end
}
script 187 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Quick,MegaMan! Get
	over to Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 188 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	It may be dangerous,
	but we've got to get
	back to Undernet 6!
	"""
	keyWait
		any = false
	end
}
script 189 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	go to the Colosseum!
	Time to face Raika!
	"""
	keyWait
		any = false
	end
}
script 195 mmbn4-lc {
	checkFlag
		flag = 3017
		jumpIfTrue = 214
		jumpIfFalse = continue
	checkFlag
		flag = 3042
		jumpIfTrue = 212
		jumpIfFalse = continue
	checkFlag
		flag = 3041
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3037
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3036
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3035
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3032
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3040
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3034
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3033
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3031
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3039
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3038
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3030
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 3012
		jumpIfTrue = 199
		jumpIfFalse = continue
	checkFlag
		flag = 5596
		jumpIfTrue = 197
		jumpIfFalse = continue
	checkFlag
		flag = 3011
		jumpIfTrue = 196
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm concerned about
	Chaud. Let's go to
	the hotel,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 196 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Search for ProtoMan,
	MegaMan! He can't
	have gotten far yet!
	"""
	keyWait
		any = false
	end
}
script 197 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Go look for ProtoMan
	in the Undernet!
	"""
	keyWait
		any = false
	end
}
script 199 mmbn4-lc {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	Go back to the
	Undernet,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 212 mmbn4-lc {
	mugshotShow
		mugshot = Chaud
	msgOpen
	"""
	To Undernet 5! Hang
	in there,ProtoMan!
	"""
	keyWait
		any = false
	end
}
script 214 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	To the Colosseum!
	It's time for our
	battle with Chaud!
	"""
	keyWait
		any = false
	end
}
@archive 7609B4
@size 255

script 0 mmbn4-lc {
	checkSubArea
		lower = 15
		upper = 15
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 14
		upper = 14
		jumpIfInRange = 19
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 13
		upper = 13
		jumpIfInRange = 18
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 12
		upper = 12
		jumpIfInRange = 17
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 11
		upper = 11
		jumpIfInRange = 16
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 10
		upper = 10
		jumpIfInRange = 15
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 9
		upper = 9
		jumpIfInRange = 14
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 8
		upper = 8
		jumpIfInRange = 13
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 7
		upper = 7
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 6
		upper = 6
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 5
		upper = 5
		jumpIfInRange = 10
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 4
		upper = 4
		jumpIfInRange = 9
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 3
		upper = 3
		jumpIfInRange = 8
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 2
		upper = 2
		jumpIfInRange = 7
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 1
		upper = 1
		jumpIfInRange = 6
		jumpIfOutOfRange = continue
	checkSubArea
		lower = 0
		upper = 0
		jumpIfInRange = 5
		jumpIfOutOfRange = continue
}
script 5 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 50
		jumpIfOutOfRange = continue
	checkChapter
		lower = 1
		upper = 1
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	jump
		target = 27
}
script 6 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 55
		jumpIfOutOfRange = continue
	checkChapter
		lower = 5
		upper = 6
		jumpIfInRange = 90
		jumpIfOutOfRange = continue
	checkChapter
		lower = 3
		upper = 4
		jumpIfInRange = 35
		jumpIfOutOfRange = continue
	checkChapter
		lower = 2
		upper = 2
		jumpIfInRange = 33
		jumpIfOutOfRange = continue
	jump
		target = 21
}
script 7 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 60
		jumpIfOutOfRange = continue
	checkChapter
		lower = 51
		upper = 51
		jumpIfInRange = 37
		jumpIfOutOfRange = continue
	jump
		target = 22
}
script 8 mmbn4-lc {
	checkChapter
		lower = 53
		upper = 53
		jumpIfInRange = 39
		jumpIfOutOfRange = continue
	jump
		target = 23
}
script 9 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 65
		jumpIfOutOfRange = continue
	checkChapter
		lower = 56
		upper = 56
		jumpIfInRange = 41
		jumpIfOutOfRange = continue
	jump
		target = 24
}
script 10 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 70
		jumpIfOutOfRange = continue
	checkChapter
		lower = 9
		upper = 9
		jumpIfInRange = 46
		jumpIfOutOfRange = continue
	jump
		target = 25
}
script 11 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I feel a bit tense
	jacking in here.
	"""
	keyWait
		any = false
	end
}
script 12 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Who'd have thought
	we could jack into
	this statue?
	"""
	keyWait
		any = false
	end
}
script 13 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Isn't this some kind
	of legendary deity?
	Should we be here?
	"""
	keyWait
		any = false
	end
}
script 14 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hope there's air in
	there… Does Cyber-
	world even have air?
	"""
	keyWait
		any = false
	end
}
script 15 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	It's amazing what
	one can jack into
	nowadays.
	"""
	keyWait
		any = false
	end
}
script 16 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The world's best
	NetBattler is decided
	here… Feels tense…
	"""
	keyWait
		any = false
	end
}
script 17 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	There's no such
	thing as Cyberlions,
	are there?
	"""
	keyWait
		any = false
	end
}
script 18 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 75
		jumpIfOutOfRange = continue
	jump
		target = 26
}
script 19 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 80
		jumpIfOutOfRange = continue
	jump
		target = 28
}
script 20 mmbn4-lc {
	checkChapter
		lower = 66
		upper = 66
		jumpIfInRange = 85
		jumpIfOutOfRange = continue
	jump
		target = 29
}
script 21 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Do quality stereos
	sound so good because
	of quality Mr.Progs?
	"""
	keyWait
		any = false
	end
}
script 22 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Wow,a hotdog fryer!
	Be careful not to
	step in any relish!
	"""
	keyWait
		any = false
	end
}
script 23 mmbn4-lc {
	checkGameVersion
		jumpIfRedSun = continue
		jumpIfBlueMoon = 44
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The site of all
	Den Battle showdowns…
	Talk about thrilling!
	"""
	keyWait
		any = false
	end
}
script 24 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Being inside a top's
	Cyberworld seems
	like it'd be dizzying!
	"""
	keyWait
		any = false
	end
}
script 25 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	It's amazing how
	thin some things you
	can jack into are…
	"""
	keyWait
		any = false
	end
}
script 26 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Thanks to this
	doghouse,our home
	is safe… I think.
	"""
	keyWait
		any = false
	end
}
script 27 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Are ovens hot even
	in the Cyberworld,
	MegaMan?
	"""
	keyWait
		any = false
	clearMsg
	mugshotShow
		mugshot = MegaMan
	"""
	Not at all!
	"""
	keyWait
		any = false
	end
}
script 28 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Old games are nice,
	but nothing beats a
	new game console!
	"""
	keyWait
		any = false
	end
}
script 29 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	While you're at it,
	can you get me a soda
	for free? Kidding!
	"""
	keyWait
		any = false
	end
}
script 30 mmbn4-lc {
	checkFlag
		flag = 774
		jumpIfTrue = 32
		jumpIfFalse = continue
	checkItem
		item = 2
		amount = 1
		jumpIfEqual = 31
		jumpIfGreater = 31
		jumpIfLess = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Hurry it up,MegaMan!
	Let's go and buy
	a "
	"""
	printItem
		buffer = 0
		item = 2
	"""
	"!
	"""
	keyWait
		any = false
	end
}
script 31 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's give the
	"
	"""
	printItem
		buffer = 0
		item = 2
	"""
	" to Dad!
	"""
	keyWait
		any = false
	end
}
script 32 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	I'm glad the Mr.Prog's
	all better now!
	"""
	keyWait
		any = false
	end
}
script 33 mmbn4-lc {
	checkFlag
		flag = 837
		jumpIfTrue = continue
		jumpIfFalse = 34
	checkFlag
		flag = 836
		jumpIfTrue = continue
		jumpIfFalse = 34
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's look around this
	place,then jack out!
	"""
	keyWait
		any = false
	end
}
script 34 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's talk to Roll and
	Glyde! Didn't expect
	to meet them here!
	"""
	keyWait
		any = false
	end
}
script 35 mmbn4-lc {
	checkFlag
		flag = 779
		jumpIfTrue = 36
		jumpIfFalse = continue
	checkFlag
		flag = 778
		jumpIfTrue = 45
		jumpIfFalse = continue
	jump
		target = 21
}
script 36 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	We need to head
	to ACDC Area!
	"""
	keyWait
		any = false
	end
}
script 37 mmbn4-lc {
	checkFlag
		flag = 1603
		jumpIfTrue = 38
		jumpIfFalse = continue
	checkFlag
		flag = 1602
		jumpIfTrue = continue
		jumpIfFalse = 38
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Find out what's
	wrong with the hotdog
	fryer and fix it!
	"""
	keyWait
		any = false
	end
}
script 38 mmbn4-lc {
	jump
		target = 22
}
script 39 mmbn4-lc {
	checkFlag
		flag = 1614
		jumpIfTrue = 23
		jumpIfFalse = continue
	checkFlag
		flag = 1612
		jumpIfTrue = continue
		jumpIfFalse = 23
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Stop the MT igniter,
	MegaMan!
	"""
	keyWait
		any = false
	end
}
script 41 mmbn4-lc {
	checkFlag
		flag = 1731
		jumpIfTrue = 24
		jumpIfFalse = continue
	checkFlag
		flag = 1740
		jumpIfTrue = 42
		jumpIfFalse = continue
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Take out the virus
	causing this top to
	spin out of control!
	"""
	keyWait
		any = false
	end
}
script 42 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Jack out,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 44 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	The site of all
	City Battle showdowns…
	Talk about thrilling!
	"""
	keyWait
		any = false
	end
}
script 45 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Something's not
	right! Take a look
	around!
	"""
	keyWait
		any = false
	end
}
script 46 mmbn4-lc {
	checkFlag
		flag = 854
		jumpIfTrue = 48
		jumpIfFalse = continue
	checkFlag
		flag = 853
		jumpIfTrue = 47
		jumpIfFalse = continue
	jump
		target = 25
}
script 47 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	A high place and an
	electrical store…
	This must be it!
	"""
	keyWait
		any = false
	end
}
script 48 mmbn4-lc {
	mugshotShow
		mugshot = Lan
	msgOpen
	"""
	Let's jack out and
	get back to the
	Square,MegaMan!
	"""
	keyWait
		any = false
	end
}
script 50 mmbn4-lc {
	checkFlag
		flag = 1986
		jumpIfTrue = 51
		jumpIfFalse = continue
	jump
		target = 27
}
script 51 mmbn4-lc {
	checkItem
		item = 90
		amount = 1
		jumpIfEqual = continue
		jumpIfGreater = continue
	checkItem
}