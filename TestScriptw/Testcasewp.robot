# before running this suite.

*** Settings ***
Resource          ../Resourcefile/common1.robot
Suite Setup       Setup Browser
Suite Teardown    End suite


*** Test Cases ***
Open wordpress website
    [Tags]        commitment
    Appstate      Home
    #${headertext}=    GetText    //h1[@class\='wp-block-heading has-text-align-center has-x-large-font-size']
   # ${headertext1}=   GetText    //h1[@class\='wp-block-heading has-text-align-center has-x-large-font-size1']
   #${headertext}=    IsElement    //h1[@class\='wp-block-heading has-text-align-center has-x-large-font-size']
  # ${headertext1}=   IsElement    //h1[@class\='wp-block-heading has-text-align-center has-x-large-font-size1']
     ${headertext}=      IsElement    //img[@title='HYR']
     ${headertext1}=     IsElement    //img[@title='HYR1']
    Log               ${headertext}
    Log               ${headertext1}