# Login page locators
input_email_register = "name:email_create"
input_email_login = "name:email"
input_password_login = "name:passwd"

btn_sign_in = "name:SubmitLogin"
btn_create_account = "id:SubmitCreate"

txt_invalid_email_register = "id:create_account_error"
txt_invalid_login = "xpath://div[contains(@class,'alert-danger') and not(contains(@id,'create'))]"

txt_forgotten_password = "xpath://p[contains(@class,'lost_password')]"

# Registration form locators
frame_registration_form = "account-creation_form"
input_customer_firstname = "customer_firstname"
input_customer_lastname = "customer_lastname"
input_register_password = "passwd"

input_firstname = "firstname"
input_lastname = "lastname"
input_address = "address1"
input_city = "city"
selector_state = "id_state"
input_postcode = "postcode"
input_phone = "phone"

btn_register = "submitAccount"

register_inputs = [input_customer_firstname, input_customer_lastname, input_register_password, input_address,
                   input_city, input_postcode, input_phone]

txt_invalid_data = "xpath://div[contains(@class,'alert-danger')]"

# My Account Page locators
txt_account_info = "class:header_user_info"
