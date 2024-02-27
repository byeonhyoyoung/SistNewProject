let arr1=[2,3,6];
let arr2=[6,7];
let arr3=[11,12,...arr1,44,...arr2];

console.log(arr3.length); //8개(11,12,2,3,6,44,6,7)
console.log(arr3); //구조 보여줌

let arr4=[...[100,200],...arr2]; //100, 200, 6, 7
console.log(arr4);

function fsum(arr){

    let sum=0;
    //방법1 
    // for(i=0; i<arr.length; i++)
    // {
    //     sum+=arr[i];
    // }

    //방법2
    for(let a in arr){
        sum+=arr[a];
    }

    console.log("합계: "+sum); //91
}
fsum(arr3);


function func3(a,b,c,e,f){
    console.log(a,b,c,e,f);
}

//arr3를 인자로 보내서 호출해 보세요
func3(arr3); //undefined undefined undefined undefined
func3(...arr3); //11 12 2 3 6