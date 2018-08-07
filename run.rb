tag_array = ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10']

while tag_array != []
    tags_to_run = tag_array.shift(2)
    tag_string = ""
    count = 0

    tags_to_run.each do |tag|
        if count == 0
            tag_string += tag
            count += 1
        else
            tag_string += ", #{tag}"
            count += 1
        end
    end

    puts "docker run soapuiproject '-t#{tag_string}' './readyapi/project/run.xml'"
    # exec("docker run soapuiproject '-t#{tag_string}' './readyapi/project/run.xml'")
end

puts tag_array.to_s
