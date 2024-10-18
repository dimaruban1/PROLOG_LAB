:- discontiguous is_a/2.
:- discontiguous part_of/2.

% tables
:- table is_a/2.
:- table part_of/2.

% Root category: beverage
is_a(alcoholic_beverage, beverage).
is_a(non_alcoholic_beverage, beverage).

% Alcoholic beverages
is_a(wine, alcoholic_beverage).
is_a(beer, alcoholic_beverage).
is_a(spirits, alcoholic_beverage).
is_a(cocktail, alcoholic_beverage).

% Types of wine
is_a(red_wine, wine).
is_a(white_wine, wine).

% Types of beer
is_a(lager, beer).
is_a(ale, beer).

% Types of spirits
is_a(whiskey, spirits).
is_a(vodka, spirits).

% Cocktails
is_a(martini, cocktail).
is_a(margarita, cocktail).
is_a(mojito, cocktail). 
is_a(old_fashioned, cocktail).

% Non-alcoholic beverages
is_a(soft_drink, non_alcoholic_beverage).
is_a(juice, non_alcoholic_beverage). 
is_a(hot_beverage, non_alcoholic_beverage). 

% Types of soft drinks
is_a(soda, soft_drink).
is_a(tonic_water, soft_drink).

% Types of juice
is_a(orange_juice, juice).
is_a(apple_juice, juice).

% Types of hot beverages
is_a(coffee, hot_beverage).
is_a(tea, hot_beverage). 

% part of
part_of(gin, martini).
part_of(vermouth, martini).
part_of(tequila, margarita).
part_of(lime_juice, margarita).
part_of(mint, mojito).
part_of(rum, mojito).
part_of(sugar, mojito).
part_of(sugar, old_fashioned).
part_of(whiskey, old_fashioned).
part_of(fruit, juice).
part_of(water, beverage).

% Транзитивність родо-видових зв'язків
is_a(X, Z) :- 
    is_a(X, Y), 
    is_a(Y, Z).

% Транзитивність зв'язків частина-ціле
part_of(X, Z) :- 
    part_of(X, Y), 
    part_of(Y, Z).

% Правило: Якщо X є частиною Y, а Y є видом Z, то X є частиною Z
part_of(X, Z) :- 
    part_of(X, Y), 
    is_a(Y, Z).

% Правило: Якщо X є видом Y, а Y є частиною Z, то X є частиною Z
part_of(X, Z) :- 
    is_a(X, Y), 
    part_of(Y, Z).
