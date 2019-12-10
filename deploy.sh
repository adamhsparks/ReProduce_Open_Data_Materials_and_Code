#!/bin/bash
echo "Your PATH is $PATH"
echo "You are on branch $TRAVIS_BRANCH"
echo "The working directory is $(pwd)"

then
	  echo "you are on master, deploying production."
	  netlify deploy -a $NETLIFY_API --prod --dir=public
else 
    echo "you are not on master, deploying preview."
    netlify deploy -a $NETLIFY_API --dir=public
fi
