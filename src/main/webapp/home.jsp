<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
<div class="navbar">
    <div class="menu-wrapper">
        <div class="menu-icon" onclick="toggleMenu()">&#9776;</div>
        <div class="side-menu" id="sideMenu">
            <a href="profi" class="menu-item profile">Profile</a>
            <a href="user_profile_update.jsp" class="menu-item update">Update</a>
            <a href="#" class="menu-item delete" onclick="confirmDelete(event)">Delete</a>
            <a href="logo" class="menu-item logout">Log Out</a>
        </div>
    </div>
    <h2 class="navbar-heading">Home Page</h2>
    <div class="actions">
        <a href="contact.jsp" class="action-button">Contact Us</a>
        <a href="show_balances.jsp" class="action-button">Show Balance</a>
        <a href="transfer_amount.jsp" class="action-button">Transfer</a>
        <a href="bank_account_creation.jsp" class="action-button">Create Account</a>
    </div>
</div>

<div class="content">
    <div class="text-section">
        <h2>About Our Bank</h2>
        <p>Welcome to TRUST MOTIVE, where we are committed to providing secure, reliable, and innovative banking solutions to our customers. Our mission is to empower you with financial freedom through exceptional service and state-of-the-art technology.</p>
        
        <h2>Our Features</h2>
        <ul>
            <li>24/7 Balance Enquiry</li>
            <li>Quick and Secure Money Transfers</li>
            <li>Account Creation and Management</li>
            <li>Personalized Banking Assistance</li>
        </ul>
    </div>
    <div class="image-section">
        <h1 class="bank-name">TRUST MOTIVE</h1> <!-- Bank name displayed here -->
    </div>
</div>

<!-- Marquee section -->
<div class="marquee">
    <p>About Our Bank: Welcome to TRUST MOTIVE, providing secure, reliable, and innovative banking solutions. Our Features: 24/7 Balance Enquiry | Quick and Secure Money Transfers | Account Creation and Management | Personalized Banking Assistance</p>
</div>

<script src="home.js"></script>
<script>
function confirmDelete(event) {
    event.preventDefault();
    const userConfirmed = confirm("Are you sure you want to delete your account?");
    if (userConfirmed) {
        window.location.href = "dele";
    }
}
</script>
</body>
</html>
