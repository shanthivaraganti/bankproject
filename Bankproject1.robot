*** Settings ***
Library           Selenium2Library

*** Test Cases ***
New customer
    Comment    open browser    http://demo.guru99.com/V4/    ff
    Comment    input text    xpath=//*[@name='uid']    mngr73940
    Comment    input text    xpath=//*[@name='password']    rEqEqan
    Comment    click button    xpath=//*[@value='LOGIN']
    Comment    Comment    click element    xpath=//*[@href='addcustomerpage.php']
    Comment    Comment    input text    xpath=//*[@name='name']    shanthi
    Comment    Comment    click element    xpath=//*[@value='f']
    Comment    Comment    input text    xpath=//*[@name='dob']    12/04/2001
    Comment    Comment    input text    xpath=//*[@name='addr']    3974 freeman
    Comment    Comment    input text    xpath=//*[@name='city']    brampton
    Comment    Comment    input text    xpath=//*[@name='state']    ontario
    Comment    Comment    input text    xpath=//*[@maxlength='6']    123456
    Comment    Comment    input text    xpath=//*[@name='telephoneno']    7894561231
    Comment    Comment    input text    xpath=//*[@name='emailid']    b789456123@gmail.com
    Comment    Comment    input text    xpath=//*[@name='password']    123456
    Comment    Comment    click \ button    xpath=//*[@value='Submit']
    Comment    click element    xpath=//*[@href='EditCustomer.php']
    Comment    input text    xpath=//*[@name='cusid']    63909
    Comment    click button    xpath=//*[@value='Submit']
    Comment    element should be visible    xpath=//*[@value='shanthi']
    Comment    element should be visible    xpath=//*[@value='female']
    Comment    element should be visible    xpath=//*[@value='2001-12-04']
    Comment    input text    xpath=//*[@name='addr']    13 kalmia
    Comment    input text    xpath=//*[@name='city']    vaughan
    Comment    input text    xpath=//*[@name='state']    ottawa
    Comment    input text    xpath=//*[@name='pinno']    234567
    Comment    click button    xpath=//*[@value='Submit']
    Comment    click element    xpath=//*[@href='EditCustomer.php']
    Comment    input text    xpath=//*[@name='cusid']    63909
    Comment    click button    xpath=//*[@value='Submit']
    Comment    element text should be    xpath=//*[@name='addr']    13 kalmia
    Comment    element should be visible    xpath=//*[@value='vaughan']
    Comment    element should be visible    xpath=//*[@value='ottawa']
    Comment    element should be visible    xpath=//*[@value='234567']
    Comment    element should be visible    xpath=//*[@value='7894561231']
    Comment    element should be visible    xpath=//*[@value='b7894561231@gmail.com']
    Comment    element should be visible     xpath=//*[@value='Submit']

New account
    open browser    http://demo.guru99.com/V4/    gc
    set browser implicit wait    5 seconds
    input text    xpath=//*[@name='uid']    mngr73940
    input text    xpath=//*[@name='password']    rEqEqan
    click button    xpath=//*[@value='LOGIN']
    click element    xpath=//*[@href='addAccount.php']
    input text    xpath=//*[@name='cusid']    63909
    click element    xpath=//*[@name='selaccount']//*[@value='Current']
    input text    xpath=//*[@name='inideposit']    2500
    click button    xpath=//*[@value='submit']
    click element    xpath=//*[@href='editAccount.php']
    input text    xpath=//*[@name='accountno']    27141
    click button    xpath=//*[@value='Submit']
    element should be visible    xpath=//*[@value="63909"]
    element text should be    xpath=//*[@name='a_type']//*[@selected='selected']    Current
    element should be visible    xpath=//*[@value='2500']
    click button    xpath=//*[@value='Submit']
