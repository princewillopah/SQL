import random
from faker import Faker
from datetime import datetime, timedelta

# Initialize Faker
fake = Faker()

# List of Nigerian states
nigerian_states = [
    'Lagos', 'Kano', 'Oyo', 'Kaduna', 'Rivers', 'Bauchi', 'Jigawa', 'Benue', 'Anambra', 'Borno',
    'Delta', 'Imo', 'Katsina', 'Edo', 'Plateau', 'Adamawa', 'Ogun', 'Sokoto', 'Ondo', 'Enugu',
    'Akwa Ibom', 'Abia', 'Ekiti', 'Kogi', 'Osun', 'Cross River', 'Kwara', 'Yobe', 'Niger', 'Gombe',
    'Zamfara', 'Taraba', 'Ebonyi', 'Bayelsa', 'Nasarawa', 'Kebbi', 'FCT'
]

def random_date(start_date, end_date):
    """Generate a random date between two dates."""
    delta = end_date - start_date
    random_days = random.randrange(delta.days)
    return start_date + timedelta(days=random_days)

def generate_customer_data(num_records):
    """Generate customer data."""
    records = []
    for customer_id in range(1, num_records + 1):
        first_name = fake.first_name()
        last_name = fake.last_name()
        email = fake.email()
        phone = fake.phone_number()
        address = fake.street_address()
        city = fake.city()
        state = random.choice(nigerian_states)
        zip_code = fake.postcode()
        created_at = random_date(datetime(2015, 1, 1), datetime(2023, 12, 31)).strftime('%Y-%m-%d')
        score = random.randint(0, 100)
        
        # Escape single quotes in strings
        first_name = first_name.replace("'", "''")
        last_name = last_name.replace("'", "''")
        email = email.replace("'", "''")
        address = address.replace("'", "''")
        city = city.replace("'", "''")
        
        record = f"({customer_id}, '{first_name}', '{last_name}', '{email}', '{phone}', '{address}', '{city}', '{state}', '{zip_code}', '{created_at}', {score})"
        records.append(record)
    return records

def main():
    num_records = 10000
    customer_records = generate_customer_data(num_records)
    
    with open('insert_customers.sql', 'w', encoding='utf-8') as file:
        file.write('INSERT INTO customer (customer_id, first_name, last_name, email, phone, address, city, state, zip_code, created_at, score) VALUES\n')
        file.write(',\n'.join(customer_records))
        file.write(';')
    
    print(f"{num_records} customer records have been generated and saved to 'insert_customers.sql'.")

if __name__ == '__main__':
    main()