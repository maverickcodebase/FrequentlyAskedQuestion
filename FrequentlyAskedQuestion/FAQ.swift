//
//  FAQ.swift
//  Expense Ninja
//
//  Created by Sheraz Ahmed on 10/07/2024.
//

import Foundation

struct FAQSection: Identifiable {
    let id = UUID()
    let title: String
    var faqs: [FAQ]
    
    static func == (lhs: FAQSection, rhs: FAQSection) -> Bool {
            lhs.id == rhs.id
        }
    
}

struct FAQ: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    var isExpanded = false
}

struct FAQData {
    static let sections: [FAQSection] = [
        FAQSection(title: "General", faqs: [
            FAQ(question: "What is Expense Ninja?", answer: "Expense Ninja is a comprehensive expense management app designed to help you track your income, expenses, savings goals, and recurring payments effortlessly."),
            FAQ(question: "How can Expense Ninja help me manage my finances?", answer: "Expense Ninja allows you to categorize your income and expenses, set savings goals, track recurring payments, and receive notifications to stay on top of your financial activities."),
            FAQ(question: "Is Expense Ninja free to use?", answer: "Expense Ninja offers a free basic plan with limited features. For more advanced features and unlimited access, we offer subscription plans tailored to your financial management needs."),
            FAQ(question: "How do I register an account on Expense Ninja?", answer: "You can easily register by downloading the app from the App Store or Google Play Store, and following the simple account creation process within the app.")
        ]),
        FAQSection(title: "Account Management", faqs: [
            FAQ(question: "How do I register an account on Expense Ninja?", answer: "You can easily register by downloading the app from the App Store or Google Play Store, and following the simple account creation process within the app."),
            FAQ(question: "Can I sign in with Apple or Google on Expense Ninja?", answer: "Yes, Expense Ninja supports sign-in with Apple and Google accounts for seamless access."),
            FAQ(question: "What should I do if I forgot my password?", answer: "If you forget your password, you can reset it by tapping on the 'Forgot Password' option on the login screen and following the instructions sent to your registered email."),
            FAQ(question: "How can I update my account information on Expense Ninja?", answer: "You can update your account information, including email and password, by navigating to the 'Account Settings' section within the app."),
            FAQ(question: "Can I link multiple social accounts to my Expense Ninja account?", answer: "Expense Ninja allows you to link multiple social accounts for easier access and integration."),
            FAQ(question: "How do I delete my account on Expense Ninja?", answer: "To delete your account on Expense Ninja, please follow these steps:\n\n1. Open the Expense Ninja app and navigate to the Account Settings section.\n2. Scroll down to find the option for deleting your account.\n3. Follow the on-screen instructions to confirm and complete the account deletion process.\n\nDeleting your account will permanently remove all your data and cannot be undone. If you have any concerns or need assistance, please contact our support team for help.")
        ]),

        FAQSection(title: "Subscription", faqs: [
            FAQ(question: "Is Expense Ninja free to use?", answer: "Expense Ninja offers a free basic plan with limited features. For full access to advanced features such as unlimited income and expense tracking, savings goals, and enhanced notifications, we offer subscription plans."),
            FAQ(question: "What are the benefits of subscribing to Expense Ninja?", answer: "Subscribing to Expense Ninja unlocks unlimited access to all features, including advanced income and expense tracking, customizable savings goals, priority support, and an ad-free experience."),
            FAQ(question: "How do I subscribe to Expense Ninja?", answer: "You can subscribe to Expense Ninja directly within the app. Navigate to 'Subscription Plans' in the settings menu, choose a plan that suits your needs, and follow the prompts to complete your subscription."),
            FAQ(question: "Can I cancel my subscription at any time?", answer: "Yes, you can manage your subscription through the 'Account Settings' section of the app. You have the flexibility to upgrade, downgrade, or cancel your subscription at any time without any hassle.")
        ]),
        FAQSection(title: "Notifications", faqs: [
            FAQ(question: "What notifications does Expense Ninja send?", answer: "Expense Ninja sends notifications for upcoming expenses, goal milestones, and important updates about your account and financial activities."),
            FAQ(question: "Can I customize which notifications I receive?", answer: "Yes, you can customize your notification preferences in the app settings. Choose to receive notifications for specific events like expense reminders, goal achievements, or account updates."),
            FAQ(question: "How do I turn off notifications in Expense Ninja?", answer: "To manage notifications, go to the app settings, select 'Notification Preferences,' and adjust settings according to your preference. You can turn off notifications completely or customize them to suit your needs.")
        ]),
        FAQSection(title: "Income Tracking", faqs: [
            FAQ(question: "How do I add a source of income in Expense Ninja?", answer: "To add a source of income, navigate to the 'Add Income' section, enter the details such as income type, amount, and frequency, then save the entry to start tracking your cash flow."),
            FAQ(question: "Can I track multiple sources of income simultaneously?", answer: "Yes, Expense Ninja allows you to add and manage multiple sources of income, making it easy to track your total income and understand your financial health.")
        ]),
        FAQSection(title: "Expense Management", faqs: [
            FAQ(question: "How do I add an expense in Expense Ninja?", answer: "Adding an expense is straightforward. Simply go to the 'Add Expense' section, enter the expense details including category, amount, date, and any additional notes, then save to record your expense."),
            FAQ(question: "Can I set reminders for recurring expenses?", answer: "Yes, Expense Ninja supports setting reminders for recurring expenses, ensuring you never miss payments and can manage your budget effectively.")
        ]),
        FAQSection(title: "Goals and Savings", faqs: [
            FAQ(question: "How do I set savings goals in Expense Ninja?", answer: "To set a savings goal, go to the 'Goals' section, enter the goal amount, target date, and optional notes. Expense Ninja will track your progress and notify you as you approach your goal."),
            FAQ(question: "Can I customize my savings goals based on different categories?", answer: "Yes, Expense Ninja allows you to create savings goals for specific categories such as vacations, education, or emergency funds, helping you allocate savings effectively.")
        ])
    ]
}

