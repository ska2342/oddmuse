# UTF-8 encoded Ukrainian translation file for use with Oddmuse
#
# Copyright (c) 2006  Victor Anyakin <anyakinvictor@yahoo.com>
#
# Permission is granted to copy, distribute and/or modify this
# document under the terms of the GNU Free Documentation License,
# Version 1.2 or any later version published by the Free Software
# Foundation; with no Invariant Sections, no Front-Cover Texts, and no
# Back-Cover Texts.  A copy of the license could be found at:
# http://www.gnu.org/licenses/fdl.txt .
#
# Installation:
# =============
#
# Create a modules subdirectory in your data directory, and put the
# file in there. It will be loaded automatically.
#
use utf8;
use strict;

AddModuleDescription('ukrainian-utf8.pl', 'Ukrainian') if defined &AddModuleDescription;

our %Translate = grep(!/^#/, split(/\n/,<<'END_OF_TRANSLATION'));
################################################################################
# wiki.pl
################################################################################
Reading not allowed: user, ip, or network is blocked.
Не дозволено читати: користувач, IP, або мережа заблоковані.
Login
Ввійти
Error

%s calls

Cannot create %s
Неможливо створити %s
Include normal pages
Включати звичайні сторінки
Invalid UserName %s: not saved.
Неправильне ім'я користувача %s: не збережено
UserName must be 50 characters or less: not saved
Ім'я користувача має бути довжиною не більше 50 символів: не збережено
This page contains an uploaded file:
Ця сторінка містить завантажений файл:
No summary was provided for this file.

Recursive include of %s!
Рекурсивне включення %s!
Clear Cache

Main lock obtained.
Отримано основний замок.
Main lock released.
Знято основний блок.
Journal

More...

Comments on this page
Коментарі до цієї сторінки
XML::RSS is not available on this system.
XML::RSS не доступний на цій системі.
diff
різниця
history
історія
%s returned no data, or LWP::UserAgent is not available.
%s повернув порожню відповідь, або LWP::UserAgent не доступний.
RSS parsing failed for %s
Не вдалось проаналізувати RSS для %s
No items found in %s.
Жодних елементів не знайдено в %s
 . . . .
 . . . .
Click to edit this page
Натисніть щоб відредагувати цю сторінку
CGI Internal error: %s
Внутрішня помилка CGI: %s
Invalid action parameter %s
Неприпустимий параметр дії: %s
Page name is missing
Ім'я сторінки відсутнє
Page name is too long: %s
Ім'я сторінки занадто довге: %s
Invalid Page %s (must not end with .db)
Невірна сторінка %s (має закінчуватись не .db)
Invalid Page %s (must not end with .lck)
Невірна сторінка %s (має закінчуватись не .lck)
Invalid Page %s
Невірна сторінка %s
There are no comments, yet. Be the first to leave a comment!

Welcome!

This page does not exist, but you can %s.

create it now

Too many redirections

No redirection for old revisions

Invalid link pattern for #REDIRECT

Please go on to %s.
Будь ласка, перейдіть на %s.
Updates since %s
Оновлення від %s
up to %s

Updates in the last %s days
Оновлення за останні %s днів
Updates in the last day
Оновлення за останній день
for %s only
тільки для %s
List latest change per page only
Перелічити останні змінни лише по кожній сторінці
List all changes
Перелічити всі зміни
Skip rollbacks

Include rollbacks

List only major changes
Перелічити лише значні зміни
Include minor changes
Включити незначні зміни
days

List later changes
Перелічити пізніші зміни
RSS

RSS with pages

RSS with pages and diff

Filters
Фільтри
Title:

Title and Body:
Заголовок та тіло:
Username:
Ім'я користувача:
Host:
Хост:
Follow up to:

Language:
Мова:
Go!
Вперед!
(minor)
(незначне)
rollback
повернути
new
нове
All changes for %s

This page is too big to send over RSS.
Ця сторінка занадто велика для пересилання через RSS.
History of %s
Історія %s
Compare
Порівняти
Deleted

Mark this page for deletion

No other revisions available

current

Revision %s
Версія %s
Contributors to %s

Missing target for rollback.
Відсутня ціль для скасування змін.
Target for rollback is too far back.
Ціль для скасування змін занадто далека.
A username is required for ordinary users.

Rolling back changes
Скасовую зміни
Editing not allowed: %s is read-only.
Редагування не дозволено: %s тільки для читання.
Rollback of %s would restore banned content.

Rollback to %s
Повернути до %s
%s rolled back
%s скасовані зміни
to %s

Index of all pages
Покажчик зі всіх сторінок
Wiki Version
Версія Вікі
Password
Пароль
Run maintenance
Запустити поточну профілактику
Unlock Wiki
Розблокувати Вікі
Unlock site
Розблокувати сайт
Lock site
Заблокувати сайт
Unlock %s
Розблокувати %s
Lock %s
Заблокувати %s
Administration
Адміністрування
Actions:
Дії:
Important pages:
Важливі сторінки:
To mark a page for deletion, put <strong>%s</strong> on the first line.
Для того, щоб помітити сторінку для видалення, вставте <strong>%s</strong> на першу строчку.
from %s
від %s
redirected from %s
перенаправлено з %s
%s:

[Home]
[Перша сторінка]
Click to search for references to this page
Натисніть для пошуку посилань на цю сторінку
Edit this page
Редагувати цю сторінку
Preview:
Попередній перегляд:
Preview only, not yet saved
Тільки попередній перегляд, ще не збережено
Warning
Попередження
Database is stored in temporary directory %s
База даних зберігається в тимчасовій директорії %s
%s seconds
%s секунд
Last edited
Востаннє відредаговано
Edited
Відредаговано
by %s
%s
(diff)
(різниця)
a

c

Edit revision %s of this page
Редагувати версію %s цієї сторінки
e
e
This page is read-only
Ця сторінка тільки для читання
View other revisions
Дивитись інші версії
View current revision
Дивитись поточну версію
View all changes
Дивитись всі зміни
View contributors

Add your comment here:

Homepage URL:
Стартовий URL:
s
s
Save
Зберегти
p
p
Preview
Переглянути
Search:
Шукати:
f
f
Replace:
Замінити:
Delete

Filter:
Фільтр:
Last edit

revision %s
версія %s
current revision
поточна версія
Difference between revision %1 and %2
Різниця (між версією %1 до %2)
Last major edit (%s)

later minor edits

No diff available.
Різниці не доступні.
Summary:
Підсумок:
Old revision:
Стара версія:
Changed:
Змінено:
Deleted:

Added:
Додано:
to

Revision %s not available
Версія %s не доступна
showing current revision instead
натомість, показано поточну версію
Showing revision %s
Показано версію %s
Cannot save a nameless page.
Не можна зберегти безіменну сторінку.
Cannot save a page without revision.
Не можна зберегти сторінку без версії.
not deleted:

deleted
видалено
Cannot open %s
Неможливо відкрити %s
Cannot write %s
Неможливо записати %s
Could not get %s lock
Не вдалось отримати замок %s
The lock was created %s.
Створенно замок %s
Maybe the user running this script is no longer allowed to remove the lock directory?

Sometimes locks are left behind if a job crashes.

After ten minutes, you could try to unlock the wiki.

This operation may take several seconds...
Операція може тривати декілька секунд...
Forced unlock of %s lock.
Примушено розблокування замка %s
No unlock required.
Розблокування не потрібне.
%s hours ago
%s годин тому
1 hour ago
1 годину тому
%s minutes ago
%s хвилин тому
1 minute ago
1 хвилину тому
%s seconds ago
%s секунд тому
1 second ago
1 секунду тому
just now
тільки що
Only administrators can upload files.
Тільки адміністратори можуть завантажувати файли.
Editing revision %s of
Редагування версії %s
Editing %s
Редагування %s
Editing old revision %s.
Редагування старої версії %s.
Saving this page will replace the latest revision with this text.
Зберігання цієї сторінки замінить останню версію цим текстом.
This change is a minor edit.
Ця зміна є незначною.
Cancel

Replace this file with text
Замінити цей файл текстом
Replace this text with a file
Замінити цей текст файлом
File to upload:
Файл для завантаження:
Files of type %s are not allowed.
Файли типу %s не дозволені.
Your password is saved in a cookie, if you have cookies enabled. Cookies may get lost if you connect from another machine, from another account, or using another software.
Ваш пароль зберігається в кукі, в разі якщо вони у вас дозволені. Кукі можуть втрачатись, якщо ви під'эднаєтесь з іншої машини, іншого облікового запису, або, використовуючі інші програми.
This site does not use admin or editor passwords.
Цей сайт не використовує паролі адміністратора або редактора.
You are currently an administrator on this site.
Наразі, ви адміністратор цього сайта.
You are currently an editor on this site.
Наразі, ви редактор на цьому сайті.
You are a normal user on this site.
Ви звичайний користувач сайту.
You do not have a password set.

Your password does not match any of the administrator or editor passwords.
Ваш пароль не збігається ні з паролєм адміністратора, ні з паролєм редактора.
Password:
Пароль:
Return to %s

This operation is restricted to site editors only...
Операцію дозволено виконувати лише редакторам...
This operation is restricted to administrators only...
Операцію дозволено виконувати лише адміністраторам...
Edit Denied
Редагування заборонено
Editing not allowed: user, ip, or network is blocked.
Редагування заборонено: користувач, IP, або мережа заблоковані.
Contact the wiki administrator for more information.
Зверніться до адміністратора Вікі за додатковою інформацією.
The rule %s matched for you.
Правило %s співпало.
See %s for more information.
Дивіться %s для додаткової інформації.
SampleUndefinedPage

Sample_Undefined_Page

Rule "%1" matched "%2" on this page.
На цій сторінці "%2" відповідає правилу "%1"
Reason: %s.

Reason unknown.

(for %s)
(для %s)
%s pages found.
%s сторінок знайдено.
Preview: %s

Replaced: %s
Замінено: %s
Search for: %s
Шукати: %s
View changes for these pages
Переглянути зміни на ції сторінках
last updated
востаннє оновлено
by

Transfer Error: %s
Помилка при передачі даних: %s
Browser reports no file info.
Глядач не повідомляє інформацію про файл.
Browser reports no file type.
Глядач не повідомляє про тип файлу.
The page contains banned text.
Сторінка містить заборонений текст.
No changes to be saved.
Відсутні зміни для збереження.
This page was changed by somebody else %s.
Цю сторінку було змінено ким то іншим %s.
The changes conflict.  Please check the page again.
Зміни конфліктують. Будь ласка, перевірте цю сторінку ще раз.
Please check whether you overwrote those changes.
Будь ласка, перевірте, чи перезаписали ви ці зміни.
Anonymous
Анонім
Cannot delete the index file %s.
Не можу видалити файл з покажчиком %s.
Please check the directory permissions.
Будь ласка, перевірте права доступа до директорії.
Your changes were not saved.
Зміни не збережено.
Could not get a lock to merge!
Не вдалось отримати замок для злияння!
you
ви
ancestor
попередник
other
інший
Run Maintenance
Запустити поточну профілактику
Maintenance not done.
Поточна профілактика не виконана.
(Maintenance can only be done once every 12 hours.)
(Поточна профілактика може запускатись кожні 12 годин.)
Remove the "maintain" file or wait.
Видаліть файл "maintain" або зачекайте.
Expiring keep files and deleting pages marked for deletion

Moving part of the %s log file.
Переміщення частини файлу журанала %s.
Could not open %s log file
Не вдалось відкрити файл протоколювання %s
Error was
Помилка була
Note: This error is normal if no changes have been made.
Примітка: Ця помилка припустима, якщо не було зроблено жодних змін.
Moving %s log entries.

Set or Remove global edit lock
Встановити або Видалити глобальний блок редагування
Edit lock created.
Створенно блок на редагування.
Edit lock removed.
Видалено блок на редагування.
Set or Remove page edit lock
Встановити або Видалити блок на редагування сторінки
Lock for %s created.
Створено блок для %s.
Lock for %s removed.
Видалено блок для %s.
Displaying Wiki Version
Показую версію Вікі
Debugging Information

Too many connections by %s
Забагато з'єднаннь від %s
Please do not fetch more than %1 pages in %2 seconds.
Будь ласка, не зчитуйте більше ніж %1 сторінок за %2 секунд.
Check whether the web server can create the directory %s and whether it can create files in it.
Перевірте, чи може веб сервер створити директорію %s і чи може він створювати в ній файли.
, see

The two revisions are the same.
Дві версії однакові.
################################################################################
# modules/admin.pl
################################################################################
Deleting %s
Видаляється %s
Deleted %s
Видалено %s
Renaming %1 to %2.
Переіменування %1 на %2
The page %s does not exist
Сторінка %s не існує
The page %s already exists
Сторінка %s вже існує
Cannot rename %1 to %2
Не можу переіменувати %1 на %2
Renamed to %s
Змінено ім'я на %s
Renamed from %s
Перейменовано з %s
Renamed %1 to %2.
Змінено ім'я %1 на %2.
Immediately delete %s
Одразу видалити %s
Rename %s to:
Змінити ім'я %s на:
################################################################################
# modules/advanced-uploads.pl
################################################################################
Attach file:

Upload

################################################################################
# modules/aggregate.pl
################################################################################
Learn more...
Дізнатись більше...
################################################################################
# modules/all.pl
################################################################################
Complete Content
Повний зміст
The main page is %s.
%s - основна сторінка.
################################################################################
# modules/archive.pl
################################################################################
Archive:

################################################################################
# modules/backlinkage.pl
################################################################################
Rebuild BackLink database

Internal Page: %s

Pages that link to this page

################################################################################
# modules/backlinks.pl
################################################################################
The search parameter is missing.

Pages link to %s

################################################################################
# modules/ban-contributors.pl
################################################################################
Ban contributors

Ban Contributors to %s

Ban!

Regular expression:

%s is banned

These URLs were rolled back. Perhaps you want to add a regular expression to %s?

Consider banning the IP number as well:

################################################################################
# modules/banned-regexps.pl
################################################################################
Regular expression "%1" matched "%2" on this page.

Regular expression "%s" matched on this page.

################################################################################
# modules/big-brother.pl
################################################################################
Recent Visitors
Нещодавні відвідувачі
some action

was here

and read

################################################################################
# modules/calendar.pl
################################################################################
Illegal year value: Use 0001-9999
Неприпустиме значення року: Використовуйте 0001-9999
The match parameter is missing.
Відсутній параметр для пошука.
Page Collection for %s
Колекція сторінок для %s
Previous
Попередня
Next
Наступна
Calendar %s
Календар %s
Su
Нд
Mo
Пн
Tu
Вт
We
Ср
Th
Чт
Fr
Пт
Sa
Сб
January
Січень
February
Лютий
March
Березень
April
Квітень
May
Травень
June
Червень
July
Липень
August
Серпень
September
Вересень
October
Жовтень
November
Листопад
December
Грудень
################################################################################
# modules/checkbox.pl
################################################################################
set %s

unset %s

################################################################################
# modules/clustermap.pl
################################################################################
Clustermap

Pages without a Cluster

################################################################################
# modules/comment-div-wrapper.pl
################################################################################
Comments:

################################################################################
# modules/commentcount.pl
################################################################################
Comments on
Коментарі до
Comment on
Коментувати
################################################################################
# modules/compilation.pl
################################################################################
Compilation for %s
Компіляція для %s
Compilation tag is missing a regular expression.

################################################################################
# modules/creationdate.pl
################################################################################
Add creation date to page files

################################################################################
# modules/css-install.pl
################################################################################
Install CSS
Встановити CSS
Copy one of the following stylesheets to %s:
Копіювати одну із наступний таблиць стилей в %s:
Reset

################################################################################
# modules/dates.pl
################################################################################
Extract all dates from the database

Dates

No dates found.

################################################################################
# modules/despam.pl
################################################################################
List spammed pages

Despamming pages

Spammed pages

Cannot find revision %s.
Не можу знайти версію %s.
Revert to revision %1: %2
Повернути до версії %1: %2
Marked as %s.
Помічено як %s
Cannot find unspammed revision.

################################################################################
# modules/diff.pl
################################################################################
Page diff

Diff

################################################################################
# modules/drafts.pl
################################################################################
Recover Draft

No text to save

Draft saved

Draft recovered

No draft available to recover

Save Draft

Draft Cleanup

Unable to delete draft %s

%1 was last modified %2 and was kept

%1 was last modified %2 and was deleted

################################################################################
# modules/dynamic-comments.pl
################################################################################
Add Comment
Додати коментар
################################################################################
# modules/edit-cluster.pl
################################################################################
ordinary changes
звичайні зміни
%s days
%s днів
################################################################################
# modules/edit-paragraphs.pl
################################################################################
Could not identify the paragraph you were editing

This is the section you edited:

This is the current page:

################################################################################
# modules/find.pl
################################################################################
Matching page names:

################################################################################
# modules/fix-encoding.pl
################################################################################
Fix character encoding

Fix HTML escapes

################################################################################
# modules/form_timeout.pl
################################################################################
Set $FormTimeoutSalt.

Form Timeout

################################################################################
# modules/gd_security_image.pl
################################################################################
GD or Image::Magick modules not available.

GD::SecurityImage module not available.

Image storing failed. (%s)

Bad gd_security_image_id.

Please type the six characters from the anti-spam image

Submit

CAPTCHA

You did not answer correctly.
Ви відповили невірно.
$GdSecurityImageFont is not set.

################################################################################
# modules/git-another.pl
################################################################################
No summary provided

################################################################################
# modules/git.pl
################################################################################
no summary available

page was marked for deletion

Oddmuse

Cleaning up git repository

################################################################################
# modules/google-plus-one.pl
################################################################################
Google +1 Buttons

All Pages +1

This page lists the twenty last diary entries and their +1 buttons.

################################################################################
# modules/gravatar.pl
################################################################################
Email:

################################################################################
# modules/header-and-footer-templates.pl
################################################################################
Could not find %1.html template in %2
Не вдалось знайти шаблон %1.html в %2
################################################################################
# modules/hiddenpages.pl
################################################################################
Only Editors are allowed to see this hidden page.
Тільки Редакторам дозволено бачити цю приховану сторінку.
Only Admins are allowed to see this hidden page.
Тільки Адміністраторам дозволено бачити цю приховану сторінку.
################################################################################
# modules/index.pl
################################################################################
Index
Покажчик
################################################################################
# modules/joiner.pl
################################################################################
The username %s already exists.

The email address %s has already been used.

Wait %s minutes before try again.

Registration Confirmation

Visit the link below to confirm registration.

Recover Account

You can login by following the link below. Then set new password.

Change Email Address

To confirm changing email address, follow the link below.

To submit this form you must answer this question:

Question:

CAPTCHA:

Registration

The username must be valid page name.

Confirmation email will be sent to the email address.

Repeat Password:

Bad email address format.

Password needs to have at least %s characters.

Passwords differ.

Email Sent

Confirmation email has been sent to %s. Visit the link on the mail to confirm registration.

Failed to Confirm Registration

Invalid key.

The key expired.

Registration Confirmed

Now, you can login by using username and password.

Forgot your password?
Забули пароль?
Login failed.

You are banned.

You must confirm email address.

Logged in

%s has logged in.

You should set new password immediately.

Change Password

Logged out

%s has logged out.

Account Settings

Logout
Вийти
Current Password:

New Password:

Repeat New Password:

Password is wrong.

Password Changed

Your password has been changed.
Ваш пароль було змінено.
Forgot Password

Enter email address, and recovery login ticket will be sent.

Not found.

The mail address is not valid anymore.

An email has been sent to %s with further instructions.

New Email Address:

Failed to load account.

An email has been sent to %s with a login ticket.

Confirmation Failed

Failed to confirm.

Email Address Changed

Email address for %1 has been changed to %2.

Account Management

Ban Account

Enter username of the account to ban:

Ban

Enter username of the account to unban:

Unban

%s is already banned.

%s has been banned.

%s is not banned.

%s has been unbanned.

Register

################################################################################
# modules/lang.pl
################################################################################
Languages:
Мови:
Show!
Показати:
################################################################################
# modules/like.pl
################################################################################
====(\d+) persons? liked this====

====%d persons liked this====

====1 person liked this====

I like this!

################################################################################
# modules/link-all.pl
################################################################################
Define
Визначити
################################################################################
# modules/links.pl
################################################################################
Full Link List
Повний перелік посилань
################################################################################
# modules/list-banned-content.pl
################################################################################
Banned Content

Rule "%1" matched on this page.

################################################################################
# modules/listlocked.pl
################################################################################
List of locked pages

################################################################################
# modules/listtags.pl
################################################################################
Pages tagged with %s

################################################################################
# modules/live-templates.pl
################################################################################
Template without parameters
Шаблон без параметрів
The template %s is either empty or does not exist.
Шаблон %s або порожній, або не існує.
################################################################################
# modules/localnames.pl
################################################################################
Name:

URL:

Define Local Names

Define external redirect:

 -- defined on %s
 -- визначено в %s
Local names defined on %1: %2
Локальні імена визначено в %1: %2
################################################################################
# modules/logbannedcontent.pl
################################################################################
IP number matched %s

################################################################################
# modules/login.pl
################################################################################
Register for %s
Зареєструвати для %s
Please choose a username of the form "FirstLast" using your real name.
Будь ласка, вкажіть ім'я користувача у вигляді "Ім'яПрізвище" використовуючі власні імена.
The passwords do not match.
Паролі не збігаються.
The password must be at least %s characters.
Пароль має містити щонайменше %s символів.
That email address is invalid.
Адреса поштової скриньки невірна.
The username %s has already been registered.
Користувач з ім'ям %s вже зареєстрований.
Your registration for %s has been submitted.

Please allow time for the webmaster to approve your request.

An email has been sent to "%s" with further instructions.
Повідомлення було відправлено "%s" з поадльшими інструціями.
There was an error saving your registration.
Виникла помилка при збереженні вашої реєстрації.
An account was created for %s.
Було створено обліковий запис для %s.
Login to %s
Увійти в систему %s
Username and/or password are incorrect.
Ім'я користувача та/або пароль не вірні.
Logged in as %s.
Зроблено вхід в систему як %s.
Logout of %s
Вийти з %s
Logout of %s?
Вийти з %s?
Logged out of %s
Зроблено вихід із %s
You are now logged out.
Тепер ви вийшли із системи.
Register a new account
Зареєструвати новий обліковий запис
Who am I?
Хто я?
Change your password
Змініть свій пароль
Approve pending registrations

Confirm Registration for %s
Підтвердіть реєстрацію для %s
%s, your registration has been approved. You can now use your password to login and edit this wiki.

Confirmation failed.  Please email %s for help.

Who Am I?
Хто я?
You are logged in as %s.
Ви увійшли як %s.
You are not logged in.
Ви не увішли в систему.
Reset Password
Скинути пароль.
The password for %s was reset.  It has been emailed to the address on file.

There was an error resetting the password for %s.

The username "%s" does not exist.
Користувача з іменем "%s" не існує.
Reset Password for %s

Reset Password?

Change Password for %s
Змінити пароль для %s
Change Password?
Змінити пароль?
Your current password is incorrect.
Ваш поточний пароль не вірний.
Approve Pending Registrations for %s

%s has been approved.

There was an error approving %s.

There are no pending registrations.

################################################################################
# modules/mail.pl
################################################################################
Invalid Mail %s: not saved.

unsubscribe

subscribe

%s appears to be an invalid mail address

Your mail subscriptions

All mail subscriptions

Subscriptions

Email: 

Show

Subscriptions for %s:

Unsubscribe

There are no subscriptions for %s.

Change email address

Mail addresses are linked to unsubscription links.

Subscribe to %s.

Subscribe

Subscribed %s to the following pages:

The remaining pages do not exist.

Unsubscribed %s from the following pages:

Migrating Subscriptions

No non-migrated email addresses found, migration not necessary.

Migrated %s rows.

################################################################################
# modules/module-bisect.pl
################################################################################
Bisect modules

Module Bisect

All modules enabled now!

Go back

Test / Always enabled / Always disabled

Start

Bisecting proccess is already active.

Stop

It seems like module %s is causing your problem.

Please note that this module does not handle situations when your problem is caused by a combination of specific modules (which is rare anyway).

Good luck fixing your problem! ;)

Module count (only testable modules):

Current module statuses:

Good

Bad

Enabling %s

################################################################################
# modules/module-updater.pl
################################################################################
Update modules

Module Updater

Looks good. Update modules now!

################################################################################
# modules/multi-url-spam-block.pl
################################################################################
You linked more than %s times to the same domain. It would seem that only a spammer would do this. Your edit is refused.

################################################################################
# modules/namespaces.pl
################################################################################
%s is not a legal name for a namespace

Namespaces

################################################################################
# modules/near-links.pl
################################################################################
Getting page index file for %s.

Near links:
Ближні посилання:
Search sites on the %s as well
Шукати також сайти в %s
Fetching results from %s:
Отримую результати від %s:
Near pages:
Подібні сторінки:
Include near pages
Разом з близькими сторінками
EditNearLinks

The same page on other sites:
Ця сторінка на інших сайтах:
################################################################################
# modules/nearlink-create.pl
################################################################################
 (create locally)

################################################################################
# modules/no-question-mark.pl
################################################################################
image
зображення
download
завантажити
################################################################################
# modules/nosearch.pl
################################################################################
Backlinks

################################################################################
# modules/not-found-handler.pl
################################################################################
Clearing Cache
Очещення кешу
Done.
Зроблено.
Generating Link Database
Генерую базу даних посилань
The 404 handler extension requires the link data extension (links.pl).

################################################################################
# modules/offline.pl
################################################################################
Make available offline

Offline

You are currently offline and what you requested is not part of the offline application. You need to be online to do this.

################################################################################
# modules/olocalmap.pl
################################################################################
LocalMap

No page id for action localmap

Requested page %s does not exist

Local Map for %s

view
дивитись
################################################################################
# modules/open-proxy.pl
################################################################################
Self-ban by %s

You have banned your own IP.
Ви заборонили власний IP.
################################################################################
# modules/orphans.pl
################################################################################
Orphan List

################################################################################
# modules/page-trail.pl
################################################################################
Trail:
Слід:
################################################################################
# modules/page-type.pl
################################################################################
None
Немає
Type
Тип
################################################################################
# modules/paragraph-link.pl
################################################################################
Permalink to "%s"
Постійне посилання на "%s"
anchor first defined here: %s
якір вперше визначається тут: %s
the page %s also exists
сторінка %s також існує
################################################################################
# modules/permanent-anchors.pl
################################################################################
Click to search for references to this permanent anchor
Клацніть щоб шукати посилання на цей постійний якір
Include permanent anchors
Включити постійні якорі
################################################################################
# modules/portrait-support.pl
################################################################################
Portrait

################################################################################
# modules/preview.pl
################################################################################
Pages with changed HTML

Preview changes in HTML output

################################################################################
# modules/private-pages.pl
################################################################################
This page is password protected. If you know the password, you can %s. Once you have done that, return and reload this page.

supply the password now

################################################################################
# modules/private-wiki.pl
################################################################################
This error should not happen. If your password is set correctly and you are still seeing this message, then it is a bug, please report it. If you are just a stranger and trying to get unsolicited access, then keep in mind that all of the data is encrypted with AES-256 and the key is not stored on the server, good luck.

Attempt to read encrypted data without a password.

Cannot refresh index.

################################################################################
# modules/publish.pl
################################################################################
Publish %s

No target wiki was specified in the config file.

The target wiki was misconfigured.

################################################################################
# modules/put.pl
################################################################################
Upload is limited to %s bytes

################################################################################
# modules/questionasker.pl
################################################################################
To save this page you must answer this question:

################################################################################
# modules/recaptcha.pl
################################################################################
Please type the following two words:

Please answer this captcha:

################################################################################
# modules/referrer-rss.pl
################################################################################
Referrers

################################################################################
# modules/referrer-tracking.pl
################################################################################
All Referrers

################################################################################
# modules/search-list.pl
################################################################################
Page list for %s

################################################################################
# modules/small.pl
################################################################################
Index of all small pages

################################################################################
# modules/sort.pl
################################################################################
Sort alphabetically

Sorted alphabetically

Sorted by last update first

Sort by last update

Sorted by creation date

Sort by creation date

################################################################################
# modules/static-copy.pl
################################################################################
Static Copy
Статична копія
Back to %s
Назад до %s
################################################################################
# modules/static-hybrid.pl
################################################################################
Editing not allowed for %s.
Редагування не дозволено для %s.
################################################################################
# modules/svg-edit.pl
################################################################################
Edit image in the browser

Summary of your changes:

################################################################################
# modules/sync.pl
################################################################################
Copy to %1 succeeded: %2.
Копіювання в %1 виконано: %2.
Copy to %1 failed: %2.
Не вдалось скопіювати в %1: %2
################################################################################
# modules/tags.pl
################################################################################
Tag

Feed for this tag

Tag Cloud

Rebuilding index not done.
Перебудова покажника не виконана.
(Rebuilding the index can only be done once every 12 hours.)

Rebuild tag index

list tags

tag cloud

################################################################################
# modules/templates.pl
################################################################################
Alternatively, use one of the following templates:
Як варіант, використовуйте один із наступних шаблонів:
################################################################################
# modules/throttle.pl
################################################################################
Too many instances.  Only %s allowed.

Please try again later. Perhaps somebody is running maintenance or doing a long search. Unfortunately the site has limited resources, and so we must ask you for a bit of patience.

################################################################################
# modules/thumbs.pl
################################################################################
thumb

Error creating thumbnail from nonexisting page %s.

Can not create thumbnail for file type %s.

Can not create thumbnail for a text document

Can not create path for thumbnail - %s

Could not open %s for writing whilst trying to save image before creating thumbnail. Check write permissions.

Failed to run %1 to create thumbnail: %2

%s ran into an error

%s produced no output

Failed to parse %s.

################################################################################
# modules/timezone.pl
################################################################################
Timezone

Pick your timezone:

Set

################################################################################
# modules/toc-headers.pl
################################################################################
Contents
Зміст
################################################################################
# modules/today.pl
################################################################################
Create a new page for today

################################################################################
# modules/translation-links.pl
################################################################################
Add Translation

Added translation: %1 (%2)

Translate %s

Thank you for writing a translation of %s.

Please indicate what language you will be using.

Language is missing

Suggested languages:

Please indicate a page name for the translation of %s.

More help may be available here: %s.

Translated page:

Please provide a different page name for the translation.

################################################################################
# modules/translations.pl
################################################################################
This page is a translation of %s.
Ця сторінка є перекладом %s.
The translation is up to date.
Переклад відповідає останній версії.
The translation is outdated.
Переклад застарів.
The page does not exist.
Сторінка не існує
################################################################################
# modules/upgrade.pl
################################################################################
Upgrading Database

Did the previous upgrade end with an error? A lock was left behind.

Unlock wiki

Upgrade complete.

Upgrade complete. Please remove $ModuleDir/upgade.pl, now.

################################################################################
# modules/usemod.pl
################################################################################
http://search.barnesandnoble.com/booksearch/isbninquiry.asp?ISBN=%s

http://www.amazon.com/exec/obidos/ISBN=%s

alternate
альтернативний
http://www.pricescan.com/books/BookDetail.asp?isbn=%s

search
пошук
################################################################################
# modules/wanted.pl
################################################################################
Wanted Pages

%s pages

%s, referenced from:

################################################################################
# modules/webapp.pl
################################################################################
Web application for offline browsing

################################################################################
# modules/webdav.pl
################################################################################
Upload of %s file
Завантаження файла %s
################################################################################
# modules/weblog-1.pl
################################################################################
Blog
Блог
################################################################################
# modules/weblog-3.pl
################################################################################
Matching pages:

New
Нова
Edit %s.
Редагувати %s.
################################################################################
# modules/weblog-4.pl
################################################################################
Tags:

#
END_OF_TRANSLATION
