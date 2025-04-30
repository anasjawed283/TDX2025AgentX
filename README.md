# Salesforce TDX Hackathon 2025 – AgentForce: AI-Driven Personalized Financial Advisor

## 🚀 Problem Statement
In today's fast-paced world, many individuals struggle with managing personal finances due to lack of guidance, overwhelming financial choices, and limited access to professional advice. While financial literacy is on the rise, tools that offer **personalized, data-driven, and user-friendly** financial assistance are still lacking. Customers want solutions that not only help them understand their current financial health but also provide **actionable investment suggestions**, budgeting insights, and seamless human advisor integration.

**Problem:**
> "How can we empower individuals with an intelligent, automated, and engaging financial assistant that analyzes their finances, suggests tailored investment strategies, and connects them with human advisors through a unified Salesforce ecosystem?"

## 💡 Our Solution: AgentForce – AI-Driven Financial Assistant

AgentForce is a Salesforce-native Conversational AI solution that guides users through their financial journey with empathy, intelligence, and precision. Powered by AI and integrated with Google services and Slack, it not only collects financial data but delivers smart insights and connects customers with human advisors.

<img width="751" alt="Screenshot 2025-04-30 151413" src="https://github.com/user-attachments/assets/9fff84c7-d57b-4184-a67a-a9532e92cb4f" />

### ✨ Key Features:

- **AI-Powered Financial Insights**: Understand spending habits and generate intelligent savings and budget reports.
- **Google Sheets Integration**: Easily import/export financial data to/from Google Sheets.
- **Automated Budget Planning**: Get monthly AI-generated budget plans tailored to user data.
- **Investment Recommendations**: Smart suggestions like SIPs, stocks, mutual funds, and FDs based on risk appetite.
- **Google Calendar Integration**: Seamlessly schedule meetings with human financial advisors.
- **Conversational AI Chatbot**: User-friendly virtual assistant to collect data, analyze it, and provide helpful feedback in real-time.
- **Slack Notification System**: Notifies internal finance experts when new users register and shares user summaries with auto-assign capability for meeting scheduling.

## 🔍 Scope & Workflow

The flow is carefully structured for both optimal user experience and backend automation:

1. **User Onboarding**:
   - Greet the user and collect: First Name, Last Name, Email, and Phone Number.
   - Trigger `Customer_Creation` action to create a Salesforce record and return Record ID.

2. **Verification**:
   - Trigger `Customer_verification` action.
   - Email OTP to the user and verify.

3. **Financial Data Collection**:
   - Monthly Income
   - Savings
   - Entertainment, Food, Medical, Education, and Other Expenses
   - Risk Appetite (Low / Medium / High)
   - Trigger `FinRecommendations` action after collecting data.

4. **AI Analysis & Recommendations**:
   - The bot analyzes income vs. expenses.
   - Highlights savings pattern and gives suggestions.
   - Offers 2-3 investment recommendations (e.g., top mutual funds, gold timing, FDs from top banks, etc.) considering user’s risk profile.
   - Suggests possible expense cuts and financial strategies.

5. **Advisor Meeting Scheduling**:
   - Ask user if they want to schedule a meeting with a financial expert.
   - Trigger `Customer_Meetings` action.

6. **Feedback Collection**:
   - Ask user for feedback.
   - Trigger `Customer_Feedback` action.

7. **Slack Notifications**:
   - When a new account is created, an event is triggered.
   - A Slack channel for internal experts gets a summary.
   - One expert is auto-assigned and added to a meeting with the user.

### ⚙️ Technologies & Integrations
- **Salesforce Platform**
- **Einstein Bot**
- **Slack API Integration**
- **Google Sheets & Google Calendar API**
- **Apex Triggers & Actions**
- **Custom Metadata & Objects**

## 📈 Use Case Summary
Imagine a user named Aisha, who earns ₹80,000 monthly, saves ₹10,000, and spends the rest across various categories. She interacts with AgentForce through a chatbot integrated into a website. The bot collects her data, verifies her identity via OTP, and generates a financial profile. Based on her medium risk appetite, it suggests investing in:

- SBI Bluechip Mutual Fund via Groww
- Monthly SIP in Axis Small Cap Fund
- 1-Year FD with HDFC at 7.25% interest

It also highlights that her food and entertainment expenses are unusually high, suggesting alternatives. AgentForce then schedules a meeting with a human advisor and notifies the assigned expert via Slack.

## 🧠 Summary
AgentForce transforms Salesforce into a **smart, responsive, and human-friendly financial advisory platform**. It helps users manage their money better, learn financial discipline, and make informed decisions—all while staying connected to human support. This solution not only simplifies the complex world of personal finance but elevates customer engagement and financial literacy at scale.

> "Empower users. Simplify finance. Connect intelligently."

---

### 👨‍💻 Built With 💙 For: **Salesforce TDX Hackathon 2025**

**Team Name**: *AgentX*  
**Built By**: Manish Porwal, Anas Jawed, Karthik Jaini, Ananya Mukherjee, Uddhav Sanayal  
**Category**: AI & Financial Services  
**Tech Stack**: Salesforce, Apex, Einstein Bot, Google APIs, Slack API

---

For questions or demo requests, contact: [anasjawedofficial@gmail.com](mailto:anasjawedofficial@gmail.com)

🌐 GitHub: [github.com/anasjawed283](https://github.com/anasjawed283)

