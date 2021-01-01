SELECT home_library_code
FROM library_usage
WHERE year_patron_registered <= 2016 AND
      notice_preference_definition = 'email' AND
      provided_email_address = FALSE;