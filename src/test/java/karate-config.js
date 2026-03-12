// In karate-config.js
function fn() {
  var config = {
    baseUrl: 'https://localhost:5173/'
  };
  if (karate.env === 'ci') {
    config.driverConfig = { type: 'chrome', headless: true };
  } else {
    config.driverConfig = { type: 'chrome' };
  }
  return config;
}