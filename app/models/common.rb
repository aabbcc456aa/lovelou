class Common
  #相册访问权限设置
  PERMISSES=[[0,"对所有人开放"],[1,"对好友开放"],[2,"回答验证问题"],[3,"需要密码验证"],[4,"仅本人访问"]]
  def self.get_permiss(key)
    PERMISSES.select{|t| break t[1] if value == key}
  end
end