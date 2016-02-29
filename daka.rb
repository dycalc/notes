require 'watir-webdriver'
daka = Watir::Browser.new


daka.goto('http://app.n22.com.cn/')
sleep(8)
sleep(rand(10))
daka.text_field(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/div/div/form/div[1]/input").set('账号')
daka.text_field(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/div/div/form/div[2]/input").set('密码')
daka.button(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/div/div/form/div[3]/div[2]/button").click
sleep(5)
# daka.a(:xpath=>"/html/body/div/div/div[1]/header/nav/a[2]").click
# daka.a(:xpath=>"/html/body/div/div/div[1]/aside[1]/section/ul/li[2]/a").click
daka.goto('http://app.n22.com.cn/#/module/attendance/year/')
# daka.a('/html/body/div/div/div[1]/header/nav/a[2]').click
# sleep(1)
# daka.a('/html/body/div/div/div[1]/aside[1]/section/ul/li[2]/a').click
# sleep(1)
# daka.a('/html/body/div/div/div[1]/aside[1]/section/ul/li[2]/ul/li/a').click

sleep(5)

daka.td(:xpath=>"/html/body/div/div/div[2]/div/footer/table/tbody/tr/td[1]").click
sleep(5)
b = ["活动历测试", "活动统计测试", "活动报表测试", "ios活动测试", "用例维护和bug复测"]
# b = ["建议书复测"，""]
a = rand(4)
c = Time.new.hour.to_s + ":" + Time.new.min.to_s + b[a]
daka.text_field(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/form/div[1]/div/div[2]/div[4]/div/div/input").set(c)
# 工时计算
time = Time.new
# p time.hour
time = Time.new
# p time.hour
if time.min < 30
	fz = 0
else
	fz = 0.5
end
gs = time.hour+fz-10
gs_str = gs.to_s
daka.select_list(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/form/div[1]/div/div[2]/div[3]/div/select").select_value(gs_str)
daka.select_list(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/form/div[1]/div/div[2]/div[1]/div/select").select_value("4c4696247e1f4ca2a695088b52a483bf")

daka.a(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/form/div[1]/div/div[2]/div[2]/div/a").click
sleep(5)
daka.li(:xpath=>"/html/body/div[3]/div/div/div/div[2]/ul/ul/li[6]").click
# sleep(1)
daka.li(:xpath=>"/html/body/div[3]/div/div/div/div[2]/ul/ul/li[11]").click
# sleep(1)
daka.button(:xpath=>"/html/body/div/div/div[2]/div/section/div/div[2]/form/div[3]/button").click

