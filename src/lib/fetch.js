const { Pool } = require('pg')

const pool = new Pool({
    connectionString: 'postgres://jgjesyit:ZEDvVIt7euiwlaZlJGGQcxBlyqYE9Hpr@jelani.db.elephantsql.com/jgjesyit'
})

class PG {
  constructor(pool) {
    this.pool = pool
  }

  async fetch(SQL, ...params){
    const client = await this.pool.connect();
    try {
      const {rows: [row]} = await client.query(SQL, params.length ? params : null)
      return row;
    } finally {
      client.release();
    }
  }

  async fetchAll(SQL, ...params){
    const client = await this.pool.connect();
    try {
      const {rows} = await client.query(SQL, params.length ? params : null)
      return rows
    } finally {
      client.release();
    }
  }
}

module.exports= new PG(pool);