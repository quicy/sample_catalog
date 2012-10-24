#encoding: utf-8

# coding: utf-8
module ProductDecorator
  def display_price
    number_to_currency(price, unit: '￥', precision: 0)
  end

  def display_image
    image_tag(image_url) if image?
  end

  def display_description
    simple_format(description)
  end

  def display_recommend
    if recommend then 'おススメ'
    else ''
    end
  end
end
