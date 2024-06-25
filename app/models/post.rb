class Post< ApplicationRecord
validates :title,presence: true,length: {maximum: 20}
validates :start, presence: true
validates :finish, presence: true
validates :note,length:{maximum:500}


validate:start_end_check
 def start_end_check
    return if start.nil?||finish.nil?
      if self.start > self.finish

      errors.add(:finish,"は開始日より前の日付は登録できません")
      end
    end


 end