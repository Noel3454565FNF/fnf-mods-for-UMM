local sonictext = '4.ttf' -- this for the botplay and watermark text font

--change these two if you want to change the fonts but dont remove the .ttf or the font don't work
function onCreatePost()
	setTextString('botplayTxt', 'BiliBili xuanzai')
    setTextFont('botplayTxt', 'vcr.ttf')
    setTextSize('botplayTxt', '35')
end