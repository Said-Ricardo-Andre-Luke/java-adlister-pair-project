(function () {

    let unconvertedDates = document.getElementsByClassName("date");
    console.log(unconvertedDates);
    function dateConversion (unconvertedDates){
        for (let date of unconvertedDates) {
            let html = date.innerHTML;
            let replace = html.replace(/-/g, '/')
            let parsedDate = Date.parse(replace)
            let jsDate = new Date(parsedDate);
            const options = {weekday: 'short' ,month: 'short', day: 'numeric', year: 'numeric' };
            let updatedDate = jsDate.toLocaleDateString('en-US',options);
            date.innerHTML = `Posted: ${updatedDate}`;
        }
    }

    dateConversion(unconvertedDates);

})();