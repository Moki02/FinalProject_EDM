// Show only the selected section
function showSection(sectionId) {
  // Remove # if present (for href links)
  const cleanId = sectionId.startsWith('#') ? sectionId.substring(1) : sectionId;
  
  // Hide all sections
  document.querySelectorAll('section').forEach(section => {
    section.style.display = 'none';
  });
 
  // Show the selected section
  const section = document.getElementById(cleanId);
  if (section) {
    section.style.display = 'block';
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
}

// Show first dashboard by default on page load
window.onload = function() {
  showSection('medicine-dashboard');
};

// Add click handlers for dropdown links
document.querySelectorAll('.dropdown-content a').forEach(link => {
  link.addEventListener('click', function(e) {
    e.preventDefault(); // Prevent default anchor behavior
    showSection(this.getAttribute('href'));
  });
});