# Quiz: Full Ruby on Rails Developer

Hello my developer friend, this is a basic test to evaluate your Ruby on Rails knowledge. In the repository, we have the file `default.min.css` which already contains Bootstrap 5 with the pre-configured theme. There is also the SVG file of the white logo to be used in the top navbar. I didn't attach any JavaScript files because the use of libraries is at the candidate's discretion (you can use CDN if you use JS libs).

NOTE: since the CSS file already has the Sinaxys theme embedded, which requires some familiarity, it's ok if you do some hard-coded CSS using the style parameter... :)

Good luck!

## Project: Application to Sinaxys jobs

In this project we will make a mini-app for job openings. The user will be able to register on the platform with basic data and, if logged in, apply for a vacancy.

- **Navbar:** Use the `bg-primary-dark` class to paint the navbar background dark purple... :)
- Home screen:\*\* use the `GET https://prod.api.sinaxys.com/v2/jobs` endpoint to get the job listing. Hint: we use the [RestClient](https://github.com/rest-client/rest-client) gem to work with APIs. In the real world it is logical to use Active Record accessing PostgreSQL, but here we will use REST APIs so we don't have to deal with schemas and seed files.
  - The `id` parameter is the primary key of this record.
  - Each wave is on an individual `.card`.
  - The page title is simply a `<h1>` tag.
  - In the screenshot, the data is an example, and the applicant should use the data returned by the API.

![Screenshot 2022-11-22 at 18-30-51 Sinaxys](https://user-images.githubusercontent.com/3427344/203425975-445835c3-437f-4c11-afe2-0f47312fc252.png)

- Job Details:\*\* When clicking on the job, the details screen uses the `GET https://prod.api.sinaxys.com/v2/jobs/[id]` endpoint - of course, the [id] is the ID of the clicked job.
  - This screen will have an "Apply Me" button (which uses Bootstrap's `btn` and `btn-primary` classes) that will only work if the user is logged in (when logged out, the button can be disabled or display a message, it's up to you!)
  - The page title, with the name of the medical specialty, is simply a `<h1>` tag.
  - With the user logged in, if the user clicks "Apply", a record is made in a simple table associating the job ID with the user ID.
  - If the user has already applied, return an error: _"Your application for this vacancy has already been submitted"_.

![Screenshot 2022-11-22 at 18-38-37 Sinaxys](https://user-images.githubusercontent.com/3427344/203426764-8109149e-f2aa-4750-80e0-c18e541a3f38.png)

- Registration:\*\* The user must register on the platform providing Name, Email, Password, Password Confirmation (required fields), and an optional textarea for Professional Experience.
  - In this step you can use Rails' native `has_secure_password` or a library.
  - Don't forget the necessary validations.
  - The GUI of the basic form is up to you (hint: use standard Bootstrap classes like `.form-control`).
- **Login:** There should be a screen for the user to login with his e-mail and password.
  - The UI is also up to the applicant, also using standard Bootstrap classes.

## Delivery

Upload the project to a public repository on your private GitHub by the agreed date.
