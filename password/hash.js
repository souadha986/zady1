const bcrypt = require('bcrypt');

const password = 'gggggggggg';
const saltRounds = 10;
passwordInvalid = (!password || password.length<8 );
if (passwordInvalid) {
    console.log("Make sure..");
    return;
}
else {
bcrypt.hash(password, saltRounds, function (err, hash) {

    if (err) {
        console.error(err);
        return;
    }
    else {
    console.log(hash);
    }
});
}