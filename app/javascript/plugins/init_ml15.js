export default function() {
  console.log("beginning function");
  const ml15 = document.querySelector('.ml15');
  console.log(ml15);
  if (!ml15) return;
  anime.timeline({loop: false})
  .add({
    targets: '.ml15 .word',
    scale: [14,1],
    opacity: [0,1],
    easing: "easeOutCirc",
    duration: 800,
    delay: (el, i) => 800 * i
  })
  .add({
    targets: '.ml15',
    opacity: 100,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  }
  );
}
