(define about-template
  (lambda ()
    `(html
      ((head
        (title "About | The White Acre")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/style.css")))
        (link (@ (rel "stylesheet") (href "/static/about.css")))
        (link (@ (rel "preconnect") (href "https://fonts.googleapis.com")))
        (link (@ (rel "preconnect") (href "https://fonts.gstatic.com")))
        (link (@ (rel "stylesheet") (href "https://fonts.googleapis.com/css2?family=Open+Sans:wght@500;700&display=block")))
        (link (@ (rel "stylesheet") (href "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css")))
        (script (@ (src "https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js")) ""))
      (body
      (div (@ (class "home"))
        (header
          (div (@ (class "wrapper"))
            (a (@ (href "/") (class "logo")) (img (@ (src "/static/logo.svg"))))
              (nav
                (a (@ (href "/about") (class "active")) "About")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/research")) "Papers"))))

        (main
          (div (@ (class "hero"))
            (div (@ (class "overlay")) "")
            (div (@ (class "wrapper"))
              (h1 "About")
              (p "I also love to rock climb, play chess, and make music.")
            )
          )
          (div (@ (class "why"))
            (div (@ (class "wrapper"))
              (div
                (h1 "My Research")
                (p "I'm really interested in exploring the inner workings of deep neural networks. My PhD research is about neural partitioning, which is the process of splitting deep neural networks into sparse subnetworks that can be trained, executed, or analyzed independently. My work touches on several powerful topics in machine learning including: low-cost ensemble learning, interpretability methods, network pruning, continual learning, neuroregeneration, evolutionary methods and quantum computation. Check out my research papers to learn more about what I'm working on.")
              )
            )
          )

          ; (div (@ (class "timeline"))
          ;   (div (@ (class "wrapper"))
          ;     (ul 
          ;       (li "1992: Born in Florida")
          ;       (li "1996: Got a Nintendo 64 which started a lifelong affair with video games and programming")
          ;       (li "1997: Deep Blue defeats Garry Kasparov")
          ;       (li "1997: Moved to New Orleans, Louisiana")
          ;       (li "2012: Went on my first outdoor climbing trip")
          ;       (li "2015: Graduated from Chico State University with a B.S. in Computer Science")
          ;       (li "2017: Built my first computer")
          ;       (li "2018: Climbed my first V10")
          ;       (li "2020: Graduated from Colorado State University with an M.S. in Computer Science")
          ;       (li "2021: Published my first paper (Prune and Tune Ensembles) at AAAI")
          ;       (li "2022: Got married to my best friend")
          ;     )
          ;   )
          ; )

          ; (div (@ (class "hero3"))
          ;   (div (@ (class "overlay")) "")
          ;   (div (@ (class "wrapper"))
          ;     (h1 "I love to play chess")
          ;     (p "...")
          ;   )
          ; )

          ; (div (@ (class "hobbies"))
          ;   (div (@ (class "wrapper"))
          ;     (h1 "Hobbies")
          ;     (p "I'm an avid rock climber...")
          ;   ))

          (div (@ (class "gallery"))
            (div (@ (class "item"))
              (img (@ (src "/static/wormturns.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/highball.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/ceremony.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/midnight.png"))))
            (div (@ (class "item"))
              (img (@ (src "/static/saigon.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/rmnp.jpg"))))
            (div (@ (class "item"))
              (img (@ (src "/static/evilution.jpg"))))
          "" )

          ; (div (@ (class "professional"))
          ;   (div (@ (class "wrapper"))
          ;     (h1 "Education")
          ;     (p "I am working on my PhD. I've been programming for a long time. I consider myself a bit of a polyglot. I love languages.")
            
          ;     (div (@ (class "education"))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (h2 "Doctor of Philosophy in Computer Science")
          ;           (span "Expected May 2023"))
          ;         (p "Colorado State University")
          ;         (p "Dissertation: Neural Partitioning"))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (h2 "Master of Science in Computer Science")
          ;           (span "May 2021"))
          ;         (p "Colorado State University")
          ;         (p "Thesis: Prune and Tune Ensembles: Low-Cost Ensemble Learning With Sparse Independent Subnetworks"))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (h2 "Bachelor of Science in Computer Science")
          ;           (span "May 2015"))
          ;         (p "California State University, Chico")
          ;         (p "Capstone: Real Time Web Performance Analysis"))
          ;       (div (@ (class "item"))
          ;         (h2 "Relevant Coursework")
          ;         (p "Machine Learning, 3D User Interfaces, Artificial Intelligence, Object-Oriented Programming, Compiler Design, Software Engineering, Algorithms and Data Structures, Numerical & Parallel Programming, Computer Security, Linear Algebra for Data Science, Probability and Statistics")))
          ;   )
          ; )
          
          (footer
            (div (@ (class "wrapper"))
              (div (@ (class "column"))
                (h2 "Site")
                (a (@ (href "/about")) "About")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks")
                (a (@ (href "/research")) "Research"))
              (div (@ (class "column"))
                (h2 "Links")
                (a (@ (href "https://arxiv-sanity-lite.com")) "Arxiv Sanity")
                (a (@ (href "https://paperswithcode.com")) "Papers With Code")
                (a (@ (href "https://news.ycombinator.com")) "Hacker News")
                (a (@ (href "https://www.youtube.com/c/pbsspacetime")) "Space Time"))
              (div (@ (class "column"))
                (h2 "Self")
                (a (@ (href "#")) "CV")
                (a (@ (href "https://github.com/tjwhitaker")) "Github")
                (a (@ (href "https://lichess.org/@/tjwhitaker")) "Lichess")
                (a (@ (href "https://orcid.org/0000-0003-3792-3901")) "Orcid")
                ))))))))))