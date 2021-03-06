const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('.navbar');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('navbar-blue');
        } else {
          navbar.classList.remove('navbar-blue');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };