SELECT
    o.order_id AS 기본키,
    p.name AS 회원이름,
    p.name AS 상품,
    o.order_date as 구매한시간,
    o.quantity AS 수량,
    o.status AS 상태
FROM
    Orders o, Products p, Orders_Member om
where o.product_id = p.product_id and om.orders_member_id = o.orders_member_id
ORDER BY o.order_id DESC;