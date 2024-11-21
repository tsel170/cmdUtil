@echo off

mkdir server

explorer "%cd%\server"

cd server

set "new_script_path=open_vs_code.cmd"
(
    echo @echo off
    echo code .
    echo exit
) > "%new_script_path%"

start npm init -y 
start npm i express mongoose nodemon dotenv 

set "env_file=.env"
type nul > "%env_file%"

set "js_file=app.js"
(
    echo import mongoose from "mongoose";
    echo import express from "express";
    echo import dotenv from "dotenv";
    echo.
    echo dotenv.config^(^);
    echo const app = express^(^);
    echo const PORT = process.env.PORT ^|^| 3000;
    echo app.use^(express.json^(^)^);
    echo.
    echo.
    echo app.listen^(PORT^)
    
) > "%js_file%"


set "redme_file=README.txt"
(
echo add the foloing line before the "scripts" line to use modules.
echo "type": "module",
echo.
echo add the foloing line after the "test" line to enable dev mode.
echo ,"dev": "nodemon app.js"
echo.
echo run the command:
echo npm run dev 
echo to enter dev mode.
echo.
echo also - you can creat shortcut to "open_vs_code" so you will have easy acsses to the vs code of the server 

) > "%redme_file%"

code .

exit