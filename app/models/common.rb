#encoding : utf-8
class Common
  #相册访问权限设置
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
  
end