import random
from random import randint

# test data
randomNumber = randint(1, 101)
randomEmail = "Test" + str(randomNumber) + "@netguru.com"


def get_valid_user():
    # grabs a random row from file and returns its contents as list;
    # rows contain username and password, comma-separated, can't include spaces
    with open('resources/test_data/validUsers.txt') as f:
        users = f.read().split()
        my_pick = random.choice(users)
        user = my_pick.split(',')
    return user


def get_valid_registration_data():
    # grabs a random row from file and returns its contents as list;
    # rows contain valid data for required fields in registration form, comma-separated, can't include spaces
    with open('resources/test_data/regData.txt') as f:
        users = f.read().split()
        my_pick = random.choice(users)
        user = my_pick.split(',')
    return user
