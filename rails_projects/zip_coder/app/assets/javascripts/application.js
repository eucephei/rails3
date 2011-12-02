// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

html, body {
  background-color: #4B7399;
  font-family: Verdana, Helvetica, Arial;
  font-size: 14px;
}

a img {
  border: none;
}

a {
  color: #0000FF;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

.clear {
  clear: both;
  height: 0;
  overflow: hidden;
}

#container {
  width: 75%;
  margin: 0 auto;
  background-color: #FFF;
  padding: 20px 40px;
  border: solid 1px black;
  margin-top: 20px;
}

#flash_notice, #flash_error, #flash_alert {
  padding: 5px 8px;
  margin: 10px 0;
}

#flash_notice {
  background-color: #CFC;
  border: solid 1px #6C6;
}

#flash_error, #flash_alert {
  background-color: #FCC;
  border: solid 1px #C66;
}

form label {
  display: block;
  margin-bottom: 2px;
}

form .field, form .actions {
  margin: 12px 0;
}

.fieldWithErrors {
  display: inline;
}

.error_messages {
  width: 400px;
  border: 2px solid #CF0000;
  padding: 0px;
  margin-bottom: 20px;
  background-color: #f0f0f0;
  font-size: 12px;
}

.error_messages h2 {
  text-align: left;
  font-weight: bold;
  padding: 5px 10px;
  font-size: 12px;
  margin: 0;
  background-color: #c00;
  color: #fff;
}

.error_messages p {
  margin: 8px 10px;
}

.error_messages ul {
  margin: 15px 0;
}
