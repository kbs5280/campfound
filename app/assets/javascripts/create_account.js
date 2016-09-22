$(document).ready(function() {

      $("#create_account_form").validate({

        rules: {
          "user[name]": {
            required: true,
            name: true
          }
        },

       });

 });
