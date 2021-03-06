# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
	User.create(email: 'ngocquyhoang.93@gmail.com' ,name: 'Hoang Ngoc Quy', password: "Cbr1000r", role: 'admin', gender: 'Male', age: '22', address: 'No 1 Nhan my streest, Nam tu liem distric Ha noi city', p_num: '01658943584')
	User.create(email: 'nguyenvantoan@gmail.com' ,name: 'Nguyen Van Toan', password: "Cbr1000r", role: 'member', gender: 'Male', age: '22', address: 'No 1 Dai Co Viet streest, Hai ba trung distric Ha noi city', p_num: '01234567891')
	User.create(email: 'dotuananh@gmail.com' ,name: 'Do Tuan Anh', password: "Cbr1000r", role: 'member', gender: 'Male', age: '22', address: 'No 2 Hoang Hoa Tham streest, Tay Ho distric Ha noi city', p_num: '0987789987')
	User.create(email: 'vutiendung@gmail.com' ,name: 'Vu Tien Dung', password: "Cbr1000r", role: 'member', gender: 'Male', age: '22', address: 'No 3 Pham Van Dong streest, Tay Ho distric Ha noi city', p_num: '01662786955')
	User.create(email: 'luongtiensy@gmail.com' ,name: 'Luong Tien Sy', password: "Cbr1000r", role: 'member', gender: 'Male', age: '22', address: 'No 224 Tran Duy Hung streest, Cau Giay distric Ha noi city', p_num: '0924586357')
	User.create(email: 'nguyenviethuynh@gmail.com' ,name: 'Nguyen Viet Huynh', password: "Cbr1000r", role: 'member', gender: 'Male', age: '22', address: 'No 25 Pho Vong streest, Hai Ba Trung distric Ha noi city', p_num: '0956897535')
	Admin::Blog.create(title: 'Install rails', content: "Ruby on Rails is one of the most popular application stacks for developers wishing to create sites and web apps. The Ruby programming language, coupled with the Rails development framework, makes app development simple.

Since Ruby on Rails doesn't come in a neatly packaged format, getting the framework installed used to be one of the more difficult parts of getting started. Luckily, tools like rvm, the Ruby Version Manager, have made installation simple.

In this guide, we'll show how to install rvm on an Ubuntu 14.04 VPS, and use it to install a stable version of Ruby and Rails. Although you can go through these procedures as the root user, we'll assume you're operating using an unprivileged user as shown in steps 1-4 in this guide.")
