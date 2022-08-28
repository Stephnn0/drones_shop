const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");
const cors = require("cors");



const PORT =  3000;  //process.env.PORT || 6000;
const app = express();
const DB = "mongodb+srv://danluck:maxpayne5@cluster0.ejyo3vt.mongodb.net/?retryWrites=true&w=majority"


app.use(express.json());
app.use(cors());

app.use(authRouter);


//connections
mongoose.connect(DB)
.then(() => {
    console.log('connection successful');
})
.catch((e) => {
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected to ${PORT}`);

});