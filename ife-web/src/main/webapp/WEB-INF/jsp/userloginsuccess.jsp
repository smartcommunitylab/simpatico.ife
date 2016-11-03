<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>SIMPATICO Authorization</title>
<script type="text/javascript">
        
        function complete() {
            var params = JSON.parse(document.location.hash.substring(1));
            window.opener.postMessage(params, '*');
            window.close();         
        }
        
        function cancel() {
            window.close();         
        }
  
  
        function oncheck() {
          var val = document.getElementById('check').checked;
          if (val) localStorage.authorized = 'true';
          else localStorage.authorized = 'false';
        }  
        
        function init() {
            if (document.location.hash && document.location.hash.substring(1)) {
                if (localStorage.authorized == 'true') {
                  complete();
                }
            }
        }
</script>
</head>
<body onload="init()" class="text-center">
  <h1>Benvenuto in SIMPATICO!</h1>
  
  <h3>Autorizzi a utilizzare i tuoi dati?</h3>
  
  <div class="row">
    <div class="checkbox">
      <label>
        <input type="checkbox" onchange="oncheck()"  id="check"> Non chiedermi piu'
      </label>
    </div>    
  </div>  
  <div class="row">
    <div class="col-sm-offset-2 col-sm-4">
      <button type="button" class="btn btn-primary" onclick="complete()">Autorizzo</button>
    </div>  
    <div class="col-sm-4">
      <button type="button" class="btn btn-danger" onclick="cancel()">Non Autorizzo</button>
    </div>  
  </div>  
</body>
</html>
