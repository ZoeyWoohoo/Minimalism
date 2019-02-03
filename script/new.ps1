$title = $args
$date = [datetime]::Now.ToString('yyy-MM-dd HH:mm:ss')

function New-Article {
  if(get-childitem _posts -ErrorAction stop) {
    if($title) {
      $titleContent = $title.split('-')
      $title = [datetime]::Now.ToString('yyy-MM-dd') + "-" + $title
      $fileName = $title + ".md"
      $filePath = ".\_posts\" + $fileName
      $articleHead = "---`r`ntitle: $titleContent`r`ndate: $date +0800`r`ncategory:`r`ntags:`r`nexcerpt:`r`n---"

      Out-File -FilePath $filePath -InputObject $articleHead -Encoding UTF8
      Write-Host "New article created successfully.`r`nEnjoy your writing :)" -ForegroundColor Yellow
    } else {
      Write-Host "Please specify the title of the article." -ForegroundColor Red
    }
  }
}

New-Article
