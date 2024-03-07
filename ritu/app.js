let items=document.querySelectorAll('.slider .list .item'); 
let next=document.getElementById('next');
let prev=document.getElementById('prev');
let thumbnails=document.querySelectorAll('.thumbnail .item');

let countItem = items.length;
let itemActive = 0;

next.onclick = function(){
    itemActive = itemActive + 1;
    if(itemActive >= countItem) {
        itemActive = 0;
    }
    showSlider();
}

function showSlider(){
// remove item active old
    let itemActiveold = document.querySelector('.slider .list .item.active');
    let thumbnailActiveold = document.querySelector('.thumnail .item.active');
    itemActiveold.classList.remove('active');
    thumbnailActiveold.classList.remove('active');

    items[itemActive].classList.add('active'); 
    thumbnails[itemActive].classList.add('active');
}