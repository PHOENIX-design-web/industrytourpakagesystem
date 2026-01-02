Industry Tour Package System

ASP.NET Web Application

The Industry Tour Package System is a role-based web application developed using ASP.NET (C#) and SQL Server.
It enables industries to publish tour packages, customers to book and pay for tours, and administrators to manage users, packages, and transactions through a centralized system.

Project Objective

* Digitize industry tour package management

* Provide a secure booking and payment platform

* Implement role-based access for Admin, Industry, Customer

👥 User Roles
>> Admin

* Manage users, industries, and tour packages

* Monitor bookings and payment records

>> Industry

* Add and manage industry tour packages

* Upload package images

>> Customer

* Browse tour packages

* Book tours and make payments

🚀 Features

* Role-based authentication and authorization

* Industry tour package management

* Image upload functionality

* Booking and payment workflow

* Centralized database operations using C#

* Secure server-side validation

🛠 Tech Stack

Frontend

HTML5, CSS3, JavaScript

Backend

ASP.NET (C#)

Database

SQL Server

Tools

Visual Studio

NuGet Package Manager

📁 Project Structure

industrytourpakagesystem/
│
├── Admin/            # Admin functionalities
├── Customer/         # Customer modules
├── Guest/            # Guest pages
├── Industry/         # Industry management
├── payment/          # Payment handling
├── upload/           # Uploaded images & screenshots
│
├── DbOperation.cs    # Database operations
├── industrytourpakagesystem.csproj
├── bin/
├── obj/
└── Properties/

⚙️ Installation & Setup

Clone the repository

git clone https://github.com/PHOENIX-design-web/industrytourpakagesystem.git


Open the solution in Visual Studio

Configure the SQL Server connection string in Web.config

Restore NuGet packages

Run the application using Ctrl + F5

🗄️ Database

SQL Server relational database

Tables include:

Users & Roles

Industries

Tour Packages

Bookings

Payments

🖼️Screenshots

### Home Page
![Home Page](upload/home.png)

### Login / Register
![Login](upload/login.png)
![Login](upload/IndustryRegister.png)
![Login](upload/CustomerRegister.png)


### Tour Packages
![Packages](upload/packages.png)

### Booking Page
![Booking](upload/booking.png)

### Payment Page
![Payment](upload/payment.png)

### Admin Dashboard
![Admin](upload/admin-dashboard.png)

### Industry Dashboard
![Industry](upload/admin-dashboard.png)

### Customer Dashboard
![Customer](upload/admin-dashboard.png)



🔐 Security & Best Practices

* Role-based access control

* Server-side input validation

* Secure database operations

* Clean separation of concerns

📄 License

This project is developed for academic and learning purposes and can be extended for real-world use.
