const apiKey = '25c691558fdc45778ea7e687c8530649 ';
const searchbar = document.getElementById('searchbar');
const searchInput = document.getElementById('search-input');
const resultsContainer = document.getElementById('results');

searchbar.addEventListener('submit', (event) => {
  event.preventDefault();
  const searchQuery = searchInput.value.trim();
  if (searchQuery !== searchInput) {
    searchRecipes(searchQuery);
  }
});

async function searchRecipes(query) {
  const apiUrl = `https://api.spoonacular.com/recipes/complexSearch?apiKey=${apiKey}&query=${query}&number=10`;
  
  try {
    const response = await fetch(apiUrl);
    const data = await response.json();
    displayResults(data.results);
  } catch (error) {
    console.error('Error fetching data:', error);
  }
}

function displayResults(recipes) {
  resultsContainer.innerHTML = '';
  if (recipes.length === 0) {
    resultsContainer.innerHTML = 'No recipes found.';
    return;
  }
  
  recipes.forEach((recipe) => {
    const recipeCard = createRecipeCard(recipe);
    resultsContainer.appendChild(recipeCard);
  });
}



function createRecipeCard(recipeData) {
    const recipeCard = document.createElement("div");
    recipeCard.classList.add("recipe-card");
  
    const title = document.createElement("h2");
    title.classList.add("recipe-title");
    title.textContent = recipeData.title;
  
    const ingredient = document.createElement("ul");
    ingredient.classList.add("recipe-ingredient");
    recipeData.extendedIngredient.forEach((ingredient) => {
      const listItem = document.createElement("li");
      listItem.textContent = ingredient.original;
      ingredient.appendChild(listItem);
    });
  
    const instruction = document.createElement("ol");
    instruction.classList.add("recipe-instruction");
    recipeData.analyzedInstruction[0].steps.forEach((step) => {
      const listItem = document.createElement("li");
      listItem.textContent = step.step;
      instruction.appendChild(listItem);
    });
  
    recipeCard.appendChild(title);
    recipeCard.appendChild(ingredient);
    recipeCard.appendChild(instruction);
  
    return recipeCard;
  }