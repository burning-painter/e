function calculateRange() {
    const startNumber = parseInt(document.getElementById('startNumber').value);
    const endNumber = parseInt(document.getElementById('endNumber').value);
    if (!(startNumber) || !(endNumber)) {
        alert('Please enter valid numbers');
        return;
    }

    const tableBody = document.getElementById('resultsTable').getElementsByTagName('tbody')[0];
    tableBody.innerHTML = ''; // Clear previous results

    for (let i = startNumber; i <= endNumber; i++) {
        const square = i * i;
        const cube = i * i * i;

        const newRow = tableBody.insertRow();

        const numberCell = newRow.insertCell(0);
        const squareCell = newRow.insertCell(1);
        const cubeCell = newRow.insertCell(2);

        numberCell.textContent = i;
        squareCell.textContent = square;
        cubeCell.textContent = cube;
    }
}
