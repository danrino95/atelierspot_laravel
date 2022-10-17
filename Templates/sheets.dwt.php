<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
</head>

<body>
    @foreach($sheets as $sheet)
    <div>
    <p>Time : {{$sheet->time}}</p>
    </div>
    @endforeach
</body>
</html>
