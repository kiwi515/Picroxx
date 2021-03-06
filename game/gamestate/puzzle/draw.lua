function drawtop.ingame()

    love.graphics.setColor(255, 255, 255)
	love.graphics.draw(background, 0, 0)
	
	drawtop.timer(381, 370, 354, 343, 327, 316, 215)
	
	if leveldata.gamemode == "easy" then
	  love.graphics.draw(icon.normal, 5, 218)
	  love.graphics.draw(gmlabel.easy, 24, 216)
	end
	
	if leveldata.gamemode == "normal" then
	  love.graphics.draw(icon.normal, 5, 218)
	  love.graphics.draw(gmlabel.normal, 24, 216)
	end
	
	if leveldata.gamemode == "free" then
	  love.graphics.draw(icon.free, 5, 218)
	  love.graphics.draw(gmlabel.free, 24, 216)
	end
	
	love.graphics.setDepth(-2)
	
	love.graphics.draw(whiteoverlay, 0, 0)
	
	if leveldata.gridsize == 5 then drawtop.blackgrid5() end
	if leveldata.gridsize == 10 then drawtop.blackgrid10() end
	if leveldata.gridsize == 15 then drawtop.blackgrid15() end
	
	love.graphics.setColor(255, 255, 255)
	
	love.graphics.setDepth(0)
	
	love.graphics.setColor(148, 148, 173)
	love.graphics.setFont(squarefont)
	love.graphics.print(leveldata.number, 89, 214)
	love.graphics.print(leveldata.letter, 112, 214)
	love.graphics.setColor(255, 255, 255)
	
end

function drawtop.ingamezoomed()

    love.graphics.setColor(255, 255, 255)
	
	if leveldata.gridsize == 15 then drawtop.smallgrid15(true) end
	
	drawtop.timer(381, 370, 354, 343, 327, 316, 3)
	
	if leveldata.gamemode == "easy" then
	  love.graphics.draw(icon.normal, 5, 6)
	  love.graphics.draw(gmlabel.easy, 24, 4)
	end
	
	if leveldata.gamemode == "normal" then
	  love.graphics.draw(icon.normal, 5, 6)
	  love.graphics.draw(gmlabel.normal, 24, 4)
	end
	
	if leveldata.gamemode == "free" then
	  love.graphics.draw(icon.free, 5, 6)
	  love.graphics.draw(gmlabel.free, 24, 4)
	end
	
	love.graphics.setColor(148, 148, 173)
	love.graphics.setFont(squarefont)
	love.graphics.print(leveldata.number, 89, 2)
	love.graphics.print(leveldata.letter, 112, 2)
	love.graphics.setColor(255, 255, 255)
	
end

function drawtop.timer(x1, x2, x3, x4, x5, x6, y)

  local s1digit = toptimer.seconds1 + 1
  local s2digit = toptimer.seconds2 + 1
  
  local m1digit = toptimer.minutes1 + 1
  local m2digit = toptimer.minutes2 + 1
  
  local h1digit = toptimer.hours1 + 1
  local h2digit = toptimer.hours2 + 1

  love.graphics.draw(timerdigits[s1digit], x1, y)
  love.graphics.draw(timerdigits[s2digit], x2, y)

  love.graphics.draw(timerdigits[m1digit], x3, y)
  love.graphics.draw(timerdigits[m2digit], x4, y)

  love.graphics.draw(timerdigits[h1digit], x5, y)
  love.graphics.draw(timerdigits[h2digit], x6, y)
 
end

function drawbot.pauseoverlay()
    
    if pausebuttonhover1 == false then

        love.graphics.draw(menu.emptybutton, pausebuttonsanims[1], 80)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 82)
        love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 83)
        love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 80)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 80)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 81)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 82)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 82)


	    love.graphics.setColor(255, 255, 255)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 81)

	else

        menu.emptybutton_a:play()
	    menu.emptybutton_a:draw(pausebuttonsanims[1], 80)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 82)
        love.graphics.print("Quit", pausebuttonsanims[1] + 58 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 83)
        love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 83)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 80)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 80)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 81)

	    love.graphics.print("Quit", pausebuttonsanims[1] + 57 - regularfont:getWidth("Quit") / 2, 82)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 55 - regularfont:getWidth("Quit") / 2, 82)


	    love.graphics.setColor(255, 206, 0)
	    love.graphics.print("Quit", pausebuttonsanims[1] + 56 - regularfont:getWidth("Quit") / 2, 81)
	    love.graphics.setColor(255, 255, 255)

    end

    if pausebuttonhover2 == false then

	    love.graphics.draw(menu.emptybutton, pausebuttonsanims[1], 112)

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 114)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 115)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 112)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 112)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 113)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 114)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 114)


	    love.graphics.setColor(255, 255, 255)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 113)

	else

        menu.emptybutton_a:play()
	    menu.emptybutton_a:draw(pausebuttonsanims[1], 112)        

        love.graphics.setFont(regularfont)
	    love.graphics.setColor(33, 33, 33)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 114)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 58 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 115)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 115)

        love.graphics.setColor(0, 0, 0)
        love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 112)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 112)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 113)

	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 57 - regularfont:getWidth("Exit to HBL") / 2, 114)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 55 - regularfont:getWidth("Exit to HBL") / 2, 114)


	    love.graphics.setColor(255, 206, 0)
	    love.graphics.print("Exit to HBL", pausebuttonsanims[1] + 56 - regularfont:getWidth("Exit to HBL") / 2, 113)
	    love.graphics.setColor(255, 255, 255)

	end

	love.graphics.draw(pauseexit, 233, pauseanims[2])

end

function drawtop.blacksquare(row, cell, x, y)

   if row[cell] == "O" then
     love.graphics.rectangle('fill', x, y, 6, 6)
   end
   
end

function drawbot.cell(line, cell, x, y)

    if line[cell] == 'O' then
	  love.graphics.draw(mark, x, y)
    end

    if line[cell] == 'X' then
	  love.graphics.draw(Xmark, x, y)
    end		
  
end

function drawbot.cellTranslated(line, cell, x, y)

    if line[cell] == 'O' then
	  love.graphics.draw(mark, gridx + x, gridy + y)
    end

    if line[cell] == 'X' then
	  love.graphics.draw(Xmark, gridx + x, gridy + y)
    end		
  
end

function drawbot.smallcell(line, cell, x, y)

    if line[cell] == 'O' then
	  love.graphics.draw(smallmark, x, y)
    end

    if line[cell] == 'X' then
	  love.graphics.draw(smallXmark, x, y)
    end		
  
end

function drawbot.cellHover()

	local row = 0

	if cellhoverx == row1 then row = 1 end
	if cellhoverx == row2 then row = 2 end
	if cellhoverx == row3 then row = 3 end
	if cellhoverx == row4 then row = 4 end
	if cellhoverx == row5 then row = 5 end

	if cellhoverx == row6 then row = 6 end
	if cellhoverx == row7 then row = 7 end
	if cellhoverx == row8 then row = 8 end
	if cellhoverx == row9 then row = 9 end
	if cellhoverx == row10 then row = 10 end

	if cellhoverx == row11 then row = 11 end
	if cellhoverx == row12 then row = 12 end
	if cellhoverx == row13 then row = 13 end
	if cellhoverx == row14 then row = 14 end
	if cellhoverx == row15 then row = 15 end

	cellHover:play()
    cellHover:draw(gridx + 138 + 14 * currentCell, gridy + 77 + 14 * row)

end

function drawtop.markers()

	local row = 0

   	if cellhoverx == row1 then row = 1 end
	if cellhoverx == row2 then row = 2 end
	if cellhoverx == row3 then row = 3 end
	if cellhoverx == row4 then row = 4 end
	if cellhoverx == row5 then row = 5 end

	if cellhoverx == row6 then row = 6 end
	if cellhoverx == row7 then row = 7 end
	if cellhoverx == row8 then row = 8 end
	if cellhoverx == row9 then row = 9 end
	if cellhoverx == row10 then row = 10 end

	if cellhoverx == row11 then row = 11 end
	if cellhoverx == row12 then row = 12 end
	if cellhoverx == row13 then row = 13 end
	if cellhoverx == row14 then row = 14 end
	if cellhoverx == row15 then row = 15 end
    
    if cellhoverx ~= row0 and cellhovery ~= 0 then

	   love.graphics.setColor(255, 255, 255, 128)
       love.graphics.draw(markedrow, 0, 80 + 8 * row)
       love.graphics.draw(markedcolumn, 160 + 8 * currentCell, 0)
       love.graphics.setColor(255, 255, 255, 255)
    
       cellHoverTop:play()
       cellHoverTop:draw(155 + 8 * currentCell, 75 + 8 * row)

    end

end