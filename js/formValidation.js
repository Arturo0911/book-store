$(document).ready(function () {
    /**
 * @author Arturo Negreiros
 */

    let credentials = document.getElementById('credentials'),
        userName = document.getElementById('names'),
        luserName = document.getElementById('lname'),
        email = document.getElementById('user_email'),
        pass1 = document.getElementById("password1"),
        pass2 = document.getElementById("password2");
    const buttonSubmit = document.getElementById('buttonSubmit');



    /**
    * @param {*} credential 
    * @returns the boolen of "cedula" algorithm
    */
    const credValidator = (credential) => {

        if (credential.length != 10) {
            return false;
        }
        let another = credential.split("").map(function (item) {
            return parseInt(item, 10);
        });

        const thirdDigit = another.slice(2, 3);
        const validator = another.slice(9, 10);

        if (thirdDigit >= 6) {
            return false;
        }

        let finalNumber = 0;
        for (let x = 0; x < credential.length - 1; x++) {
            if (x % 2 == 0) {
                if (another[x] * 2 >= 10) {
                    finalNumber += (another[x] * 2 - 9);
                } else {
                    finalNumber += (another[x] * 2);
                }
            } else {
                finalNumber += another[x];
            }
        }
        console.log(finalNumber)
        return 10 - (finalNumber % 10) == validator;
    }


    /**
    * 
    * @param {*} pass1 
    * @param {*} pass2 
    * @returns the passwords should be the same!!
    */
    const checkPasswords = (pass1, pass2) => {
        return pass1 === pass2;
    }

    /**
    * @param {*} mail 
    * @param {*} name 
    * @param {*} lname 
    * @param {*} credentials 
    * @param {*} password 
    * @returns an object to be send to the database
    */

    const loadParameters = (mail, name, lname, credentials, password) => {
        return {
            "credentials": credentials,
            "name": name,
            "lname": lname,
            "mail": mail,
            "password": password,
        };
    }


    buttonSubmit.addEventListener("click", (event) => {

        if (!checkPasswords(pass1.value, pass2.value)) {
            alert("¡Las contraseñas deben ser las mismas!");
            pass1.value = "";
            pass2.value = "";
        }
        let elements = loadParameters(userName.value, luserName.value,
            credentials.value, email.value, pass1.value);

        // fetch("validation/signup_validation.php", {
        //     method: "POST",
        //     body: JSON.stringify(elements)
        // })
        //     .then(function (response) {
        //         if (response.ok) {
        //             return response.text();
        //         } else {
        //             return "something went wrong!!";
        //         }
        //     })
        $.post('../validation/signup_validation.php', elements, function (response) {
            console.log(response);
        });
        event.preventDefault();
    });

});


