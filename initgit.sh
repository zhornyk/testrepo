echo "Введіть номер студента:" 
read number

# Встановити псевдонім для репозиторію для доступу через SSH
# git remote set-url origin git@github.com:astoundcommerce/ittc-practice.git

# Встановити логін і пароль до хоста
echo "machine github.com login zhornyk password 1serwergithub" > ~/.netrc

# git push буде пушити тільки поточний бранч
git config push.default simple

# Встановити ім'я та емейл студента
git config user.name "Student $number"
git config user.email "itcc.wdtu.student+$number@gmail.com"

# Створити новий бранч для нього
git checkout -b student$number

#Оновити дані з репозиторію (якщо такий бранч вже існує)
git pull origin student$number

# Тест push і встановлення поточного бранча по замовчуванню
git push --set-upstream origin student$number

echo "Ініціалізація закінчена"

# Видалення цього файлу після завершення налаштувань
# rm $0