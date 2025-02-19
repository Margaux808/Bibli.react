const quotes = [
  { text: "Le succès, c'est d'aller d'échec en échec sans perdre son enthousiasme.", author: "Winston Churchill" },
  { text: "La vie, c'est comme une bicyclette, il faut avancer pour ne pas perdre l'équilibre.", author: "Albert Einstein" },
  { text: "Il n'y a qu'une seule façon d'échouer, c'est d'abandonner avant d'avoir réussi.", author: "Georges Clemenceau" },
];

document.getElementById("new-quote").addEventListener("click", function() {
  const randomIndex = Math.floor(Math.random() * quotes.length);
  document.getElementById("text").textContent = `"${quotes[randomIndex].text}"`;
  document.getElementById("author").textContent = `- ${quotes[randomIndex].author}`;
});
