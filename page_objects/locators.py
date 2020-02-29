# Login page locators
input_emailRegister = "name:email_create"
input_emailLogin = "name:email"
input_passwordLogin = "name:passwd"

btn_signIn = "name:SubmitLogin"
btn_createAccount = "id:SubmitCreate"

txt_invalidEmailRegister = "id:create_account_error"
txt_invalidLogin = "xpath://div[contains(@class,'alert-danger') and not(contains(@id,'create'))]"

txt_forgottenPassword = "xpath://p[contains(@class,'lost_password')]"

# Registration form locators
frame_registrationForm = "account-creation_form"
input_customerFirstName = "customer_firstname"
input_customerLastName = "customer_lastname"
input_registerPassword = "passwd"

input_firstName = "firstname"
input_lastName = "lastname"
input_address = "address1"
input_city = "city"
selector_state = "id_state"
input_postcode = "postcode"
input_phone = "phone"

btn_register = "submitAccount"

registerInputs = [input_customerFirstName, input_customerLastName, input_registerPassword, input_address, input_city,
                  input_postcode, input_phone]

txt_invalidData = "xpath://div[contains(@class,'alert-danger')]"

# My Account Page locators
frame_accountInfo = "class:info-account"
