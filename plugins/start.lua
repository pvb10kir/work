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
    		{text = 'انتقال به درگاه🌐', url = 'hamsargram.tk/TejaratBank/Payment.html'},
	    },
	{
	        		{text = '🔙بازگشت', callback_data = '!next'},

    },    
    }
    return keyboard
end
local action = function(msg, blocks, ln)
	if blocks[1] == 'start' or blocks[1] == 'help' then
	if db:hget('bot:users', msg.from.id) then
	api.sendMessage(msg.chat.id, 'شما قبلا از این دستور استفاده کرده اید برای دوباره بالا امدن کیبورد\n/key\nرا ارسال کنید.', true)
	else
	db:hset('bot:users', msg.from.id, 'xx')
	db:hincrby('bot:gen', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[توضیحات برنامه صیغه یاب❤️👌🏻👇🏻]]
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
		end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, '_Hi _*Send Me Start To Private Message*' ,do_keyboard_startme(), true)
        end
        return
    end
if blocks[1] == 'status' then
local users = db:hget('bot:gen', 'users')
 api.sendMessage(msg.chat.id, 'Users : |'..users..'|', true)
end
if blocks[1] == 'reset' then
 db:del('bot:gen', 'users')
 api.sendMessage(msg.chat.id, '*Bot Users Reseted!*', true)
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
			
			❌قیمت به مدت محدود: 10000 تومان
			
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
 api.sendPhoto(msg.chat.id, "/home/apis/work/1.jpg", caption, 0)
end
if query == 'act' then
            local text = [[سلام به قسمت خرید برنامه خوش اومدید
			
			توجه کنید که این خرید توسط درگاه امن بانک تجارت صورت میگیرد و بعد از پرداخت برنامه به صورت خودکار توسط ربات برای شما فرستاده میشود برای انتقال به درگاه روی دکمه ی زیر کلیک کنید و عملیات پرداخت را کامل کنید تا هرچه زودتر صیغه ی مناسب خود را پیدا کنید
			
			وجه ده هزارتومن رو از طریق درگاه ذیل بفرمایید.👇]]
            local keyboard = do_keyboard_act()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'b' then
            local caption = [[#کد112
			مجرد
			21 ساله
			برای اطلاعات بیشتر + شماره تلفن برای هماهنگی نسبت به دانلود برنامه اقدام کنید.]]
 api.sendPhoto(msg.chat.id, "/home/apis/work/2.jpg", caption, 0)
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
	   '^/(status)$',
	    '^###cb:!(next)',
'^###cb:!(list)',
	   '^###cb:!(e)',
	    '^###cb:!(b)',
		    '^###cb:!(act)',
    }
}
