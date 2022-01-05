module PaginationHelper
  def total_pages(data)
    data.total / 15
  end
end
