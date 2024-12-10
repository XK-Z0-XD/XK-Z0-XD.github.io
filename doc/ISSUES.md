# Issues
Sass copying the functions:
Sass code (lib.scss):
```scss
@function midColor($th){
    $c: null;
    @if($th==red){
        $c: color.mix(#c0100a,#350302);
    }@else if($th==green){
        $c: color.mix(#5bf870,#131, $weight: 50%);
    }@else if($th==blue){
         $c: color.mix(#a5a5ff,#4242e7, $weight: 50%);
    }@else{
         $c: color.mix(#fff,#000, $weight: 50%);
    }
    @return $c;
}
@mixin middle($theme){
    --mid: midColor($theme);
}
```
in another sass file:
```scss
@use 'lib';
.green *{
    @include lib.middle($theme: green);
}
.logo{
    background-color: 
}
```
result in css file:
```css
.green * {
  --mid: midColor($theme);
}
.

```