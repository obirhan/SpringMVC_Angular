# SpringMVC_Angular
Spring MVC Spring Security Angular Integration


## Update1
Spring security enables csrf in default. Therefore POST requests can be pain points if you are not aware of the csrf (405 error). Form.js has a sample CSRF TOKEN embedded http post request working with spring security. Keep in mind that csrf token is already set in jsp file where it is retrieved.
