## Description

## Development Environment
- make sure you have the right version install in your system.
- Ruby 2.7.1
- Rails 6.0.3.2
- If no, then download the correct version from here. [Link](https://gorails.com/setup/macos/13-ventura)

## How to run this project
```
git clone git@github.com:Indrajitnaiya09/news_subscriber.git
git clone git@github.com:Indrajitnaiya09/news_publisher.git
```
open new terminal and nevigate to news_publisher

```
cd news_subscriber
bundle
rails db:create
rails db:migrate
rails s -p 4000

cd news_publisher
bundle
rails db:create
rails db:migrate
rails s -p 3000

```

Using postman do POST http://localhost:3000/upcoming_gadgets
```
body:
{
    "product_type": "Mobile",
    "brand_name": "Apple2",
    "price": "70000.79",
    "description": "asfsadvasdvasdv",
    "expected_launching_date": "12/12/2023"
}
```
- will be able to validate that subscriber getting notified.

## Why I'm Interested in the next assignment / adding new features into it / adding test cases

I wanted to take a moment to express my enthusiasm for this assignment. Here are a few reasons why I'm excited:

- **Relevant Skills**: This project aligns well with my background and skills, which I believe will be valuable in delivering high-quality results.

- **Learning Opportunity**: I see this assignment as a chance to re-evaluate my basic ruby and rails skills. There are aspects of ruby that I'm eager to delve into and expand my knowledge.

- **Add Unit Test Cases**: I can see there is a scope to add test cases. I anticipate to fulfill the mentioned requirement. Please feel free to ask, so I can add if applicable.
