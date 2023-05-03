// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

const updateStatus = async (e) => {
  const flag = e.target.checked;
  console.log(flag);
  if (flag) {
    document.getElementById("auto-click").click();
    location.reload();
  }
};

document
  .querySelectorAll(".check-box")
  .forEach((b) => b.addEventListener("click", updateStatus));
