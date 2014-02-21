echo "Введіть номер студента:" 
read number

# Встановити псевдонім для репозиторію для доступу через SSH
git remote set-url origin git@github.com:zhornyk/testrepo.git

# git push буде пушити тільки поточний бранч
git config push.default simple

# Встановити ім'я студента
git config user.name "Student $number"

# Створити новий бранч для нього
git checkout -b student$number

# Тест push і встановлення поточного бранча по замовчуванню
git push --set-upstream origin student$number

echo "Ініціалізація закінчена"