document.addEventListener("DOMContentLoaded", function () {
    const dropdowns = document.querySelectorAll('.dropdown');
    const accordionButtons = document.querySelectorAll('.accordion-btn');

    dropdowns.forEach(dropdown => {
        dropdown.addEventListener('mouseenter', function () {
            const dropdownContent = this.querySelector('.dropdown-content');
            dropdownContent.style.display = 'block';
            dropdownContent.style.opacity = '0'; // Start with opacity 0
            dropdownContent.style.animation = 'fadeIn 0.3s forwards'; // Use CSS fade-in animation
        });
        dropdown.addEventListener('mouseleave', function () {
            const dropdownContent = this.querySelector('.dropdown-content');
            dropdownContent.style.opacity = '1'; // Ensure opacity is set to 1 before fading out
            dropdownContent.style.animation = 'fadeOut 0.3s forwards'; // Use CSS fade-out animation
            dropdownContent.addEventListener('animationend', () => {
                dropdownContent.style.display = 'none'; // Hide after fade out completes
            }, { once: true });
        });
    });

    accordionButtons.forEach(button => {
        button.addEventListener('click', function () {
            this.classList.toggle('active');
            const content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.animation = 'fadeOut 0.3s forwards'; // Use CSS fade-out animation
                content.addEventListener('animationend', () => {
                    content.style.display = "none"; // Hide after fade out completes
                }, { once: true });
            } else {
                content.style.display = "block";
                content.style.opacity = '0'; // Start with opacity 0
                content.style.animation = 'fadeIn 0.3s forwards'; // Use CSS fade-in animation
            }
        });
    });

    const scrollAnimation = () => {
        const elements = document.querySelectorAll('.fade-in');
        const windowHeight = window.innerHeight;

        elements.forEach(element => {
            const elementTop = element.getBoundingClientRect().top;
            const elementVisible = 150;

            if (elementTop < windowHeight - elementVisible) {
                element.classList.add('active');
            } else {
                element.classList.remove('active');
            }
        });
    };

    window.addEventListener('scroll', scrollAnimation);
    scrollAnimation();
});

const searchInput = document.getElementById('searchInput');

    searchInput.addEventListener('keyup', function (event) {
        const input = searchInput.value.toLowerCase();
        const contentSections = document.querySelectorAll('.info-box, .common-questions a');

        contentSections.forEach(section => {
            if (section.textContent.toLowerCase().includes(input) && input !== "") {
                section.style.display = 'block'; // Show the section
            } else {
                section.style.display = 'none'; // Hide the section
            }
        });

        // Trigger the search when pressing Enter
        if (event.key === "Enter") {
            const hasResults = [...contentSections].some(section => section.style.display === 'block');

            if (!hasResults) {
                alert("No results found for: " + input); // Alert if no results found
            }
        }
    });

    // Question button toggle
    document.querySelectorAll('.question-button').forEach(button => {
        button.addEventListener('click', () => {
            const questionItem = button.parentElement;
            questionItem.classList.toggle('active');
        });
    });

