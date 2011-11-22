# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

CreditCard =
  cleanNumber: (number) -> number.replace /[- ]/g, ""
  
  validNumber: (number) ->
    total = 0
    number = @cleanNumber(number)
    for i in [(number.length-1)..0]
      n = +number[i]
      if (i+number.length) % 2 == 0
        n = if n*2 > 9 then n*2 - 9 else n*2
      total += n
    total % 10 == 0

jQuery ->
  $("#order_credit_card_number").blur ->
    if CreditCard.validNumber(@value)
      $("#credit_card_number_error").text("")
    else
      $("#credit_card_number_error").text("Invalid credit card number.")


####### orders.js ########
# var CreditCard = {
#  cleanNumber: function(number) {
#    return number.replace(/[- ]/g, "");
#  },
  
#  validNumber: function(number) {
#    var total = 0;
#    number = this.cleanNumber(number);
#    for (var i=number.length-1; i >= 0; i--) {
#      var n = +number[i];
#      if ((i+number.length) % 2 == 0) {
#        n = n*2 > 9 ? n*2 - 9 : n*2;
#      }
#      total += n;
#    };
#    return total % 10 == 0;
#  }
# };
# $(function() {
#  $("#order_credit_card_number").blur(function() {
#    if (CreditCard.validNumber(this.value)) {
#      $("#credit_card_number_error").text("");
#    } else {
#      $("#credit_card_number_error").text("Invalid credit card number.");
#    }
#  });
# });