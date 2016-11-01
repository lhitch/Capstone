using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CCADLog
{
    public class DataUtil
    {
        public bool isNumber(string str)
        {
            foreach (char ch in str)
            {
                if (ch < '0' || ch > '9' || ch == '.')
                    return false;
            }
            return true;
        }

        public int ConvertMonthtoNum(string month)
        {
            int monthNum;
            month = month.ToLower();
            switch (month)
            {
                case "jan":
                case "january":
                    monthNum = 1;
                    break;
                case "feb":
                case "february":
                    monthNum = 2;
                    break;
                case "mar":
                case "march":
                    monthNum = 3;
                    break;
                case "apr":
                case "april":
                    monthNum = 4;
                    break;
                case "may":
                    monthNum = 5;
                    break;
                case "jun":
                case "june":
                    monthNum = 6;
                    break;
                case "jul":
                case "july":
                    monthNum = 7;
                    break;
                case "aug":
                case "august":
                    monthNum = 8;
                    break;
                case "sep":
                case "september":
                    monthNum = 9;
                    break;
                case "oct":
                case "october":
                    monthNum = 10;
                    break;
                case "nov":
                case "november":
                    monthNum = 11;
                    break;
                case "dec":
                case "december":
                    monthNum = 12;
                    break;
                default:
                    monthNum = 0;
                    break;
            }

            return monthNum;
        }

        public string ConvertNumtoMonth(int monthNum)
        {
            string month;
            switch (monthNum)
            {
                case 1:
                    month = "January";
                    break;
                case 2:
                    month = "February";
                    break;
                case 3:
                    month = "March";
                    break;
                case 4:
                    month = "April";
                    break;
                case 5:
                    month = "May";
                    break;
                case 6:
                    month = "June";
                    break;
                case 7:
                    month = "July";
                    break;
                case 8:
                    month = "August";
                    break;
                case 9:
                    month = "September";
                    break;
                case 10:
                    month = "October";
                    break;
                case 11:
                    month = "November";
                    break;
                case 12:
                    month = "December";
                    break;
                default:
                    month = "Undefined";
                    break;
            }
            return month;
        }

        public string DBDateConvert(string date)
        {
            char[] dateDelimiters = { ' ', '-', '/', ',' };//space, dash, forward slash, comma delimiters
            string[] dateParts = date.Split(dateDelimiters);
            if (!isNumber(dateParts[1]))//if the month is not in number format, turn it into a number based on the month
                dateParts[1] = ConvertMonthtoNum(dateParts[1]).ToString();
            string newDate = dateParts[0] + "/" + dateParts[1] + "/" + dateParts[2];
            return newDate;
        }

        public string DisplayDateConvert(string date)
        {
            char[] dateDelimiters = { '/' };
            string[] dateParts = date.Split(dateDelimiters);
            dateParts[1] = ConvertNumtoMonth(int.Parse(dateParts[1]));//convert DB month number to spelled out month to display
            string newDate = dateParts[0] + "-" + dateParts[1] + "-" + dateParts[2];
            return newDate;
        }

        //TODO: Finish function
        public bool isDate(string date)
        {
            char[] dateDelimiters = { ' ', '-', '/', ',' };
            string[] dateParts = date.Split(dateDelimiters);
            if (dateParts.Length < 3)
                return false;
            //check if date is a number
            if (!isNumber(dateParts[0]))
                return false;
            //check if month is valid
            int monthNum;
            if (isNumber(dateParts[1]))
            {
                monthNum = int.Parse(dateParts[1]);
                if (monthNum < 1 || monthNum > 12)
                    return false;
            }
            else
            {
                monthNum = ConvertMonthtoNum(dateParts[1]);
                if (monthNum == 0)
                    return false;
            }
            if (int.Parse(dateParts[0]) > 30/*DaysinMonth(monthNum)*/ || int.Parse(dateParts[0]) < 1)
                return false;
            if (!isNumber(dateParts[2]))
                return false;
            if (int.Parse(dateParts[2]) < 2000)
                return false;
            //if everything passes, valid
            return true;
        }
    }
}