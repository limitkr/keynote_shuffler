(*
A program that shuffles Keynote slides. 

Useful in the following situations:
- Creating quizzes for orientations
- Preparing for slide quiz exams at school

Version 1.0 created 2023/10/23
Author: YongIn Kim @limitkr
*)

set _x to 1

tell application "Keynote"
	activate
	-- Create allSlides variable
	tell the front document to set allslides to its slides
	
	-- Random shuffle 100 times
	tell front document
		repeat 100 times
			set _x to random number from 1 to 5
			move (slide _x) to after last slide
		end repeat
	end tell
	
	-- Move focus to slide 1
	tell the front document to set its current slide to item 1 of allslides
	-- Start presentation
	start the front document
end tell