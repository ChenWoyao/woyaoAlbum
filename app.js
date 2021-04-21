const Koa = require('koa')
const path = require('path')
const bodyParser = require('koa-bodyparser')
const staticFiles = require('koa-static')
const Router = require('koa-router')

const app = new Koa()
const router = new Router()
const cors = require('@koa/cors')

app.use(cors({
    origin: '*'
}))

app.use(bodyParser({
    multipart: true
}))

app.use(staticFiles(path.resolve(__dirname, './uploads'), {
    maxage: 30 * 24 * 60 * 60 * 1000
}))

router.get('/', async (context, next) => {
    context.body = 'hello from myApp by user woyao'
})

app.use(router.routes())
app.use(router.allowedMethods())

app.listen(3000)
console.log('app service start at 3000')
