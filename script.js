// const apiKey = '25c691558fdc45778ea7e687c8530649 ';
// const searchbar = document.getElementById('searchbar');
// const searchInput = document.getElementById('search-input');
// const resultsContainer = document.getElementById('results');

// searchbar.addEventListener('submit', (event) => {
//   event.preventDefault();
//   const searchQuery = searchInput.value.trim();
//   if (searchQuery !== searchInput) {
//     searchRecipes(searchQuery);
//   }
// });

// async function searchRecipes(query) {
//   const apiUrl = `https://api.spoonacular.com/recipes/complexSearch?apiKey=${apiKey}&query=${query}&number=10`;
  
//   try {
//     const response = await fetch(apiUrl);
//     const data = await response.json();
//     displayResults(data.results);
//   } catch (error) {
//     console.error('Error fetching data:', error);
//   }
// }

// function displayResults(recipes) {
//   resultsContainer.innerHTML = '';
//   if (recipes.length === 0) {
//     resultsContainer.innerHTML = 'No recipes found.';
//     return;
//   }
  
//   recipes.forEach((recipe) => {
//     const recipeCard = createRecipeCard(recipe);
//     resultsContainer.appendChild(recipeCard);
//   });
// }



// function createRecipeCard(recipeData) {
//     const recipeCard = document.createElement("div");
//     recipeCard.classList.add("recipe-card");
  
//     const title = document.createElement("h2");
//     title.classList.add("recipe-title");
//     title.textContent = recipeData.title;
  
//     const ingredient = document.createElement("ul");
//     ingredient.classList.add("recipe-ingredient");
//     recipeData.extendedIngredient.forEach((ingredient) => {
//       const listItem = document.createElement("li");
//       listItem.textContent = ingredient.original;
//       ingredient.appendChild(listItem);
//     });
  
//     const instruction = document.createElement("ol");
//     instruction.classList.add("recipe-instruction");
//     recipeData.analyzedInstruction[0].steps.forEach((step) => {
//       const listItem = document.createElement("li");
//       listItem.textContent = step.step;
//       instruction.appendChild(listItem);
//     });
  
//     recipeCard.appendChild(title);
//     recipeCard.appendChild(ingredient);
//     recipeCard.appendChild(instruction);
  
//     return recipeCard;
//   }







function validation(){
var title = document.getElement('Recipetitle').Value;
var recipeCategorie = document.getElementById('selectcontent').Value;
var caloriecount = document.getElementById('caloriecount').Value;
var calorietime = document.getElementById('calorietime').Value;
var Description = document.getElementById('Description').Value;




if (title === "") {
  title.innerHTML = "**Please provide a value**";
  return false;
}

if (typeof title.value === 'number') {
  title.innerHTML = "**Your details need to be words**";
  return false;
}

if (caloriecount =="")
{
  caloriecount.innerHTML="**please provide a value**"
  return false;
}
if (calorietime =="")
{
  calorietime.innerHTML="**please provide a value**"
  return false;
}
if (Description =="")
{
  Description.innerHTML="**please provide a value**"
  return false;
}
}
function send(validation) {
  if (validation()) {
    console.log("Sending data...");
    // Here you can add the actual logic to send data to the server or perform other actions
  } else {
    console.log("Validation failed. Data not sent.");
  }
}