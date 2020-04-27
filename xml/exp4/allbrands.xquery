xquery version "1.0";
<brands>
{
	for $brand
		in doc("fashion.xml")//catalog/brand
	return
	$brand
}
</brands>