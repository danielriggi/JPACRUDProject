import nfl_data_py as nfl
import pandas as pd
from sqlalchemy import create_engine
from datetime import datetime

# Define a function to check if a date is valid
def is_valid_date(date_string):
    if date_string is None:
        return None
    try:
        # Attempt to parse the date string
        datetime.strptime(date_string, '%Y-%m-%d')
        return date_string  # Date is valid, return it as is
    except ValueError:
        # If parsing fails, return None
        return None

def main():
    # Import NFL player data
    player_df = nfl.import_players()

    # Select specific columns from the DataFrame
    player_df = player_df[['display_name', 'first_name', 'last_name', 'status', 'birth_date', 'position_group',
                        'position', 'college_name', 'height', 'weight', 'rookie_year', 'headshot', 'draft_number']]

    # Strip single quotes from string columns
    player_df['display_name'] = player_df['display_name'].str.strip("'")
    player_df['first_name'] = player_df['first_name'].str.strip("'")
    player_df['last_name'] = player_df['last_name'].str.strip("'")

    # Apply the is_valid_date function to the 'birth_date' column
    player_df['birth_date'] = player_df['birth_date'].apply(is_valid_date)

    # Replace these with your MySQL database credentials
    db_username = 'test'
    db_password = 'test'
    db_host = 'localhost'
    db_port = '3306'
    db_name = 'nfldb'

    # Create a connection to the MySQL database using SQLAlchemy
    engine = create_engine(f'mysql+mysqlconnector://{db_username}:{db_password}@{db_host}:{db_port}/{db_name}')

    # Write the DataFrame to the MySQL database
    table_name = 'players'  # Replace with the name of your table

    # Use the to_sql method to insert the DataFrame into the database
    player_df.to_sql(name=table_name, con=engine, if_exists='append', index=False)

    # Close the database connection
    engine.dispose()

    print(f'DataFrame loaded into {table_name} table in the {db_name} database.')

if __name__ == "__main__":
    main()
