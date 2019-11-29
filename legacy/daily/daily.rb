# daily.rb
# For daily midway SSH setup
 
mwinit = "mwinit"
sdel = "ssh-add -D ~/.ssh/*_rsa"
sadd = "ssh-add ~/.ssh/*_rsa"
# https://sage.amazon.com/posts/233407
#    # Copy the certificate to the Cloud Desktop so Cron job will work
#    scp -q ~/.ssh/id_rsa-cert.pub $CLOUD:/home/$USER/.ssh/
#    scp -q -r ~/.midway/ $CLOUD:/home/$USER/
#    scp -q ~/.ssh/*_rsa $CLOUD:/home/$USER/.ssh
scp1 = "scp -q ~/.ssh/id_rsa-cert.pub $CLOUD:/home/$USER/.ssh/"
scp2 = "scp -q -r ~/.midway/ $CLOUD:/home/$USER/"
scp3 = "scp -q ~/.ssh/*_rsa $CLOUD:/home/$USER/.ssh"
 
authenticated = system( "mwinit" )
 
if authenticated
   %x( #{sdel} )
   %x( #{sadd} )
   %x( #{scp1} )
   %x( #{scp2} )
   %x( #{scp3} )
else
   puts "Failed to authenticate."
end
