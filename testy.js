const colors = [
    '#FFFFFF', 
    '#F06B4F', 
    '#F2AE52', 
    
    '#A33120'
];

function randomColor(colors) {
   console.log(colors[Math.ceil(Math.random() * colors.length)]);
}

randomColor(colors);