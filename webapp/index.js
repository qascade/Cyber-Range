const express = require('express');
const path = require('path');
const { exec } = require('child_process');

const port = process.env.PORT || 8080;
const app = express();

app.set('view engine', 'ejs')
app.set('views', path.join(__dirname, '/views'))
app.use(express.static(path.join(__dirname, 'webapp')));

app.get('/', function (req, res) {

    // const script_num = req.params;
    // if (!script_num) {
    //     script_num = '0';
    // }

    res.render('home.ejs'
    )
});


app.get('/random', (req, res) => {
    const num = Math.random();
    res.render('rand.ejs', { 'rand': num });
})

app.listen(port);
console.log('Server started at http://localhost:' + port);
runScript(0);
function runScript(script_num) {
    //include the absolute path here, due to some unknown reason relative path is not working :(
    exec('C:/DesktopClutter/WebStuff/cyber_range/cyber-range/./init.sh  C:/DesktopClutter/WebStuff/cyber_range/cyber-range/bin/stack${script_num}.c', (err, stdout, stderr) => {
        if (err) {
            //some err occurred
            console.error(err)
        } else {
            // the *entire* stdout and stderr (buffered)
            console.log(`stdout: ${stdout}`);
            console.log(`stderr: ${stderr}`);
        }
    });
}