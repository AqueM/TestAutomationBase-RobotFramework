from random import randint, choice

# test data
random_number = randint(1, 101)
random_email = "Test" + str(random_number) + "@netguru.com"


def get_valid_user():
    # grabs a random row from file and returns its contents as list
    with open('resources/test_data/validUsers.csv') as f:
        users = f.read().splitlines()
        users.pop(0)
        my_pick = choice(users)
        user = my_pick.split(',')
    return user


def get_valid_registration_data():
    # grabs a random row from file and returns its contents as list
    with open('resources/test_data/regData.csv') as f:
        users = f.read().splitlines()
        users.pop(0)
        my_pick = choice(users)
        user = my_pick.split(',')
    return user
