 require 'rubygems'
require 'rqrcode'
class Qrcode
  def self.logo
      qrcode = RQRCode::QRCode.new("http://agiratech.com/")
     
      png = qrcode.as_png(
            resize_gte_to: false,
            resize_exactly_to: false,
            fill: 'white',
            color: 'black',
            size: 120,
            border_modules: 4,
            module_px_size: 6,
            file: nil 
          )
      IO.write("/home/agira/ruby-sample-programs/logo.png", png.to_s)
  end

end


Qrcode.logo
puts "qr code created "