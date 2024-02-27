# flex-box css

[flex-box reference guide](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>flex box</title>
    <style>
        body {
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
        }
        .container {
            display: flex;
            justify-content: stretch;
            /* flex-direction: row; */
            flex-wrap: wrap;
            align-items: flex-start;
            gap: 10px;
        }
        .box {
            width: 200px;
            height: 200px;
            background-color: gray;
        }
    </style>
</head>
<body>
    <div>
        <input type="file" placeholder="upload file" accept="image/png, image/jpeg" multiple>
    </div>
    <hr/>
    <div class="container">
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
        <div class="box">1</div>
        <div class="box">2</div>
        <div class="box">3</div>
    </div>
</body>
</html>
```
