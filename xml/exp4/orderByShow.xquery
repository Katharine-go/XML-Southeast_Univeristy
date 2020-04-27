xquery version "1.0";
<clothesinfos>
{
	let $brands := doc("fashion.xml")//catalog//brand
	let $shows :=doc("fashion.xml")//catalog/show
	let $clothesinfos:=doc("fashion.xml")//catalog/clothesinfo
	for $clothesinfo in $clothesinfos,$show in $shows ,$brand in $brands
		where $clothesinfo/@cshow = $show/@sid and $clothesinfo/@cbrand=$brand/@bid
		order by $show/showdate descending
		return
		<clothesinfo>
			{$clothesinfo/@*}
			{$clothesinfo/*}
			{$show/showname}
			{$brand/bname}
		</clothesinfo>
}
</clothesinfos>