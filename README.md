Final Grid it's a css library to position elements
easily, it's works by using float left elements linked 
to auto described positions

### Understanding the order
each div goes from left to right then from top to button then left to right 

in these example we put one div on side of each other, these lib don't use margins,padding 
or what ever , since its consider hard to understand, to create margins, just create an 
empty div between divs

[link to example](https://ouisolutions.github.io/finalGrid/examples/put_a_div_right_to_other.html)


```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>



<div class="finalGridRoot">

    <div class="set-50-percent-for-width set-30-percent-for-height yellow">
        <div class="set-10-percent-for-width set-100-percent-for-height "></div>
        <div class="set-30-percent-for-width set-100-percent-for-height blue"></div>
        <div class="set-10-percent-for-width set-100-percent-for-height "></div>
        <div class="set-30-percent-for-width set-100-percent-for-height red"></div>
    </div>

</div>

</body>
</html>
```

### Horizontally centralizing a div 
to vertically centralize a div horizontally just create a container,
then set 2 empty divs in the middle of it, with the half percent of the rest of the div size

[link to example](https://ouisolutions.github.io/finalGrid/examples/horizontal_centralization.html)


```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>


<div class="finalGridRoot">

    <div class="set-30-percent-for-width set-30-percent-for-height red">
        <div class="set-33-percent-for-width set-100-percent-for-height"></div>
        <div class="set-33-percent-for-width set-100-percent-for-height blue"></div>
        <div class="set-33-percent-for-width set-100-percent-for-height"></div>
    </div>

</div>


</body>
</html>
```

### Vertically centralizing a lib 

to vertically centralize a div, you can make the same process but from vertical

[link to example](https://ouisolutions.github.io/finalGrid/examples/vertical_centralization.html)

```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>

<div class="finalGridRoot">

    <div class="set-30-percent-for-width set-30-percent-for-height red">
        <div class="set-100-percent-for-width set-33-percent-for-height"></div>
        <div class="set-100-percent-for-width set-33-percent-for-height blue"></div>
        <div class="set-100-percent-for-width set-33-percent-for-height"></div>
    </div>
</div>



</body>
</html>
```

### Grid Simulation
Since all elements go from left to right then from top to button then from left to right
we can simulate grid system easily 

[link to example](https://ouisolutions.github.io/finalGrid/examples/grid_simulation.html)

```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>


<div class="finalGridRoot">

    <div class="set-50-view-height-for-width set-50-view-height-for-height red">
        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>

        <div class="set-20-percent-for-width set-20-percent-for-height blue"></div>
        <div class="set-20-percent-for-width set-20-percent-for-height "></div>


    </div>

</div>


</body>
</html>
```
###  Expand
you can easily make a div expand horizontally or vertically, just by omitting the width or 
height attribute of a div NOTE THAT ITS CHILD'S MUST BE WITh view height or view width attributes
otherwise the code will not work

### Horizontal Expand

[link to example](https://ouisolutions.github.io/finalGrid/examples/horizontal_expand.html)

```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>


<div class="finalGridRoot">

    <div class="set-30-percent-for-height  red">
        <div class="set-10-view-width-for-width set-100-percent-for-height"></div>
        <div class="set-10-view-width-for-width set-100-percent-for-height blue"></div>

        <div class="set-10-view-width-for-width set-100-percent-for-height"></div>
        <div class="set-10-view-width-for-width set-100-percent-for-height blue"></div>

        <div class="set-10-view-width-for-width set-100-percent-for-height"></div>
        <div class="set-10-view-width-for-width set-100-percent-for-height blue"></div>

    </div>

</div>


</body>
</html>
```

### Vertical Expand

[link to example](https://ouisolutions.github.io/finalGrid/examples/vertical_expand.html)

```html
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid@main/releases/0.001.css">

    <title>Document</title>
    <style>

        .red{
            background-color: red;
        }
        .blue{
            background-color: blue;
        }
        .yellow {
            background-color: yellow;
        }

    </style>
</head>
<body>


<div class="finalGridRoot">


    <div class="set-30-percent-for-width  red">
        <div class="set-10-view-height-for-height  set-100-percent-for-width"></div>
        <div class="set-10-view-height-for-height set-100-percent-for-width blue"></div>

        <div class="set-10-view-height-for-height  set-100-percent-for-width"></div>
        <div class="set-10-view-height-for-height set-100-percent-for-width blue"></div>

    </div>

    
</div>


</body>
</html>
``