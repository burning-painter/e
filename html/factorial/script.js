function calculatefactorial() {
    const num = parseInt(document.getElementById('num').value);
    
    if (!(num)) {
        alert('Please enter valid numbers');
        return;
    }

    const tableBody = document.getElementById('resultsTable').getElementsByTagName('tbody')[0];
    tableBody.innerHTML = ''; // Clear previous results
    let results =1;
    console.log(num);
    
    for (let i=num; i >0; i--) {
        results = results* i;
    }

    const newRow = tableBody.insertRow();
        const numberCell = newRow.insertCell(0);
        const factorialCell = newRow.insertCell(1);

        numberCell.textContent = num;
        factorialCell.textContent=results;
        
}   
