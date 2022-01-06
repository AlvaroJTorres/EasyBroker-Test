// const user_name = document.getElementById("name");
// const phone = document.getElementById("phone");
// const email = document.getElementById("email");
// const source = document.getElementById("source");
const submit = document.querySelector(".submit");

function prinetError(elemId, msg) {
  document.getElementById(elemId).innerHTML = msg;
}

// document.addEventListener("click", (e) => {
//   if (e.target == submit) {
//     console.log("AQUIIIIIIIIIIIIIIIII");
//     console.log(e);
//   }
// });

function validateInfo() {
  const user_name = document.getElementById("name");

  let nameErr = true;

  if (!/\p{L}+/.test(user_name.value)) {
    printError("nameErr", "Favor solo ingresar letras para su nombre(s)");
  }

  // if (!/[0-9]+/.test(phone.value)) {
  //   errors.phone = "Favor solo ingresar dígitos para su número";
  // }

  // if (!/\S+@\S+\.\S+/.test(email.value)) {
  //   errors.email = "El email es inválido";
  // }

  // if (!/^\p{L}+[.]\p{L}+$/.test(source.value)) {
  //   errors.source = "Favor de ingresar una dirección web";
  // }
}
