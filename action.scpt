on run {input, parameters}
	set destDir to item 1 of input as string

	repeat with a from 2 to length of input
		tell application "Keynote"
			set doc to open item a of input
			set title to the name of doc
			set exportAlias to destDir & title

			export doc to alias exportAlias as slide images with properties {image format:PNG}
			close doc
		end tell
	end repeat
	return input
end run
