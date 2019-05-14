# README

Start centrifugo service
```centrifugo --config centrifugo.development.json --port=8001```

Update .env file
`CENTRIFUGAL_HOST=http://localhost:8001`
`CENTRIFUGAL_SECRET=asldjhkasdjkasdjkasdjkjkasd`

Update centrifugo client with port
`Client = Centrifuge::Client.new(scheme: :http, host: "localhost", port: 8001, secret: ENV['CENTRIFUGAL_SECRET'])`

