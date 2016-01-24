module PostsHelper
  def taiwan_no1_calendar(the_date)
    content_tag :span do
      "民國 #{the_date.year - 1911} 年 #{the_date.month} 月 #{the_date.day} 日"
    end
  end
end
