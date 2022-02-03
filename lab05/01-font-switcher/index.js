let currentFont = 1.4;

const makeBigger = (event) => {
   // make font bigger
   currentFont += .2;
   // set font
   setFont();
};

const makeSmaller = (event) => {
   // maek font smaller
   currentFont -= .2;
   // set font
   setFont();
};

const setFont = () => {
   document.querySelector('.content').style.fontSize = `${currentFont}em`;
   document.querySelector('h1').style.fontSize = `${currentFont + .5}em`;
}


document.querySelector('#a1').addEventListener('click', makeBigger);
document.querySelector('#a2').addEventListener('click', makeSmaller);

