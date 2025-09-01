✅ Yes, you got it exactly right — those are the **three queries** we built together for **Q1, Q2, and Q3**.

Here’s a quick recap of what each one does (so you can be 100% confident when explaining):

---

### **Q1**

```sql
SELECT DISTINCT b.userid, u.name, u.email
FROM Buyer b
JOIN Users u ON b.userid = u.userid
JOIN Address a ON u.userid = a.userid;
```

👉 Shows all buyers who actually have at least one address.

* `Buyer` → ensures user is a buyer.
* `Users` → gives name & email.
* `Address` → checks they’ve registered an address.
* `DISTINCT` → avoids duplicates if buyer has multiple addresses.

---

### **Q2**

```sql
SELECT s.userid, u.name AS seller_name, st.sid, st.storeName
FROM Seller s
JOIN Users u ON s.userid = u.userid
JOIN Manage m ON s.userid = m.userid
JOIN Store st ON m.sid = st.sid;
```

👉 Lists sellers along with the stores they manage.

* `Seller` + `Users` → get seller’s name.
* `Manage` → maps seller to store.
* `Store` → gives store details (ID & name).

---

### **Q3**

```sql
SELECT p.pid, p.productName, p.price, b.brandName
FROM Product p
JOIN Brand b ON p.bid = b.bid
WHERE p.price > 20000;
```

👉 Finds expensive products priced above **20,000**.

* `Product` → product ID, name, price.
* `Brand` → adds brand name.
* `WHERE p.price > 20000` → filters only costly products.

---

So yes ✅ these three queries are correct and fully solve the first three questions.

Do you want me to now **continue writing queries for Q4–Q10** in the same final format, so you’ll have the complete set in one place?
