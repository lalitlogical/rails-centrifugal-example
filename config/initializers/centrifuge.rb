Client = Centrifuge::Client.new(scheme: :http, host: "localhost", port: 8001, secret: ENV['CENTRIFUGAL_SECRET'])
