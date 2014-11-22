<authors>
{
  for $med in doc('medsamp2014.xml'),
      $pub in ($med)/MedlineCitationSet,
      $author in  distinct-values($med//LastName)
  order by $author
  return 
  <author name="{$author}">
  </author>

}
</authors>

