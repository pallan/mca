FactoryGirl.define do
  factory :club do
    name        "My Curling Club"
    street1     "123 Fake Street"
    street2     "Bldg #2"
    street3     "West"
    city        'Winnpeg'
    province    'MB'
    postal_code 'T0E 0Y0'
    country
    phone       '1234556789'
    fax         '9876543210'
    email       'contact@example.com'
    website     'http://www.mycurlingclub.org'
    region
    sheets      6
  end
end