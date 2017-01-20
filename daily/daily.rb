# daily.rb
# For daily midway SSH setup
 
mwinit = "mwinit"
sdel = "ssh-add -D ~/.ssh/*_rsa"
sadd = "ssh-add ~/.ssh/*_rsa"
 
authenticated = system( "mwinit" )
 
if authenticated
   %x( #{sdel} )
   %x( #{sadd} )
else
   puts "Failed to authenticate."
end
