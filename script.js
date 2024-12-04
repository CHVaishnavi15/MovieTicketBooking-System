document.addEventListener('DOMContentLoaded', () => {
    const slides = document.querySelectorAll('.slides');
    const totalSlides = slides.length;
    let currentSlideIndex = 0;

    // Show the first slide initially
    slides[currentSlideIndex].style.display = 'block';

    // Function to show the current slide
    function showSlide(index) {
        // Hide all slides
        slides.forEach((slide) => (slide.style.display = 'none'));

        // Display the current slide
        slides[index].style.display = 'block';
    }

    // Event listener for "Previous" button
    document.getElementById('prev').addEventListener('click', () => {
        currentSlideIndex = (currentSlideIndex - 1 + totalSlides) % totalSlides;
        showSlide(currentSlideIndex);
    });

    // Event listener for "Next" button
    document.getElementById('next').addEventListener('click', () => {
        currentSlideIndex = (currentSlideIndex + 1) % totalSlides;
        showSlide(currentSlideIndex);
    });
});

