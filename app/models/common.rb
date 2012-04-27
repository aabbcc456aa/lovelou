#encoding : utf-8
class Common
  #相册访问权限设置
  QUESTION_PERMISS = 2
  PASS_PERMISS = 3
  NO_PERMISS = 4
  PERMISSES = [["对所有人开放",0],["对好友开放",1],["回答验证问题",2],["需要密码验证",3],["仅本人访问",4]]
  def self.get_permiss(key)
    PERMISSES.select{|t| break t[1] if value == key}
  end
  
  #相册分类
  ALBUM_TYPES = [["最爱",0],["人物",1],["风景",2],["动物",3],["游记",4],["卡通",5],
    ["军事",6],["汽车",7],["生活",8],["美食",9],["其他",10]]
  def self.get_album_type(key)
    ALBUM_TYPES.select{|t| break t[1] if value == key}
  end


  #回复种类
  ALBUM_REPLY = 1
  DAYLOG_REPLY =2
  PHOTO_REPLY = 3
  REPLY_TYPES = [["相册",1],["日志",2],["相片",3]]
  def self.get_reply_type(key)
    REPLY_TYPES.select{|t| break t[1] if value == key}
  end
  
  #日志分类
  DIARY_TYPES = [["个人",0],["科技",1],["风景",2],["生活",3],["游记",4],["卡通",5],
    ["军事",6],["汽车",7],["生活",8],["美食",9],["其他",10]]
  def self.get_diary_type(key)
    DIARY_TYPES.select{|t| break t[1] if value == key}
  end
end