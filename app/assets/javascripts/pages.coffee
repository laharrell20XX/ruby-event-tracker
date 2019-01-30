# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
registered_session_clicks = 0

increaseCount = do ->
    $(document).click (event) =>
        lClickCount = Number ($("#left_click_count").text())
        document.getElementById("left_click_count").innerText = lClickCount + 1
        $.ajax({url: "/page-clicked"}).done () =>
            registered_session_clicks += 1
