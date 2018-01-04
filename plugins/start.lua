local function do_keyboard_list()
    local keyboard = {}
    keyboard.inline_keyboard = {
    					{
    		    		{text = 'کد 33✅', callback_data = '!a'},
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
	    {
	    {text = '🔙Back', callback_data = '!home'}
        }
    }
    return keyboard
end
local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    {
	        {text = '♨️نوضیحات♨️', callback_data = '!next'},
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
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = [[توضیحات برنامه صیغه یاب❤️👌🏻👇🏻]]
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, '_Hi _*Send Me Start To Private Message*' ,do_keyboard_startme(), true)
        end
        return
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
if query == 'a' then
            local text = [[#کد33
			مجرد
			25 ساله
			برای اطلاعات بیشتر + شماره تلفن برای هماهنگی نسبت به دانلود برنامه اقدام کنید.]]
            local keyboard = do_keyboard_a()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'act' then
            local text = [[سلام به قسمت خرید برنامه خوش اومدید
			توجه کنید که این خرید توسط درگاه امن بانک تجارت صورت میگیرد و بعد از پرداخت برنامه به صورت خودکار توسط ربات برای شما فرستاده میشود برای انتقال به درگاه روی دکمه ی زیر کلیک کنید و عملیات پرداخت را کامل کنید تا هرچه زودتر صیغه ی مناسب خود را پیدا کنید.]]
            local keyboard = do_keyboard_act()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'b' then
            local text = [[#کد112
			مجرد
			21 ساله
			برای اطلاعات بیشتر + شماره تلفن برای هماهنگی نسبت به دانلود برنامه اقدام کنید.]]
            local keyboard = do_keyboard_b()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
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
	    '^###cb:!(next)',
'^###cb:!(list)',
	   '^###cb:!(a)',
	    '^###cb:!(b)',
		    '^###cb:!(act)',
    }
}
