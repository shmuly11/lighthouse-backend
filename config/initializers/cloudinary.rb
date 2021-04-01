Cloudinary.config do |config|    
    config.cloud_name = Figaro.env.cloudinary_cloud_name   
    config.api_key = Figaro.env.cloudinary_key  
    config.api_secret = Figaro.env.cloudinary_secret
    config.secure = true    
    config.cdn_subdomain = true  
 end