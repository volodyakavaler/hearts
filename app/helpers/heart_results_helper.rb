module HeartResultsHelper
  def points_size(id)
    HeartPoint.all.where(heart_result_id: id).size/200
  end
  def points_xs(id)
    HeartPoint.all.where(heart_result_id: id).map{|i| i.x.to_i}.each_slice(200).to_a
  end
  def points_ys(id)
    HeartPoint.all.where(heart_result_id: id).map{|i| i.y}.each_slice(200).to_a
  end

end
