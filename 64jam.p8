pico-8 cartridge // http://www.pico-8.com
version 8
__lua__
player = {
	x=32 - 4, 
	y=32 - 4, 
	dir=12
}

function _init()
 poke(0x5f2c,3)
 cls()
end

function _update()

	if btn(1) then 
		player.dir = 3 
		player.x += 1
	end
	if btn(2) then 
		player.dir = 12
		player.y -= 1
 end
	if btn(3) then 
		player.dir = 6
		player.y += 1 
	end

	if btn(0) then 
		player.dir = 9
		player.x -= 1 
	end

	if btn (1) and btn (2) then 
		player.dir = 1
		player.x += 0.125
		player.y -= 0.125
	end
	if btn (1) and btn (3) then 
		player.dir = 5
		player.x += 0.125
		player.y += 0.125 
	end

	if btn (0) and btn (2) then 
		player.dir = 10
		player.x -= 0.125
		player.y -= 0.125 
	end
	if btn (0) and btn (3) then 
		player.dir = 7
		player.x -= 0.125
		player.y += 0.125 
	end


end

function _draw()
	cls()
	mapdraw(0,0,0,0,128,32)
	camera(player.x-32, player.y-32)
	drawcopter(player.x,player.y)
end

s = 67
s2 = 83

function drawcopter(x,y)

	if player.dir == 12 then 
		spr(25, x, y)
	end
	if player.dir == 1 then 
		spr(24, x, y)
	end
	if player.dir == 3 then 
		spr(36, x, y)
	end
	if player.dir == 5 then 
		spr(23, x, y)
	end
	if player.dir == 6 then 
		spr(52, x, y)
	end
	
	if player.dir == 9 then 
		spr(36,x,y,1,1,true,false)
	end
	if player.dir == 7 then 
		spr(23,x,y,1,1,true,false)
	end
		if player.dir == 10 then 
		spr(24,x,y,1,1,true,false)
	end
	
	if player.dir == 3 or player.dir == 9 then
		spr (s2,x,y) --rotor
	else
		spr (s,x,y) --rotor
	end
	

if s == 72 then 
	s = 67 
	else s += 1 
end 

if s2 == 88 then 
	s2 = 83 
	else s2 += 1 
end

end
__gfx__
0000000004444400000000030003000300030003000300030003000300030003ffffffffffffffffccccccccffff5fff00000000000000000000000000000000
0000000000fff4000000003000300030008888a000bbbbb000777770003fff30ffff4fffffffffffccccccccff66565f00000000000000000000000000000000
00700700000f0f40000003000300030008888aa00b000bb007000770030fff00ffffffffffffffffccccccccf666655f00000000000000000000000000000000
0007700000feff400000300033333333cccccaa3bbbbb3b37777737333377733ffffffffffffffffccccccccddddd51f00000000000000000000000000000000
000770000f7867f00003000000030003cccccaa0b003b0b07003707000077703ffffffffffffffffccccccccddddd15f00000000000000000000000000000000
00700700ff7887ff0030000000300030cccccaa0b030b0b070307070003ccc30ffffff4fffffffffccccccccd1d1d55f00000000000000000000000000000000
000000000cccccc00300000003000300ccccca00b300bb007300770003000300ffffffffffffffffccccccccddddd5ff00000000000000000000000000000000
00000000077007703333333333333333ccccc333bbbbb3337777733333333333ffffffffffffffffccccccccd1dddfff00000000000000000000000000000000
0003000300030003000300030000000000cccc700003000300030003b000000000003b3b00000000000000000000000000000000000000000000000000000000
0088888888888888888888a0000000000cccc7c000baaa7000300030300000000005b3c30003b000000000000000000000000000000000000000000000000000
088888888888888888888aa00000000066777cc30b0007a003000300b3b050000006333b00353300000000000000000000000000000000000000000000000000
cccccccccccccccccccccaa300000000ccc77cc0bba773a3333333330033b00000bbbb363b33b33b000000000000000000000000000000000000000000000000
cccccccccccccccccccccaa000000000cccc7cc0b00370a0000bb00300b377b030033b6550533505000000000000000000000000000000000000000000000000
cccccccccccccccccccccaa0000000001ccc6c00b030a0b0003bb0300003c77b303b00500003b000000000000000000000000000000000000000000000000000
ccccccccccccccccccccca000000000011cc6333b300bb000300030005653cb3b330000000b33b00000000000000000000000000000000000000000000000000
ccccccccccccccccccccc3330000000000030003bbbbb333333333330056b33b0b00000000050000000000000000000000000000000000000000000000000000
0003000300030003bbb3bbb3666d666d00000000ffffffffffffffffffff3333333fffff00000000000300030003000300030003000300030000000000000000
88888888888888a0bb3bbb3b66d666d630005000fffffffffffffffffffffffb5fffffff00000000003000300088888888888888888888a00000000000000000
8888888888888aa0b3bbb3bb6d666d663003bc70fffffffffffffffffffffffbffffffff0000000003000300088888888888888888888aa00000000000000000
888888888888aaa333333333dddddddd63bbb3cbfffffffffffffffffffffff3ffffffff000000003333333388888888888888888888aaa30000000000000000
88888888888aaaa0bbb3bbb3666d666d300565633fffffffff5ffffffffffff35fffffff00000000000300088888888888888888888aaaa00000000000000000
8888888888aaaaa0bb3bbb3b66d666d600065650bfffffff3bbb3ffffffff3bb333fffff0000000000300088888888888888888888aaaaa00000000000000000
888888888aaaaa00b3bbb3bb6d666d66000000003bfffff33b3bc7fffffff3bc7b3fffff000000000300088888888888888888888aaaaa000000000000000000
88888888aaaaa33333333333dddddddd0000000065f3bbbb333bcc7fffff33cc7733ffff00000000333388888888888888888888aaaaa3330000000000000000
8888888aaaaa000300030003fffffffd00333b005633333bbbb33bb3fb3b33ccc7b333bf0000000000088888888888888888888aaaaa00030000000000000000
888888aaaaa0003000300030ffffffd6000300003ffffff656565633f5f5f33ccb3f5f5f000000000088888888888888888888aaaaa000300000000000000000
88888aaaaa00030003000300fffffd660003b0003ffffff56565656ffffffb3bb33fffff00000000088888888888888888888aaaaa0003000000000000000000
cccccaaaa333333333333333ffffdddd003c7b00ffffffffffffffffffffff33b3ffffff00000000cccccccccccccccccccccaaaa33333330000000000000000
cccccaaa000300030003aaa3fffd666d53377335fffffffffffffffffffffff33fffffff00000000cccccccccccccccccccccaaa000300030000000000000000
cccccaa000300030003aaa30ffd666d6503b3305ffffffffffffffffffffffffffffffff00000000cccccccccccccccccccccaa0003000300000000000000000
ccccca000300030003aaa300fd666d660003b0004fffffffff444fffffffffffffffffff00000000ccccccccccccccccccccca00030003000000000000000000
ccccc3333333333333333333dddddddd000000004444444444444444fff4444444444fff00000000ccccccccccccccccccccc333333333330000000000000000
000000000000000000000000000000d0000000000010000000000000000d10000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000d7000070000000000d0700d000000000000070000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000070000000001700000d0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000700000000000000d00000710000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000700007d000000000d0070d000000000000700000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000d0000000000000000000100000000000001d0000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000d70000d0000000000d1700d000000000170d10060000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
09090909090909090b09090909090909090a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090908090a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909330a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909093323230a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090809090909090b230a0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909093323230a0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090933230909090933230a0a0a0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090933232323232323230a0a0a0a0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090908080808090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090908080808090909090909090909090909090909090909090808080909090a09090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090909090909090909090909080808080808090a0a0a090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909090909090909090909090909090908080908080808090a09090a090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090909090908080808090909080a0a0a0a0a0a0a090a0a0a0a0a0a0a090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090909080909090909090909090a0a0a0a0a0a09090a0a0a0a0a090a090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090908080909090909090808090a0a0a0a0a0909090909090909090a090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090909090909090909080909080a0a0a0a0909090909090909090a09090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909090909090909090b0b0b09090809080809090a0a0a09090a0a09090909090a09090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090b0b090b0b0b0b090908080809090909090a090a0a0a0a0a0a090a090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090b0b0b0b0b0b0b0808080908090909090909090a090a0a0a0a0a0a0a0a09090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090b0b0b0b0b0b0b0909090908090909090909090a0a0a0a0a0a0a0a0a0a09090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090b0b0b0b0b0b0b0909090909080909090909090a0a0a0a0a0a09090a0a0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090b0b0b0b090909090909090909090909090a090a0a0a0a09090a0a0a0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090b0b0b0909090909090909090909090a0a0a0a0a0a0a0a09090a0a090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909090909090909090909090909090a0a0a0a0a0a0a090909090a0a090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09090909090909090909090909090909090909090909090a0a0a0a0a0a0a0a09090909090a09090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909090909090909090909090a0a0a0a09090a090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090909090909090909090909090909090909090a0a0909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344
00 41424344

