<script>
  import { fade } from 'svelte/transition';
</script>

<div class="min-h-screen bg-gradient-to-br from-purple-100 via-pink-100 to-blue-100">
  <!-- Hero Section -->
  <section class="container mx-auto px-4 py-16 md:py-24">
    <div class="flex flex-col md:flex-row items-center gap-8">
      <div class="w-full md:w-1/2 rounded-3xl overflow-hidden">
        <img 
          src="/hero-image.jpg" 
          alt="Happy people" 
          class="w-full h-full object-cover rounded-3xl"
        />
      </div>
      <div class="w-full md:w-1/2 text-center md:text-left">
        <h1 class="text-4xl md:text-6xl font-serif text-teal-700 mb-6">
          Introducing<br />Check<br />Yourself AI
        </h1>
        <p class="text-lg text-teal-600 mb-8">
          Get an originality report now! Try now below:
        </p>
        <button 
          class="bg-cream-50 hover:bg-cream-100 text-teal-700 px-8 py-3 rounded-lg text-lg transition-colors duration-200"
        >
          Try now!
        </button>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section class="container mx-auto px-4 py-16 md:py-24">
    <h2 class="text-3xl md:text-4xl font-serif text-teal-700 text-center mb-16">
      What we offer
    </h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
      {#each [
        { icon: '💬', title: 'Add a product', description: 'Connect and collaborate' },
        { icon: '⚛️', title: 'Or feature', description: 'Powered by advanced AI' },
        { icon: '🌱', title: 'Or service', description: 'Sustainable solutions' }
      ] as item}
        <div 
          class="flex flex-col items-center text-center"
          transition:fade
        >
          <div class="w-16 h-16 mb-6">
            <div class="text-teal-700 text-4xl">{item.icon}</div>
          </div>
          <h3 class="text-xl font-serif text-teal-700 mb-4">{item.title}</h3>
          <p class="text-teal-600">{item.description}</p>
        </div>
      {/each}
    </div>
  </section>

  <!-- Customization Section -->
  <section class="container mx-auto px-4 py-16 md:py-24">
    <h2 class="text-3xl md:text-4xl font-serif text-teal-700 text-center mb-16">
      Customized to your needs
    </h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      {#each [
        {
          image: '/consultation.jpg',
          title: 'Add a product',
          description: 'Give a detailed description of the offer.'
        },
        {
          image: '/food.jpg',
          title: 'Or feature',
          description: 'Give a detailed description of the offer.'
        },
        {
          image: '/skincare.jpg',
          title: 'Or service',
          description: 'Give a detailed description of the offer.'
        }
      ] as item}
        <div class="flex flex-col" transition:fade>
          <div class="aspect-square rounded-3xl overflow-hidden mb-6">
            <img 
              src={item.image} 
              alt={item.title}
              class="w-full h-full object-cover"
            />
          </div>
          <h3 class="text-xl font-serif text-teal-700 mb-4">{item.title}</h3>
          <p class="text-teal-600">{item.description}</p>
        </div>
      {/each}
    </div>
  </section>

  <!-- Mission Statement Section -->
  <section class="relative py-32">
    <div class="absolute inset-0 bg-cover bg-center" style="background-image: url('/clouds-bg.jpg');"></div>
    <div class="relative container mx-auto px-4 text-left">
      <div class="max-w-3xl">
        <h2 class="text-4xl md:text-5xl lg:text-6xl font-serif text-white mb-6">
          You deserve the complete package.
        </h2>
        <p class="text-2xl md:text-3xl lg:text-4xl font-serif text-white leading-relaxed">
          Our mission is to bring plans A to Z so you can live the way you've always imagined: lightly and confidently.
        </p>
      </div>
    </div>
  </section>

  <!-- Signature Services Section -->
  <section class="container mx-auto px-4 py-16 md:py-24">
    <h2 class="text-3xl md:text-4xl font-serif text-teal-700 text-center mb-16">
      Signature Services
    </h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
      {#each [
        { image: '/service1.jpg', benefit: 'Add a benefit', title: 'Add a service', price: '50$' },
        { image: '/service2.jpg', benefit: 'Add a benefit', title: 'Add a service', price: '40$' },
        { image: '/service3.jpg', benefit: 'Add a benefit', title: 'Add a service', price: '50$' }
      ] as service}
        <div class="flex flex-col items-center text-center" transition:fade>
          <div class="w-64 h-64 rounded-full overflow-hidden mb-6">
            <img 
              src={service.image} 
              alt={service.title}
              class="w-full h-full object-cover"
            />
          </div>
          <p class="text-teal-600 mb-2">{service.benefit}</p>
          <h3 class="text-xl font-serif text-teal-700 mb-2">{service.title}</h3>
          <p class="text-teal-600">{service.price}</p>
        </div>
      {/each}
    </div>
  </section>

  <!-- Made for You Section -->
  <section class="container mx-auto px-4 py-16 md:py-24 bg-cream-50">
    <h2 class="text-3xl md:text-4xl font-serif text-teal-700 text-center mb-16">
      Made for You
    </h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
      {#each [
        { image: '/product1.jpg', benefit: 'Add a benefit', title: 'Add a product', price: '20$' },
        { image: '/product2.jpg', benefit: 'Add a benefit', title: 'Add a product', price: '20$' },
        { image: '/product3.jpg', benefit: 'Add a benefit', title: 'Add a product', price: '15$' }
      ] as product}
        <div class="flex flex-col items-center text-center" transition:fade>
          <div class="w-64 h-64 rounded-full overflow-hidden mb-6">
            <img 
              src={product.image} 
              alt={product.title}
              class="w-full h-full object-cover"
            />
          </div>
          <p class="text-teal-600 mb-2">{product.benefit}</p>
          <h3 class="text-xl font-serif text-teal-700 mb-2">{product.title}</h3>
          <p class="text-teal-600">{product.price}</p>
        </div>
      {/each}
    </div>
  </section>

  <!-- Testimonials Section -->
  <section class="py-16 md:py-24 bg-gradient-to-br from-lime-100 via-teal-50 to-cyan-100">
    <div class="container mx-auto px-4">
      <h2 class="text-4xl md:text-5xl font-serif text-teal-700 mb-12">
        Only the best service and products for our customers
      </h2>
      
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
        <div class="space-y-12">
          {#each [
            { 
              name: 'Isabelle Casarez',
              title: 'Satisfied customer',
              text: 'Boost your product and service\'s credibility by adding testimonials from your clients.'
            },
            { 
              name: 'Saira Kohli',
              title: 'Entrepreneur',
              text: 'Boost your product and service\'s credibility by adding testimonials from your clients. People love recommendations so feedback from others who\'ve tried it is invaluable.'
            },
            { 
              name: 'Matt Zhangyee',
              title: 'Patient',
              text: 'People love recommendations so feedback from others who\'ve tried it is invaluable.'
            }
          ] as testimonial}
            <div class="space-y-2" transition:fade>
              <p class="text-teal-700 text-lg">{testimonial.text}</p>
              <div class="text-teal-600">
                <span class="font-medium">{testimonial.name}</span>
                <span class="mx-2">·</span>
                <span>{testimonial.title}</span>
              </div>
            </div>
          {/each}
        </div>
        <div class="rounded-3xl overflow-hidden">
          <img 
            src="/testimonial-image.jpg" 
            alt="Happy customer"
            class="w-full h-full object-cover"
          />
        </div>
      </div>
    </div>
  </section>

  <!-- FAQ Section -->
  <section class="py-16 md:py-24 bg-gradient-to-br from-purple-200 via-pink-100 to-purple-100">
    <div class="container mx-auto px-4">
      <h2 class="text-4xl md:text-5xl font-serif text-white mb-16">FAQs</h2>
      
      <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
        {#each [
          {
            question: 'Add a frequently asked question',
            answer: 'Having an FAQ section is a great way to present information about your product or service. Using the question-and-answer format makes it more relatable to your users.'
          },
          {
            question: 'This can be about the products',
            answer: 'Having an FAQ section is a great way to present information about your product or service. Using the question-and-answer format makes it more relatable to your users.'
          },
          {
            question: 'Or about payment options',
            answer: 'Having an FAQ section is a great way to present information about your product or service. Using the question-and-answer format makes it more relatable to your users.'
          }
        ] as faq}
          <div class="space-y-4" transition:fade>
            <h3 class="text-xl font-serif text-white">{faq.question}</h3>
            <p class="text-white/90">{faq.answer}</p>
          </div>
        {/each}
      </div>
    </div>
  </section>

  <!-- Footer/Contact Section -->
  <footer class="py-16 md:py-24 bg-gradient-to-br from-cream-50 via-pink-50 to-cream-100">
    <div class="container mx-auto px-4">
      <div class="flex justify-center mb-8">
        <img src="/logo.svg" alt="Sprig & Sky" class="h-8" />
      </div>
      
      <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
        <!-- Contact Info -->
        <div class="space-y-4">
          <h2 class="text-2xl font-serif text-teal-700">Drop by or reach out</h2>
          <address class="not-italic text-teal-600">
            123 Anywhere St. Any City, ST 12345
          </address>
          <div class="space-y-2 text-teal-600">
            <p>Call: <a href="tel:+123-456-7980" class="hover:text-teal-800">+123-456-7980</a></p>
            <p>Email: <a href="mailto:hello@reallygreatsite.com" class="hover:text-teal-800">hello@reallygreatsite.com</a></p>
          </div>
        </div>

        <!-- Business Hours -->
        <div class="space-y-4">
          <h2 class="text-2xl font-serif text-teal-700">Business Hours</h2>
          <div class="space-y-2 text-teal-600">
            <p>Monday to Saturday</p>
            <p>8:00 am to 8:00 pm</p>
            <p>Sundays</p>
            <p>12:00 noon to 8:00 pm</p>
          </div>
        </div>

        <!-- Social Links -->
        <div class="space-y-4">
          <h2 class="text-2xl font-serif text-teal-700">Follow</h2>
          <div class="flex space-x-4">
            <a href="#" class="text-teal-600 hover:text-teal-800">
              <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                <path d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"/>
              </svg>
            </a>
            <a href="#" class="text-teal-600 hover:text-teal-800">
              <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
              </svg>
            </a>
          </div>
        </div>
      </div>
    </div>
  </footer>
</div>
