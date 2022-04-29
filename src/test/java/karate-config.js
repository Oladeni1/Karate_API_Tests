function fn() {

  var config = {
   name : "test123",
   baseURL : 'https://reqres.in/api'
  }

  var env = karate.env
  karate.log('Env is : ',env )

  if(env == 'qa'){
   config.baseURL = 'https://reqres.in/api/qa'
  }

  else if(env == 'dev'){
   config.baseURL = 'https://reqres.in/api/dev'
  }

  else{
   config.baseURL = 'https://reqres.in/api'
  }

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;
 }