# before running this suite.

*** Settings ***
Resource          ../Resourcefile/common1.robot
Suite Setup       Setup Browser
Suite Teardown    End suite


*** Test Cases ***
Open wordpress website
    [Tags]        commitment
    Appstate      Home
    ${headertext}=    GetText    //h1[@class='wp-block-heading has-text-align-center has-x-large-font-size']
    Log               ${headertext}