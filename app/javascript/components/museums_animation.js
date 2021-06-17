const museumsAnimation = () => {

  document.addEventListener('mousemove',(e) => {
    console.log(e);
      const el = document.querySelector('.el');
      el.style.clipPath = `circle(150px at ${e.clientX}px ${e.clientY}px)`;
    });

};

export { museumsAnimation }
