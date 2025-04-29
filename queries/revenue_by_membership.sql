SELECT 
    s.subscription_type,
    COUNT(p.payment_id) AS total_payments,
    SUM(p.amount) AS total_revenue
FROM 
    Payments p
JOIN Members m ON p.member_id = m.member_id
JOIN Subscriptions s ON m.subscription_id = s.subscription_id
GROUP BY 
    s.subscription_type;
