
// Khởi tạo vận tốc 
ysp+=0.1
xsp=0
//Điều khiển di chuyển theo chiều ngang
if keyboard_check(vk_left)
{
	xsp=-1	
}

if keyboard_check(vk_right)
{
	xsp=+1
}
//Kiểm tra va chạm và nhảy
if place_meeting(x,y+1,oSolid)
{
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp=-2	
	}
}
//Di chuyển và xử lý va chạm
move_and_collide(xsp,ysp,oSolid)


//Xử lý va chạm với cờ và gai
if place_meeting(x,y,oFlag)
{
	room_goto_next()	
}

if place_meeting(x,y,oSpike)
{
	room_restart()
}




