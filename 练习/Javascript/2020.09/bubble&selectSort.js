function bubbleSort(arr) {
    var len = arr.length;
    var temp = 0;
    for (var i = 0; i < len - 1; i++) {
        for (var j = 0; j < len - (1 + i); j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;

            }
        }
    }
}

function selectSort(arr) {
    var arr = [9, 8, 7, 6, 5, 4];
    var temp;
    for (var i = 0; i < arr.length - 1; i++) {
        var count = 0;
        for (var j = i + 1; j < arr.length; j++) {

            if (arr[i] > arr[j]) {
                temp = arr[j];
                arr[j] = arr[i];
                arr[i] = temp;
                count++;
            }
            document.write("第" + (i + 1) + "轮" + "第" + count + "次" + arr + "<br>");

        }

    }
    
}

