window.onload = () => {
    let loader = document.getElementById("loader");
    setTimeout(() => {
        loader.style.display = "none";
        document.body.style.overflowY = "auto";
    }, 500);
};

const addActive = (e) => {
    const teamContainer = e.parentNode.parentNode;
    const icons = teamContainer.querySelector(".icons");
    e.classList.toggle("active");
    icons.classList.toggle("active");
};
