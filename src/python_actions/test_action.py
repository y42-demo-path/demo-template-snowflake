import json
import pandas as pd

import requests

from y42.v1.decorators import data_action
import logging

# use the @data_action decorator to trigger actions in third party systems
# make sure you have a corresponding .yml exposure definition matching the function's name
# for more information check out our docs: https://www.y42.com/docs/python-actions

@data_action
def test_action(context, assets):
    # Reference secrets if needed
    all_secrets = context.secrets.all() # get all secrets saved within this space
    one_secret = context.secrets.get('HAI_TEST') # get the value of a specific secret saved within this space
    logging.info(one_secret)
    # get data from sources and models
    
    # source_df = assets.source('<source_name>', '<table_name>') # this is how you reference a source

    # do some actions - e.g. send data to a third party system
    url = 'https://jsonplaceholder.typicode.com/posts'
    headers = { 'Content-type': 'application/json; charset=UTF-8' }

    # send a post request for each row of the referenced table
    for i, j in df.iterrows():
        title = f"my {j['my_column']}. title"
        body = f"this is a random description based on the value of row {i}"

        my_obj = {title : body}

        response = requests.post(url, json=my_obj, headers=headers)
        logging.info(response.text) # using the logger to log responses
