// const form = document.getElementById("form");
// form.addEventListener("submit",submit1);

// function   addData(category,name,size_name,quantity_value,calories_value,description, cost) {

//     let crudTable = document.getElementById("crudTable");

//     let productDetails = document.createElement("tr");

//     let category_td = document.createElement("td");
//     let name_td = document.createElement("td");
//     let size_name_td = document.createElement("td");
//     let  quantity_value_td= document.createElement("td");
//     let calories_value_td = document.createElement("td");
//     let description_td = document.createElement("td");
//     let cost_td= document.createElement("td");
//     let events_td = document.createElement("td");

//     category_td.innerText = category;
//     name_td.innerText =name ;
//     size_name_td.innerText =size_name ;
//     quantity_value_td.innerText = quantity_value;
//     calories_value_td.innerText = calories_value;
//     description_td.innerText = description;
//     cost_td.innerText = cost;

//     let edit_button = document.createElement("button");
//     edit_button.setAttribute("class", "edit_button");
//     edit_button.innerText = "edit";
//     events_td.append(edit_button);

//     let delete_button = document.createElement("button");
//     delete_button.setAttribute("class", "del_button"); 
//     delete_button.innerText = "delete";
//     events_td.append(delete_button);

//     productDetails.append(category_td,name_td,size_name_td,quantity_value_td,calories_value_td,description_td,cost_td, events_td)
//     crudTable.append(productDetails);

// };
// product_detail_list.forEach(addData);

// // let product_detail_list=JSON.parse(localStorage.getItem('product_detail_list'));

// function submit1(e){
//     e.preventDefault();
//     let category = document.getElementById("category").value;
//     // let category_description = document.getElementById("category_description").value;
//     let name = document.getElementById("name").value;
//     let  size_name = document.getElementById("size_name").value;
//     let quantity_value = document.getElementById("quantity_value").value;
//     // let quantity_unit = document.getElementById("quantity_unit").value;
//     let calories_value = document.getElementById("calories_value").value;
//     // let calories_unit = document.getElementById("calories_unit").value;
//     let  image_url= document.getElementById("image_url").value;
//     let description = document.getElementById("description").value;
//     let  cost= document.getElementById("cost").value;
//     // let currency = document.getElementById("currency").value;
//     // let offers = document.getElementById("offers").value;

//     addData(category,name,size_name,quantity_value,calories_value,description, cost);

//     let product_detail_list= JSON.parse(localStorage.getItem('product_detail_list'))||[];

//          let product_detail = {
//             "category":category,
//             // "category_description":category_description,
//             // "description":description,
//             "name":name,
//             "quantities":{
//                 "name":size_name,
//             "quantity":quantity_value,
//             "unit":"ml",
//             "calories":calories_value,
//             "calories_unit":"kcal",
//             },
//             "image":{

//                 "source":image_url,
//                 "alt":""
//             },

//             "description":description,

//             "price":cost,
//             "currency":"Rs."
//          }

//           product_detail_list.push(product_detail);

//           localStorage.setItem("product_detail_list",JSON.stringify(product_detail_list));

// }

// let id="no";

// selectData();
// function manageData(){

//    document.getElementById('msg').innerHTML= "";
// //    let first_name = document.getElementById('first_name').value;
// let category = document.getElementById("category").value;
// let name = document.getElementById("name").value;
// let  size_name = document.getElementById("size_name").value;
// let quantity_value = document.getElementById("quantity_value").value;
// let calories_value = document.getElementById("calories_value").value;
// let  image_url= document.getElementById("image_url").value;
// let description = document.getElementById("description").value;
// let  cost= document.getElementById("cost").value;
//    if( name == ""){
//     document.getElementById('msg').innerHTML = 'plese enter your name';
//    }else{
//     console.log(id);
//     if(id=='no'){
//         let arr=  JSON.parse(localStorage.getItem('crud'));
//        if(arr==null){
//         let data=[{
//             category:category,
//             // "category_description":category_description,
//             // "description":description,
//             name:name,
//             quantities:{
//             size_name:size_name,
//             quantity:quantity_value,
//             unit:"ml",
//             calories:calories_value,
//             calories_unit:"kcal",
//             },
//             image:{

//                 source:image_url,
//                 alt:""
//             },

//             description:description,

//             price:cost,
//             currency:"Rs."
//          }];
//          localStorage.setItem('crud',JSON.stringify(data));

//        }else{
//         arr.push({
//             category:category,
//             // "category_description":category_description,
//             // "description":description,
//             name:name,
//             quantities:{
//                 size_name:size_name,
//             quantity:quantity_value,
//             unit:"ml",
//             calories:calories_value,
//             calories_unit:"kcal",
//             },
//             image:{

//                 source:image_url,
//                 alt:""
//             },

//             description:description,

//             price:cost,
//             currency:"Rs."
//          });
//         localStorage.setItem('crud',JSON.stringify(arr));
//        }

//        document.getElementById('msg').innerHTML = 'data added';
//     }else{
//        let arr=getCrudData();
//        arr[id].name=name;
//        arr[id].category=category;
//        arr[id]["quantities"].size_name=size_name;
//        arr[id]["quantities"].quantity=quantity_value;
//        arr[id]["quantities"].calories=calories_value;
//        arr[id].description=description;
//        arr[id].price=cost;

//        setCrudData(arr);
//        document.getElementById('msg').innerHTML = 'data updated';

//     }
//     document.getElementById("category").value="";
//     document.getElementById("name").value="";
//     document.getElementById("size_name").value="";
//     document.getElementById("quantity_value").value="";
//     document.getElementById("calories_value").value="";
//     document.getElementById("image_url").value="";
//     document.getElementById("description").value="";
//     document.getElementById("cost").value="";
//  }
//    selectData();
// }

// function selectData(){
//     let arr =  JSON.parse(localStorage.getItem('crud'));
//     if(arr!=null){
//         let html="";
//         let sno=1;
//         for(let k in arr){
//             html =html+`<tr><td>${k}</td><td>${arr[k].name}</td>
//             <td>${arr[k].category}</td>
//             <td>${arr[k]["quantities"].size_name}</td>
//             <td>${arr[k]["quantities"].quantity}</td>
//             <td>${arr[k]["quantities"].calories}</td>
//             <td>${arr[k].description}</td>
//             <td>${arr[k].price}</td>
//             <td><a href="javascript:void(0)" onclick="deleteData(${k})">delete</a></td><td><a href="javascript:void(0)" onclick="editData(${k})">edit</a></td></tr>`;
//             // sno++;
//         }
//         document.getElementById('root').innerHTML = html;

//         console.log(html);
//     }
// }

// function editData(rid){
//     id=rid
//     let arr=getCrudData();
//     document.getElementById('name').value=arr[rid].name;
//     document.getElementById('category').value=arr[rid].category;
//     document.getElementById('size_name').value=arr[rid]["quantities"].size_name;
//     document.getElementById('quantity_value').value=arr[rid]["quantities"].quantity;
//     document.getElementById('calories_value').value=arr[rid]["quantities"].calories;
//     document.getElementById('description').value=arr[rid].description;
//     // document.getElementById('calories_value').value=arr[rid].calories_value;
//     document.getElementById('cost').value=arr[rid].price;
// }

// function deleteData(rid){
//     let arr=  getCrudData();
//     arr.splice(rid,1);
//     setCrudData(arr);
//     selectData();
// }

// function getCrudData(){
//     let arr=  JSON.parse(localStorage.getItem('crud'));
//     return arr;
// }

// function setCrudData(arr){
//     localStorage.setItem('crud',JSON.stringify(arr));
//     return arr;
// }

/// /using bakya code

// const form = document.getElementById("form");
// form.addEventListener("submit",submit1);

// function   addData(category,name,size_name,quantity_value,calories_value,description, cost) {

//     let crudTable = document.getElementById("crudTable");

//     let productDetails = document.createElement("tr");

//     let category_td = document.createElement("td");
//     let name_td = document.createElement("td");
//     let size_name_td = document.createElement("td");
//     let  quantity_value_td= document.createElement("td");
//     let calories_value_td = document.createElement("td");
//     let description_td = document.createElement("td");
//     let cost_td= document.createElement("td");
//     let events_td = document.createElement("td");

//     category_td.innerText = category;
//     name_td.innerText =name ;
//     size_name_td.innerText =size_name ;
//     quantity_value_td.innerText = quantity_value;
//     calories_value_td.innerText = calories_value;
//     description_td.innerText = description;
//     cost_td.innerText = cost;

//     let edit_button = document.createElement("button");
//     edit_button.setAttribute("class", "edit_button");
//     edit_button.innerText = "edit";
//     events_td.append(edit_button);

//     let delete_button = document.createElement("button");
//     delete_button.setAttribute("class", "del_button");
//     delete_button.innerText = "delete";
//     events_td.append(delete_button);
//     productDetails.append(category_td,name_td,size_name_td,quantity_value_td,calories_value_td,description_td,cost_td, events_td)
//     crudTable.append(productDetails);

// };
// product_detail_list.forEach(addData);

// // let product_detail_list=JSON.parse(localStorage.getItem('product_detail_list'));

/// ////using bakya code
