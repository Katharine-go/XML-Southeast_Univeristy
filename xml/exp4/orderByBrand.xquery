xquery version "1.0";
<clothesinfos>
{
	let $brands :=doc("fashion.xml")//catalog/brand
	let $shows := doc("fashion.xml")//catalog//show
	let $clothesinfos:=doc("fashion.xml")//catalog/clothesinfo
	for $clothesinfo in $clothesinfos,$brand in $brands,$show in $shows
		where $clothesinfo/@cbrand = $brand/@bid and $clothesinfo/@cshow=$show/@sid
		order by $brand/bname descending
		return
		<clothesinfo>
			{$clothesinfo/@*}
			{$clothesinfo/*}
			{$show/showname}
			{$brand/bname}
		</clothesinfo>
}
</clothesinfos>