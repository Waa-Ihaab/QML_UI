# QML UI – Technical Assignment

This repository contains my solution for the technical test provided by **LPRINT**.

The goal of this assignment was to build a small Qt/QML application with:

- A main menu screen with buttons arranged in a grid  
- A second screen containing a simple form and a timer  
- Navigation using `StackView`  
- A shared top `MenuBar` visible on all screens  
- A Back button available only on Screen1  

---

## 📌 Features Implemented

✅ **MenuScreen**
- Grid layout with 10 buttons  
- Button “1” navigates to Screen1  

✅ **Screen1**
- Form layout inside a GroupBox  
- Two buttons controlling a timer  
- Timer output is printed in the terminal using `console.log()`  

✅ **Navigation**
- Implemented with `StackView.push()` and `pop()`  
- Shared MenuBar across all pages  

---

## ⚙️ Development Notes

During the implementation, I faced some obstacles, especially with the `StackView` navigation.

At first, I encountered an issue where `StackView.view` was `null` inside delegate buttons (Repeater).  
After debugging, I fixed it by correctly accessing the StackView reference from the root item.

This helped me better understand QML navigation and component context.

---

Thank you for reviewing my work.
