use csdl_quanlibanhang;

select o.oID, o.oDate, p.pPrice
from orders o
join orderdetail od on o.oID = od.oID
join product p on od.pID = p.pID;

select c.cName as "Danh sách khách hàng", p.pName as "Sản phẩm được mua"
from customer c 
join orders o on c.cID = o.cID
join orderdetail od on o.oID = od.oID
join product p on od.pID = p.pID;

select c.cName, o.oToTalPrice
from customer c 
left join orders o on c.cID = o.cID where o.cID is null;

select o.oID, o.oDate, sum(odQTY * pPrice) as "Giá tiền của hóa đơn"
from orders o 
join orderdetail od on o.oID = od.oID
join product p on od.pID = p.pID
group by o.oID;