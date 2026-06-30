# تشغيل مرة واحدة لنشر اللوحة على GitHub Pages (يتطلب gh مسجّل الدخول)
# Run once to publish the dashboard to GitHub Pages.
gh repo create hotel-bookings-dashboard --public --source=. --push --description "Hotel bookings analytics dashboard"
$owner = (gh api user --jq .login)
gh api -X POST "repos/$owner/hotel-bookings-dashboard/pages" -f "source[branch]=main" -f "source[path]=/"
Write-Output "Live in ~1 min at: https://$owner.github.io/hotel-bookings-dashboard/"
