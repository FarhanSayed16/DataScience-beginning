-- Q1. Display all buyers (userid, name, email) who have at least one address.
SELECT DISTINCT b.userid, u.name, u.email
FROM Buyer b
JOIN Users u ON b.userid = u.userid
JOIN Address a ON u.userid = a.userid;

-- Q2. List all sellers and the stores they manage.
SELECT s.userid, u.name AS seller_name, st.sid, st.storeName
FROM Seller s
JOIN Users u ON s.userid = u.userid
JOIN Manage m ON s.userid = m.userid
JOIN Store st ON m.sid = st.sid;

-- Q3. Find all products with price greater than 20000, showing product id, name, price, and brand.
SELECT p.pid, p.productName, p.price, b.brandName
FROM Product p
JOIN Brand b ON p.bid = b.bid
WHERE p.price > 20000;
