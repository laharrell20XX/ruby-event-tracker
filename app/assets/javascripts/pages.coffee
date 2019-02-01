# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
registered_session_clicks = 0
registered_keys_pressed = 0

increasePageClickCount = do ->
    $(document).click (event) =>
        lClickCount = Number ($("#left_click_count").text())
        document.getElementById("left_click_count").innerText = lClickCount + 1
        $.ajax({url: "/page-clicked"}).done () =>
            registered_session_clicks += 1

increasePageSpacebarCount = do ->
    ###
    Might replace with a series of switch statements for future key events
    ###
    $(document).on "keyup", (event) =>
        if event.which == 32
            spacebarPressed = Number ($("#spacebar_pressed_count").text())
            document.getElementById("spacebar_pressed_count").innerText = spacebarPressed + 1
            $.ajax({url: "/space-pressed"}).done () =>
                registered_keys_pressed += 1
