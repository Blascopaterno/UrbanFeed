const mayorSelect = () => {
  const input = document.getElementById('user_mayor');
  if (input) {
    const politician = document.querySelector('.politician');
    const citizen = document.querySelector('.citizen');
    citizen.classList.add("user-mayor-selected");
    politician.addEventListener('click', () => {
      input.value = true;
      politician.classList.add("user-mayor-selected");
      citizen.classList.remove("user-mayor-selected");
    });
    citizen.addEventListener('click', () => {
      input.value = false;
      citizen.classList.add("user-mayor-selected");
      politician.classList.remove("user-mayor-selected");
    });
  }
}
export default mayorSelect;
