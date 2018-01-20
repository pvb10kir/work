local function do_keyboard_list()
    local keyboard = {}
    keyboard.inline_keyboard = {
    					{
    		    		{text = 'کد 33✅', callback_data = '!e'},
{text = 'کد 112✅', callback_data = '!b'},
},
	    {
	    {text = '🔙بازگشت', callback_data = '!next'}
        }
    }
    return keyboard
end
local function do_keyboard_next()
    local keyboard = {}
    keyboard.inline_keyboard = {
{
    		    		{text = 'چند کد اماده صیغه⛔️', callback_data = '!list'},
	    },
{
    		    		{text = 'خرید و فعالسازی برنامه🔞', callback_data = '!act'},
	    },
    }
    return keyboard
end
local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    {
	        {text = '♨️توضیحات♨️', callback_data = '!next'},
        },
	}		
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📥click', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end
local function do_keyboard_e()
    local keyboard = {}
    keyboard.inline_keyboard = {
	    {
	    {text = '🔙بازگشت', callback_data = '!list'}
        }
    }
    return keyboard
end
local function do_keyboard_b()
    local keyboard = {}
    keyboard.inline_keyboard = {
	    {
	    {text = '🔙بازگشت', callback_data = '!list'}
        }
    }
    return keyboard
end
local function do_keyboard_act()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'انتقال به درگاه🌐', url = 'hamsarg.tk/TejaratBank/Payment.html'},
	    },
	{
	        		{text = '🔙بازگشت', callback_data = '!next'},

    },    
    }
    return keyboard
end
local action = function(msg, blocks, ln)
        if blocks[1] == 'start' or blocks[1] == 'help' then
        db:hincrby('bot:gen', 'users', 1)
	db:sadd('bot:bc', msg.from.id)
        if msg.chat.type == 'private' then
            local message = [[توضیحات برنامه صیغه یاب❤️👌🏻👇🏻]]
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
api.sendMessage(msg.from.id, 'سلام برای دریافت اخبار جدید ربات و دیدن نمونه ها و کدهای صیغه جدید در کانال ربات جوین شین:\n[برای جوین شدن روی اینجا کلیک کنید](https://t.me/joinchat/AAAAAFJeVnS06dhvmocc3w)', true)
    end
if blocks[1] == 'broadcast' and blocks[2] and is_admin(msg) then
    local gps = db:scard('bot:bc') or 0
          local gpss = db:smembers('bot:bc') or 0
	for i=1, #gpss do
		  api.sendMessage(gpss[i], blocks[2], true)
    end
                   api.sendMessage(msg.from.id, '*Your Msg Send to* `|'..gps..'|` *Users!*', true)
	end
if blocks[1] == 'status' then
local users = db:scard('bot:bc')
 api.sendMessage(msg.chat.id, 'Users : |'..users..'|', true)
end
if blocks[1] == 'reset' then
 db:del('bot:bc')
 api.sendMessage(msg.chat.id, '*Bot Users Reseted!*', true)
end
if blocks[1] == 'key' then
local message = [[توضیحات برنامه صیغه یاب❤️👌🏻👇🏻]]
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
end
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
        if query == 'list' then
            local text = 'لیستی از خانوم های اماده صیغه شدن کاملا حلال!♨️ برای دریافت لیست کامل (50000 نفری) برنامه را خریداری کنید.'
            local keyboard = do_keyboard_list()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'next' then
            local text = [[ببینید دوستان ما از تمام نقاط ایران صیغه داریم (بیش از 50000 خانم)
			⭕️در بیش از 700 شهر کشور⭕️
			پس از خرید نرم افزار میتونید به راحتی صیغه های مورد نظر شهرتون رو پیدا کنید🌹
			
			🔴نرم افزار صیغه یاب🔴
			
			☀️نمایش افراد تا 500 متری شما
			☀️امکان چت از طریق تلگرام
			☀️شروع گفتگو تصادفی
			☀️جستجو بر اساس سن و جنسیت
			☀️امکان جستجوی صیغه های شهر مورد نظر خود
			
			❌قیمت به مدت محدود: 2000 تومان
			
			روزانه بیش از 100 خانوم جدید به لیست صیغه ای های نرم افزار اضافه میشوند 
		برای خرید روی گزینه
			"خرید و فعالسازی برنامه🔞"
			کلیک کنید تا توضیحات بیشتر در اختیار شما بزاریم
			تحویل آنی برنامه توسط ربات!!!!!!!!!🆕]]
            local keyboard = do_keyboard_next()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'e' then
local caption = [[#کد33
			مجرد
			24 ساله
			برای اطلاعات بیشتر + شماره تلفن برای هماهنگی نسبت به دانلود برنامه اقدام کنید.]]
 api.sendPhoto(msg.chat.id, "/root/work/1.jpg", caption, 0)
end
if query == 'act' then
            local text = [[سلام به قسمت خرید برنامه خوش اومدید
			
			توجه کنید که این خرید توسط درگاه امن بانک تجارت صورت میگیرد و بعد از پرداخت برنامه به صورت خودکار توسط ربات برای شما فرستاده میشود برای انتقال به درگاه روی دکمه ی زیر کلیک کنید و عملیات پرداخت را کامل کنید تا هرچه زودتر صیغه ی مناسب خود را پیدا کنید
			
			وجه دو هزارتومن رو از طریق درگاه ذیل بفرمایید.👇]]
            local keyboard = do_keyboard_act()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'b' then
            local caption = [[#کد112
			مجرد
			21 ساله
			برای اطلاعات بیشتر + شماره تلفن برای هماهنگی نسبت به دانلود برنامه اقدام کنید.]]
 api.sendPhoto(msg.chat.id, "/root/work/2.jpg", caption, 0)
end
        if query == 'share' then
     api.sendContact(msg.from.id, '+989309649221', '🔸~[S]epehr')
end
			end
    end

return {
	action = action,
	triggers = {
	    '^/(start)$',
	    '^/(reset)$',
	"^/(broadcast) (.*)$",
	   '^/(status)$',
	   '^/(key)$',
	    '^###cb:!(next)',
'^###cb:!(list)',
	   '^###cb:!(e)',
	    '^###cb:!(b)',
		    '^###cb:!(act)',
    }
}
