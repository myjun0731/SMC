SELECT
    o.order_id AS �⺻Ű,
    p.name AS ȸ���̸�,
    p.name AS ��ǰ,
    o.order_date as �����ѽð�,
    o.quantity AS ����,
    o.status AS ����
FROM
    Orders o, Products p, Orders_Member om
where o.product_id = p.product_id and om.orders_member_id = o.orders_member_id
ORDER BY o.order_id DESC;