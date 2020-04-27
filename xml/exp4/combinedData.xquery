xquery version "1.0";
<clothesinfos>
{
let $combineBrand:=(
	let $obrand :=(
	for $brand in doc("fashion.xml")/catalog/brand
	return
	<brand>
		{$brand/@*}
		{$brand/*}
	</brand>
	)
	let $nbrand :=(
	for $brand in doc("newFashion.xml")/catalog/brand
	return
	<brand>
		{$brand/@*}
		{$brand/*}
	</brand>
	)
	return
	<combineBrand>
		{$obrand}
		{$nbrand}
	</combineBrand>	
)
let $combineShows:=(
	let $oshow :=(
	for $show in doc("fashion.xml")/catalog/show
	return
	<show>
		{$show/@*}
		{$show/*}
	</show>
	)
	let $nshow :=(
	for $show in doc("newFashion.xml")/catalog/show
	return
	<show>
		{$show/@*}
		{$show/*}
	</show>
	)
	return
	<combineShows>
	{$oshow}
	{$nshow}
	</combineShows>	
)
let $combineClothes:=(
	let $oclothes :=(
	for $clothes in doc("fashion.xml")/catalog/clothesinfo
	return
	<clothesinfo>
		{$clothes/@*}
		{$clothes/*}
	</clothesinfo>
	)
	let $nclothes :=(
	for $clothes in doc("newFashion.xml")/catalog/clothesinfo
	return
	<clothesinfo>
		{$clothes/@*}
		{$clothes/*}
	</clothesinfo>
	)
	return
	<combineClothes>
	<old>{$oclothes}</old>,<new>{$nclothes}</new>
	</combineClothes>	
)
for $clothesinfo in $combineClothes/new/clothesinfo,$show in $combineShows,$brand in $combineBrand
	return
	<clothesinfo>
		{$clothesinfo/@*}
		{$clothesinfo/*}
		{$show/showname}
		{$brand/bname}
	</clothesinfo>
}
</clothesinfos>