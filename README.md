# ios localize demo
localization sample using NSLocalizedString

For example, add Japanese file.

## procedure
### Add Localizable.string file
add new file

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.20.22.png)

naming "Localizable.strings".

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.20.59.png)

push "Localize..." button

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.21.31.png)

push "+" button

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.22.31.png)

select only "Localizable.strings"

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.23.02.png)

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.23.10.png)

Here it is.

![](https://github.com/sahara-ooga/ios_localize_demo/raw/image/images/スクリーンショット%202017-11-01%2013.23.36.png)

### Write and use phrases
Add phrases.

```
//Localizable.strings(English)
"welcome" = "Hello, World!";
"name" = "Your name is %@.";
"numbers" = "one: %d, two: %d";
"words" = "one: %1$@, two: %2$@";
```

```
//Localizable.strings(Japanese)
"welcome" = "ハローワールド！";
"name" = "あなたの名前は %@ です。";
"numbers" = "壱: %d, 弐: %d";
"words" = "弐: %2$@, 壱: %1$@";
```

Use phrases.

```
print(NSLocalizedString("welcome", comment: ""))
print(String(format: NSLocalizedString("name", comment: ""), myName))
print(String(format: NSLocalizedString("numbers", comment: ""), 10, 20))
print(String(format: NSLocalizedString("words", comment: ""), "Apple", "Mac"))
```

### Results
In Japanese environment

```
ハローワールド！
あなたの名前は sim です。
壱: 10, 弐: 20
弐: Mac, 壱: Apple
```
         
Others

```
Hello, World!
Your name is sim.
one: 10, two: 20
one: Apple, two: Mac
```