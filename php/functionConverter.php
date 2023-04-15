<?php

function dbToDisplay_line($line){
    switch ($line) {
        case "1":
            return "Repair";
            break;
        case "2":
            return "1";
            break;
        case "3":
            return "2";
            break;
        case "4":
            return "3";
            break;
        case "5":
            return "4";
            break;
        case "6":
            return "5";
            break;
        case "7":
            return "7";
            break;
        case "8":
            return "8";
            break;
        case "9":
            return "10";
            break;
        case "10":
            return "11";
            break;
        case "11":
            return "12";
            break;
        default:
            // default case
            break;
    }
}

function dbToDisplay_station($station){
    switch ($station) {
        case "1":
            return "Singulation";
            break;
        case "2":
            return "Functional Testing";
            break;
        case "3":
            return "Visual Inspection";
            break;
        case "4":
            return "Final Visual Inspection";
            break;
        case "5":
            return "Outgoing Quality Control";
            break;
        case "6":
            return "Others";
            break;
        default:
            // default case
            break;
    }
}

function dbToDisplay_problem($problem)
{
    switch ($problem) {
        case "1":
            return "Broken Router Bit";
            break;
        case "2":
            return "Positive Cut";
            break;
        case "3":
            return "Negative Cut";
            break;
        case "4":
            return "Model Conversion";
            break;
        case "5":
            return "ESD or Groundings";
            break;
        case "6":
            return "FT Program Lost";
            break;
        case "7":
            return "HDA NG";
            break;
        case "8":
            return "Reset Counter";
            break;
        case "9":
            return "FT Jig Problem";
            break;
        case "10":
            return "Laptop NG";
            break;
        case "11":
            return "Microlamp NG";
            break;
        case "12":
            return "Microscope NG";
            break;
        case "13":
            return "Carousel NG";
            break;
        case "14":
            return "Jig NG";
            break;
        case "15":
            return "Others";
            break;
        default:
            // default case
            break;
    }
}

function displayToDB_line($line){
    switch ($line) {
        case "Repair":
            return "1";
            break;
        case "1":
            return "2";
            break;
        case "2":
            return "3";
            break;
        case "3":
            return "4";
            break;
        case "4":
            return "5";
            break;
        case "5":
            return "6";
            break;
        case "7":
            return "7";
            break;
        case "8":
            return "8";
            break;
        case "10":
            return "9";
            break;
        case "11":
            return "10";
            break;
        case "12":
            return "11";
            break;
        default:
            // default case
            break;
    }
}

function displayToDb_station($station)
{
    switch ($station) {
        case "Singulation":
            return "1";
            break;
        case "Functional Testing":
            return "2";
            break;
        case "Visual Inspection":
            return "3";
            break;
        case "Final Visual Inspection":
            return "4";
            break;
        case "Outgoing Quality Control":
            return "5";
            break;
        case "Others":
            return "6";
            break;
        default:
            // default case
            break;
    }
}

function displayToDb_problem($problem)
{
    switch ($problem) {
        case "Broken Router Bit":
            return "1";
            break;
        case "Positive Cut":
            return "2";
            break;
        case "Negative Cut":
            return "3";
            break;
        case "Model Conversion":
            return "4";
            break;
        case "ESD or Groundings":
            return "5";
            break;
        case "FT Program Lost":
            return "6";
            break;
        case "HDA NG":
            return "7";
            break;
        case "Reset Counter":
            return "8";
            break;
        case "FT Jig Problem":
            return "9";
            break;
        case "Laptop NG":
            return "10";
            break;
        case "Microlamp NG":
            return "11";
            break;
        case "Microscope NG":
            return "12";
            break;
        case "Carousel NG":
            return "13";
            break;
        case "Jig NG":
            return "14";
            break;
        case "Others":
            return "15";
            break;
        default:
            // default case
            break;
    }
}
?>