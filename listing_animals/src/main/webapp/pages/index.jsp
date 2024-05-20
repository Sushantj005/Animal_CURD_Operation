<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Animal Information Form</title>
</head>
<body>
    <div class="container">
        <form action="savedata" method="post" enctype="multipart/form-data">
            <h2>Animal form</h2>
           
          <label for="name">Name:</label>
   			 <input type="text" id="name" name="name" required>

          <label for="category" >Category:</label>
   		 	<select id="category" name="category">
       	 		<option value="Mammals">Mammals</option>
        		<option value="Birds">Birds</option>
        		<option value="Fish">Fish</option>
       			<option value="Reptiles">Reptiles</option>
		 	</select>
    
    	 <label for="image">Image:</label>
    		<input type="file" id="image" name="image" required>
    

		<label for="description">Description:</label>
   			 <textarea id="description" name="description" required></textarea>

        <label for="lifeExpectancy">Life Expectancy:</label>
   			 <select id="lifeExpectancy" name="lifeExpectancy">
       			<option value="2-5">2-5 years</option>
       			<option value="5-10">5-10 years</option>
     			<option value="10-15">10-15 years</option>
        		<option value="15-20">15-20 years</option>
        	</select>
    
     	<label for="captcha">Captcha: What is 8-3?</label>
    		<input type="text" id="captcha" name="captcha" required>
    
    

            <button type="submit">SUBMIT</button>
        </form>
    </div>
</body>
</html>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 8px;
}

input {
    padding: 8px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    padding: 10px;
    background-color: #3498db;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #2980b9;
}

</style>
