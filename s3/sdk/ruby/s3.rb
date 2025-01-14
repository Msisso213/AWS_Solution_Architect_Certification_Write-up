require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

bucket_name =ENV['BUCKET_NAME']
region = 'ca-central-1'

client = Aws::S3::Client.new

resp = client.create_bucket({
    bucket: bucket_name,
    create_bucket_configuration: {
        location_contraint: region
    }
})

number_of_files = 1+rand(6)
puts "number_of_files: #{number_of_files}"

number_of_files.time.each do |i|
    puts "i: #{i}"
    filename = "file_#{i}.txt"
    output_path = "/tmp/#{filename}"

    File.open)
end
