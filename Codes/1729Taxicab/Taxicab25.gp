\\ Source: https://rosettacode.org/wiki/Taxicab_numbers
\\ Compute and display the lowest 25 taxicab numbers
\\ Usage: \r Taxicab25.gp
\\ Note: If you have PARI/GP stackoverflow error, Insert default(parisize, 8000000000) in gp prompt!

taxicab(n)=my(t); for(k=sqrtnint((n-1)\2,3)+1, sqrtnint(n,3), if(ispower(n-k^3, 3), if(t, return(1), t=1))); 0;
cubes(n)=my(t); for(k=sqrtnint((n-1)\2,3)+1, sqrtnint(n,3), if(ispower(n-k^3, 3, &t), print(n" =  \t"k"^3\t+ "t"^3")))
select(taxicab, [1..402597])
apply(cubes, %);
