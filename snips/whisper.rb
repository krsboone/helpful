say "One moment while we connect your call"
transfer '14075555555', {
    :playvalue => "http://hosting.tropo.com/someAccountID/www/audio/ringAudioFile.wav",
    :playTones => true,
    :callerID => "14075555555",
    :onConnect => lambda { |event| 
        ask "Press 1 to accept the call, press any other key to reject.", {
            :choices => "1",
            :timeout => 15.0,
            :mode => "dtmf",
            :onChoice => lambda { |event|
                 say "Connecting you now"
            },
            :onBadChoice => lambda { |event|
                 say "Rejecting the call, goodbye"
                 hangup
            }
         }
     }
}
