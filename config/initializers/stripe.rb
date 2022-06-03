Rails.configuration.stripe = {
:publishable_key => "pk_test_51L6W9YSJCJOOqfNijN5qlM0ja6BjnjZiwW60WDWYV09CjQVelGLS7Sbwyk79aiqWnmdBoP9WHnqhcOebz6r26B7900fV7Jb5rG",
:secret_key => "sk_test_51L6W9YSJCJOOqfNiVI1Kk8LVhkr4SaU1AF1kcPjPHRyEquv4K1RMMeaHGufL9LAaS405KhqJ1QEPZ8BEMOe1u7b5002cmTmapi"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]