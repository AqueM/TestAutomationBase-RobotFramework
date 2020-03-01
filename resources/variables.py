from random import randint, choice

from page_objects.test_data_files import valid_registration_mandatory_fields
from page_objects.test_data_files import valid_users

# test data

random_email = "Test" + str(randint(1, 101)) + "@netguru.com"
random_state = str(randint(1, 51))


def get_data_from_csv(file):
    # grabs a random row from file and returns its contents as list
    with open(file) as f:
        data_list = f.read().splitlines()
        data_list.pop(0)
        my_pick = choice(data_list)
        data = my_pick.split(',')
    return data


def get_valid_user():
    return get_data_from_csv(valid_users)


def get_valid_registration_data():
    return get_data_from_csv(valid_registration_mandatory_fields)
