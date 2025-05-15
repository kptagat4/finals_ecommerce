# 🛒 TechNest - E-commerce UI Project

### 👤 Student Name: Kient Vincent P. Tag-at 
### 🆔 Student ID: 2023_2110579  

---

## 📌 Project Description

**TechNest** is a beautifully designed Flutter-based e-commerce application specializing in selling electronic gadgets. The app showcases modern UI principles while offering a smooth user experience. From laptops and smartphones to speakers and smartwatches, TechNest provides a visually appealing storefront for users to browse, explore, and manage their shopping cart.

This project focuses primarily on crafting a polished, functional front-end UI for a niche gadget store.

---

## ✅ Implemented Features

### 🖥️ **Screens:**

1. ### `EntryScreen`
   - **Purpose**: Welcome screen that introduces users to TechNest.
   - **Key Elements**: Large brand icon, title, and "Enter Store" button.
   - **Navigation**: Redirects to the Home screen.

2. ### `HomeScreen`
   - **Purpose**: Display the list of gadgets available for purchase.
   - **Key Elements**: Grid of product cards (image, name, price), AppBar with cart icon.
   - **Navigation**: Taps on a product open the Product Detail screen.

3. ### `ProductDetailScreen`
   - **Purpose**: Show detailed information for a selected product.
   - **Key Elements**: Large image, product name and price, description, and "Add to Cart" button.

4. ### `CartScreen` *(Newly Added)*
   - **Purpose**: View and manage cart items.
   - **Key Elements**: List of added items, each with delete option. Updates in real-time.

---

### ✨ Additional UI Features:
- Rounded card UI for a clean, modern product display.
- Customized color theme with warm tech-inspired tones.
- Shopping cart management (add/remove).
- Smooth navigation across screens using `Navigator`.

---

## 🎨 Unique Design Choices & Creativity

### 💡 **Concept & Niche**
- Chosen niche: **Gadget Store**
- Focused on products like laptops, phones, smartwatches, and speakers — curated for tech enthusiasts.

### 🌈 **Color Palette**
- **Primary Color**: `#C36A2D` (warm copper-like tone)
- **Background**: `#F3E9DC` (soft neutral beige)
- These tones create a modern, grounded look that stands out from typical cool tech designs.

### 🖋️ **Typography & Icons**
- **Font**: `Lato` – a clean, readable sans-serif font perfect for UI.
- **Icons**: Material Icons like `Icons.handyman` and `Icons.shopping_cart` reinforce the gadget/utility vibe.

### 🚀 **Creative Features**
- Custom product card layout with image previews.
- Consistent button and card rounding for cohesive UX.
- Light/dark color contrast for visual hierarchy.
- Logical state management for cart operations using `setState`.

### 📸 **Screenshots**

> Replace these image paths with actual screenshots or GIFs in your repository

- ![Entry Screen](screenshots/entry_screen.png)
- ![Home Screen](screenshots/home_screen.png)
- ![Product Detail](screenshots/detail_screen.png)
- ![Cart Screen](screenshots/cart_screen.png)

---

## 🧩 Challenges Faced & Solutions

### 1. **Cart State Persistence**
**Challenge**: Managing and displaying items added to the cart across different screens.
- **Solution**: Lifted cart state to a common widget and passed it down using constructors. Used `setState` to update the UI dynamically when items are added or removed.

### 2. **Responsive Grid UI**
**Challenge**: Ensuring product cards render consistently across different device sizes.
- **Solution**: Used `SliverGridDelegateWithFixedCrossAxisCount` with adaptive spacing and aspect ratio for uniformity across devices.

---

## 🔚 Conclusion

TechNest demonstrates how a focused Flutter UI project can create a clean and engaging e-commerce experience. With warm aesthetics, clean layouts, and intuitive navigation, this app offers a strong foundation for a fully functional e-commerce platform in future development phases.

---
This is my video link
https://drive.google.com/drive/folders/1DtSTDUDz4GbCyNNjx3c-OsEX9RF39yUt?usp=sharing
