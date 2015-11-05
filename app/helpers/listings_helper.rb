module ListingsHelper
    def auction_start
        start_date = Time.new(2016,1,1)
        return start_date
    end
    
    def get_days(today)
        d1 = auction_start
        d2 = today
        days = (d1-d2)/60/60/24
        return days.to_i
    end
    
    def get_minutes(today)
        d1 = auction_start
        d2 = today
        minutes = (d1-d2)/60/60%24
        return minutes.to_i
    end
end
