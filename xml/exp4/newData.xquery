xquery version "1.0";
<clothesinfos>{
	let $comBrands := (
		let $obrands :=(
		for $brand in doc("fashion.xml")/catalog/brand
		return
		<brand>
			{$brand/@*}
			{$brand/*}
		</brand>
		)
		let $nbrands :=(
		for $brand in doc("newFashion.xml")/catalog/brand
		return
		<brand>
			{$brand/@*}
			{$brand/*}
		</brand>
		)
		return
		<comBrands>{$obrands},{$nbrands}</comBrands>
	)
	let $comShows := (
		let $oshows :=(
		for $show in doc("fashion.xml")/catalog/show
		return
		<show>
			{$show/@*}
			{$show/*}
		</show>
		)
		let $nshows :=(
		for $show in doc("newFashion.xml")/catalog/show
		return
		<show>
			{$show/@*}
			{$show/*}
		</show>
		)
		return
		<comShows>{$oshows},{$nshows}</comShows>
	)
	let $comClothes := (
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
		<comClothes><old>{$oclothes}</old><new>{$nclothes}</new></comClothes>
	)
		for $clothesinfo in $comClothes/new/clothesinfo,$show in $comShows/show,$brand in $comBrands/brand
		where $clothesinfo/@cshow = $show/@sid and $clothesinfo/@cbrand=$brand/@bid
			return
			<clothesinfo>
				{$clothesinfo/@*}
				{$clothesinfo/*}
				{$show/showname}
				{$brand/bname}
			</clothesinfo>
}</clothesinfos>