import express from 'express';

// Constants
const PORT = 8080;
const app = express();

app.get('/', (req, res) => {
  res.send('Hello Earth!');
});

const server = app.listen(PORT, function () {
  console.log('Express listening on port ' + PORT);
});
