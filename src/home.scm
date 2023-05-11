(define home-template
  (lambda ()
    `(html
      ((head
        (title "Wits End")
        (meta (@ (charset "utf-8")))
        (meta (@ (name "viewport") (content "width=device-width, initial-scale=1")))
        (link (@ (rel "icon") (href "/static/favicon.ico")))
        (link (@ (rel "stylesheet") (href "/static/style.css")))
        (link (@ (rel "stylesheet") (href "/static/home.css")))
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
                (a (@ (href "/cv")) "CV")
                (a (@ (href "/research")) "Publications")
                (a (@ (href "/models")) "Models")
                (a (@ (href "/notebooks")) "Notebooks"))))

          (main
            (div (@ (class "hero"))
              (div (@ (class "overlay")) "")
                (div (@ (class "wrapper"))
                  (h1 "Building Better" (br) "Neural Networks")
                  (p "Welcome! My name is Tim and Wits End is my personal website, a repository for my research, and an outlet for digging deeper into artificial intelligence.")))

            (div (@ (class "content wrapper"))
              (div (@ (class "header"))
                (h1 "Articles"))
              (div (@ (class "primary-col"))
                (div (@ (class "paper interpretable-diversity-analysis"))
                    (div
                      (h1 "Knowledge Distillation: Teaching Small Models to Perform Like Large Ones")
                      (p "IJCNN 2022")
                      (p "Knowledge Distillation is a model compression technique in machine learning where a smaller, simpler student model is trained to replicate the behavior of a larger, more complex teacher model. The fundamental principle underlying this technique is the transference of 'knowledge' from the teacher model to the student model...")
                      (a (@ (href "#") (class "read-more")) "Read More")))
                (div (@ (class "paper synaptic-stripping"))
                    (div
                      (h1 "Sparsity in Practice: Leveraging Sparse Representations for Efficient Neural Networks")
                      (p "IJCNN 2023")
                      (p "A deep dive into the concept of sparsity in neural networks, providing practical advice on designing and training sparse models for improved efficiency. The resultant networks not only reduce the memory footprint and computational requirements but often also improve generalization by reducing overfitting...")
                      (a (@ (href "#") (class "read-more")) "Read More")))
              )
              
              (div (@ (class "secondary-col"))
                (div (@ (class "paper sparse-mutation-decomposition"))
                    (div
                      (h1 "A Deep Dive into Activation Functions")
                      (a (@ (href "#") (class "read-more")) "Read More")))
                
                (div (@ (class "paper synaptic-stripping"))
                    (div
                      (h1 "Binary and Ternary Networks: The Future of Ultra-Efficient Machine Learning")
                      (a (@ (href "#") (class "read-more")) "Read More")))
                
                (div (@ (class "paper low-cost-ensembles"))
                    (div
                      (h1 "Batch Normalization: A Key to Faster and More Stable Training")
                      (a (@ (href "#") (class "read-more")) "Read More")))

                (div (@ (class "paper stochastic-masking"))
                    (div
                      (h1 "Adaptive Learning Rates: The Power of Optimizers in Neural Networks")
                      (a (@ (href "#") (class "read-more")) "Read More")))

                (div (@ (class "paper quantum-neuron-selection"))
                    (div
                      (h1 "Exploring the Benefits of Quantization in Neural Networks")
                      (a (@ (href "#") (class "read-more")) "Read More")))))

            (div (@ (class "featured-paper prune-and-tune-ensembles"))
              (div (@ (class "wrapper"))
                (div
                  (h1 "Subnetwork Ensembles")
                  (p "Ensemble Learning is an effective method for improving generalization in machine learning. However, as state-of-the-art neural networks grow larger, the computational cost associated with training several independent networks becomes expensive. We introduce and formalize a fast, low-cost method for creating diverse ensembles of neural networks without needing to train multiple models from scratch...")
                  (a (@ (href "#") (class "read-more")) "Read More"))))


            (div (@ (class "intro"))
              (div (@ (class "wrapper"))
                (div (@ (class "column-wrapper"))
                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/crypto-gpu.svg"))))
                    (h2 "Model Optimization")
                    (p "I'm passionate about optimizing learning algorithms and model architectures for superior performance."))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                      (img (@ (src "/static/statistical-analysis.svg"))))
                    (h2 "Data Analysis")
                    (p "I love diving into complex datasets and uncovering meaningful insights that drive successful machine learning projects."))

                  (div (@ (class "column"))
                    (div (@ (class "icon"))
                    (img (@ (src "/static/documents-ui.svg"))))
                    (h2 "Software Engineering")
                    (p "I have over a decade of experience in designing, developing, and deploying robust and maintainable software.")))))
          
          ; (div (@ (class "professional"))
          ;   (div (@ (class "wrapper"))
          ;     (div (@ (class "education"))
          ;       (div (@ (class "main-header"))
          ;         (h1 "Education")
          ;         (div
          ;           (img (@ (src "/static/chico-seal.png")))
          ;           (img (@ (src "/static/colo-seal.png")))))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Doctor of Philosophy in Computer Science")
          ;           (span "Expected May 2023"))
          ;         (p "Colorado State University")
          ;         (p "Dissertation: Neural Partitioning and Subnetwork Ensembles")
          ;         (p "Committee: " (a (@ (href "https://www.cs.colostate.edu/~whitley/")) "Darrell Whitley") ", " (a (@ (href "https://www.cs.colostate.edu/~anderson/wp/")) "Charles Anderson") ", " (a (@ (href "https://www.math.colostate.edu/~kirby/")) "Michael Kirby") ", " (a (@ (href "https://www.nikhilkrishnaswamy.com/")) "Nikhil Krishnaswamy")))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Master of Science in Computer Science")
          ;           (span "May 2021"))
          ;         (p "Colorado State University")
          ;         (p "Thesis: Reinforcement Learning with Sparse Reconfigurable Networks")
          ;         (p "Committee: " (a (@ (href "https://www.cs.colostate.edu/~whitley/")) "Darrell Whitley") ", " (a (@ (href "https://www.cs.colostate.edu/~anderson/wp/")) "Charles Anderson") ", " (a (@ (href "https://www.math.colostate.edu/~kirby/")) "Michael Kirby")))                
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Bachelor of Science in Computer Science")
          ;           (span "May 2015"))
          ;         (p "California State University, Chico")
          ;         (p "Capstone: Real Time Web Performance Analysis")
          ;         (p "Advisor: " (a (@ (href "https://www.ecst.csuchico.edu/~trhenry/")) "Tyson Henry")))

          ;       (div (@ (class "item"))
          ;         (h3 "Relevant Coursework")
          ;         (p "Artificial Intelligence, Machine Learning, Embedded Machine Learning, Image Computation, Natural Language Processing, Quantum Computing, High Performance Computing, Software Engineering, System Architecture, Algorithmic Language Compilers, Computational Theory, Stochastic Processes"))
          ;       (div (@ (class "item"))
          ;         (h3 "Associations and Honors")
          ;         (ul
          ;           (li "Recipient of The Artificial Intelligence and Evolutionary Computation Fellowship")
          ;           (li "Presenter and Technical Committee Member at international conferences including: AAAI, IJCNN, and GECCO")
          ;           (li "Member of IEEE")
          ;           (li "Member of ACM"))))

          ;     (div (@ (class "experience"))
          ;       (div (@ (class "main-header"))
          ;         (h1 "Experience"))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Graduate Researcher")
          ;           (span "2019-Current"))
          ;         (p "Colorado State University")
          ;         (ul
          ;           (li "Performed a wide variety of deep learning experiments with sparse reconfigurable artificial neural networks.")
          ;           (li "Research funded by NSF Grant 1908866.")))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Software Engineer")
          ;           (span "2015-2019"))
          ;         (p "Kettle LLC. Design and Development Firm")
          ;         (ul
          ;           (li "Designed, developed, and maintained web applications and ecommerce sites for Google, Disney, Namecheap, Boosted Boards, LifeBeam, Peleton, MyxFitness, and Show Imaging.")))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Web Developer")
          ;           (span "2012-2013"))
          ;         (p "Navigation North Learning Solutions")
          ;         (ul
          ;           (li "Contributed features and fixed bugs for web applications at The United States Department of Educational Technology, The California Department of Education, and The Smithsonian Center of Learning and Digital Access.")))
          ;       (div (@ (class "item"))
          ;         (div (@ (class "header"))
          ;           (p "Web Developer")
          ;           (span "2011-2012"))
          ;         (p "Market Fleet")
          ;         (ul
          ;           (li "Managed the design and development of a Magento ecommerce store and the integration of a custom marketplace widget/plugin."))))))
              
          ; (div (@ (class "personal"))
          ;   (div (@ (class "overlay")) "")
          ;   (div (@ (class "wrapper"))
          ;       (h1 "Tim Whitaker")
          ;       (p "PhD candidate working with deep neural networks. Over a decade of experience in software engineering and academic research. Skilled problem solver with a strong background in computer science.")))


          ; (div (@ (class "contact") (id "contact"))
          ;   (div (@ (class "wrapper"))
          ;     (h1 "Get In Touch")
          ;     (div (@ (class "form-container"))
          ;       (form (@ (netlify "1"))
          ;         (input (@ (placeholder "Name") (name "name") (type "text")))
          ;         (input (@ (placeholder "Email" (name "email") (type "email"))))
          ;         (textarea (@ (placeholder "Message") (name "message")) "")
          ;         (button (@ (type "submit")) "Send Message")))
          ;     (div (@ (class "map-container"))
          ;       (div (@ (id "map")) ""))))
            

          (div (@ (class "reference"))
            (p "Hero images generated with neural networks via " (a (@ (href "https://midjourney.com")) "midjourney") ". This website's " (a (@ (href "https://github.com/tjwhitaker/thewhiteacre")) "source code") " was written entirely in scheme!")))

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
                (a (@ (href "https://orcid.org/0000-0003-3792-3901")) "Orcid"))))

            (script "	mapboxgl.accessToken = 'pk.eyJ1IjoidG13aHRrciIsImEiOiJja2x2NzdpaW0wNXRnMndwOGszNTc3aWd5In0.LvJ2znCQ_1v9a86fxUhQ2A';
            var map = new mapboxgl.Map({
            container: 'map', // container id
            style: 'mapbox://styles/mapbox/streets-v12', // style URL
            center: [-121.4944, 38.5816], // starting position [lng, lat]
            zoom: 10 // starting zoom
            });")))))))
