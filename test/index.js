import http from 'http'
import assert from 'assert'

import '../lib/index.js'

const URL = 'http://127.0.0.1:8080/'

describe('Example Node Server', () => {
  it('should return 200', done => {
    http.get(URL, res => {
      assert.equal(200, res.statusCode)
      done()
    });
  });
});
