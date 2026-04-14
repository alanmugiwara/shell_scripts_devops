Write-Host "===========================================" -ForegroundColor Green
Write-Host "AWS Machine List Viewer script (win) v0.1" -ForegroundColor White
Write-Host "Release date | 20260204" -ForegroundColor White
Write-Host "github | @alanmugiwara" -ForegroundColor White
Write-Host "===========================================" -ForegroundColor Green
Write-Host ""

# 1️⃣ Pega todas as instâncias running
$instances = aws ec2 describe-instances `
  --filters 'Name=instance-state-name,Values=running' `
  --region sa-east-1 `
  --query 'Reservations[].Instances[].{ID:InstanceId,AMI:ImageId,Tipo:InstanceType,Estado:State.Name,IP_Publico:PublicIpAddress,NetworkInterfaces:NetworkInterfaces,Tags:Tags}' `
  --output json | ConvertFrom-Json

$results = foreach ($inst in $instances) {

  # 2️⃣ Pega detalhes da AMI
    $ami_info = aws ec2 describe-images `
      --image-ids $inst.AMI `
      --region sa-east-1 `
      --query 'Images[].{Nome:Name,Descricao:Description,SO:PlatformDetails}' `
      --output json | ConvertFrom-Json

    if ($ami_info -ne $null -and $ami_info.Count -gt 0) {
        $desc_ami  = $ami_info[0].Descricao
        $so_ami    = $ami_info[0].SO
    } else {
        $desc_ami  = "N/A"
        $so_ami    = "N/A"
    }

    # 3️⃣ Pega o nome da instância (tag Name)
    $name_tag = ($inst.Tags | Where-Object { $_.Key -eq "Name" }).Value
    if (-not $name_tag) { $name_tag = "N/A" }

  # 4️⃣ Monta objeto final
    [PSCustomObject]@{
        ID_Da_Instancia         = $inst.ID
        Nome_Da_Instancia       = $name_tag
        Tipo       = $inst.Tipo
        Estado     = $inst.Estado
        IP_Publico = $inst.IP_Publico
        AMI_ID        = $inst.AMI
        SO  = $desc_ami
        SO_Base         = $so_ami
    }
}

# 5️⃣ Exibe tabela
$results | Format-Table -AutoSize
