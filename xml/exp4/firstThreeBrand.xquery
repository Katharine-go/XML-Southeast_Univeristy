xquery version "1.0";
<clothes>
{
let $brand_list :=
(
	for $brand 
		in doc("fashion.xml")/catalog/brand
		order by number($brand/hot) descending
	return
		data($brand/@bid)
)
for $brand at $brandIndex in $brand_list
return
		  if($brandIndex <=3) then
		  for $clothesinfo in doc("fashion.xml")/catalog/clothesinfo
			  let $cbrand := $clothesinfo/@cbrand
			  where $cbrand = $brand and $clothesinfo/@gender = "女"
			  return
			  $clothesinfo 
		  else ''
}
</clothes>