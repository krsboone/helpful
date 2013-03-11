   say "To mute your line, press the STAR key" , {:voice => "Vanessa"}

   while $currentCall.isActive do
      
      conference "4567", {
         :terminator => "*",
         :mute => false,
         :playTones => false}
      
      say "Mute on", {:voice => "Vanessa"}
      
      conference "4567", {
         :terminator => "*",
         :mute => true,
         :playTones => false}
      
      say "Mute off", {:voice => "Vanessa"}
   
   end