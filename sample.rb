def process1()
    puts "Enter a rating from 1 to 5."
    p = gets.to_i
    while true
        if p === 1..5
            puts "Enter your comment:"
            c = gets.chomp
            content = {point:p,comment:c}
            post = "Your points: #{content[:point]} Your comments: #{content[:comment]}"
            File.open('data.txt','a') do |f|
                f.puts(post)
            end
            break
        else
            puts "Enter a rating from 1 to 5."
            p = gets.to_i
        end
    end
end

def process2()
    File.open('data.txt','r') do |file|
        file.each_line do |line|
            puts line
        end
    end
end


def tab_print
    contents = []
    puts "veuillez selectionner le processus"
    while true
        puts "1: enter your points of appreciation and your comments"
        puts "2: Check the results achieved so far"
        puts "3: Exit"
        choice = gets.to_i
        case choice
            when 1
                process1()
            when 2
                process2()
            when 3
                puts "EXIT"
                    break

            else
                puts "Enter a rating from 1 to 3"
                redo
        end
        
    end
end

tab_print()