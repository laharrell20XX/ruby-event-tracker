# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
registered_session_clicks = 0
registered_keys_pressed = 0


if document.getElementById("color_changing_box") != null
    ses_start_box_color = $("#color_changing_box").attr('style').backgroundColor


increasePageClickCount = do ->
    $(document).on "turbolinks:load", (event) =>
        $(".button_clicked_stat_wrapper button").on "click", (event) =>
            $.ajax({url: "/button-clicked"}).done () =>
                lClickCount = Number ($("#button_clicked_count").text())
                document.getElementById("button_clicked_count").innerText = lClickCount + 1
                registered_session_clicks += 1

increasePageSpacebarCount = do ->
    ###
    Might replace with a series of switch statements for future key events
    ###
    $(document).on "keyup", (event) =>
        if event.which == 32
            event.preventDefault()
            $.ajax({url: "/space-pressed"}).done () =>
                spacebarPressed = Number ($("#spacebar_pressed_count").text())
                document.getElementById("spacebar_pressed_count").innerText = spacebarPressed + 1
                registered_keys_pressed += 1


setBoxColor = (button) -> 
    $(button).click (event) =>
        box = document.getElementById("display_example_color")
        colorToChange = document.querySelector(".color_changer_wrapper input[name=color]")
        if box and colorToChange
            box.style.backgroundColor = event.target.style.backgroundColor
            colorToChange.value = event.target.style.backgroundColor

        
$(document).on "turbolinks:load", (event) =>
    setBoxColor button for button in $(".color_changer")

###
changeBoxColor = do ->
    $(".box_color_stat_wrapper button").on "click", (event) =>
        colorToChange = document.getElementById("color_changing_box").style.backgroundColor
        if ses_start_box_color != colorToChange
            $.ajax({url: "/box-color-changed"}).done
###