(define music-template
  (lambda ()
    `(html
      ((head
        (title "Music | Dead Neuron")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/music.css")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css?family=Fira+Mono:400,500,700|&display=swap"))))
      (body
      (div (@ (class "home"))
        (header
          (div (@ (class "wrapper"))
            (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
            (nav 
              (a (@ (href "/about")) "About")
              (a (@ (href "/art")) "Art")
              (a (@ (href "/music")) "Music")
              (a (@ (href "/writing")) "Writing"))
          ))
        (main
          ; (div (@ (class "hero"))
          ;   (div (@ (class "overlay")) "")
          ;   (div (@ (class "wrapper"))
          ;     (h1 "About")
          ;     (p "I'm Tim and this is my beautiful wife.")
          ;   )
          ; )

          (div (@ (class "sequencer")) "")
          (div (@ (class "wrapper"))
            (div (@ (class "player"))
              (div (@ (class "launchpad"))
                (div (@ (class "pad drum") (data-sound "drum.1.1")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.2")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.3")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.4")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.5")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.6")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.7")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.8")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.9")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.10")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.9")) "")
                (div (@ (class "pad drum") (data-sound "drum.1.10")) "")
                ; (div (@ (class "pad drum") (data-sound "drum.1.9")) "")
                ; (div (@ (class "pad drum") (data-sound "drum.1.10")) "")
                ; (div (@ (class "pad drum") (data-sound "drum.1.9")) "")
                ; (div (@ (class "pad drum") (data-sound "drum.1.10")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.1")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.2")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.3")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.4")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.5")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.6")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.7")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.8")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.9")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.10")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.9")) "")
                (div (@ (class "pad bass") (data-sound "bass.1.10")) "")
                ; (div (@ (class "pad bass") (data-sound "bass.1.9")) "")
                ; (div (@ (class "pad bass") (data-sound "bass.1.10")) "")
                ; (div (@ (class "pad bass") (data-sound "bass.1.9")) "")
                ; (div (@ (class "pad bass") (data-sound "bass.1.10")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.1")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.2")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.3")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.4")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.5")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.6")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.7")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.8")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.9")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.10")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.9")) "")
                (div (@ (class "pad melody") (data-sound "sounds.1.10")) "")
                ; (div (@ (class "pad melody") (data-sound "sounds.1.9")) "")
                ; (div (@ (class "pad melody") (data-sound "sounds.1.10")) "")
                ; (div (@ (class "pad melody") (data-sound "sounds.1.9")) "")
                ; (div (@ (class "pad melody") (data-sound "sounds.1.10")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.1")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.2")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.3")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.4")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.5")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.6")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.7")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.8")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.9")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.10")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.9")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.10")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.9")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.10")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.9")) "")
                ; (div (@ (class "pad fx") (data-sound "fx.1.10")) "")
                )

              (div (@ (class "options"))
                (h2 "Sample Sequencer")
                (p "This is a music tool inspired by Madeon's Adventure Machine.")
                (div (@ (class "controls"))
                  (div (@ (class "play")) "")
                  (div (@ (class "stop")) "")
                  (div (@ (class "tempo"))
                    (p "Tempo") 
                    (input (@ (type "text") (value "100")))))))))

          (footer 
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")

              )
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "")) "Hello")
                (a (@ (href "")) "Hello")

              )
              (div (@ (class "column"))
                (h2 "Hello World")
              )
            )
          )

          (script (@ (src "/static/progressbar.min.js")) "")
          (script (@ (src "/static/howler.min.js")) "")
          (script (@ (src "/static/launchpad.js")) "")))))))