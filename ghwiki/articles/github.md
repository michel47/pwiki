# GIThub :

### Actions

 read more

 - wiki page automatic creation [*](https://github.com/marketplace/actions/wiki-page-creator-action) :
    - https://github.com/marketplace/actions/wiki-page-creator-action
      - name: wiki-page-creator-action
        uses: Decathlon/wiki-page-creator-action@v2.0.0
 - bash
      - name: GitHub Action for Bash
        uses: lafernando/github-action-bash@v1.0

  env:
    GH_PAT: ${{ secrets.GH_PAT }}
    ACTION_MAIL: youremail@mail.com
    ACTION_NAME: yourusername
    OWNER: yourGitHubOrganisation
    REPO_NAME: yourGitHubRepository
 - 

 example for yml
   ```yml
   - name: Upload Release Notes to Wiki
     uses: docker://decathlon/wiki-page-creator-action:2.0.0
     env:
      GH_PAT: ${{ secrets.GH_PAT }}
      ACTION_MAIL: youremail@mail.com
      ACTION_NAME: yourusername
      OWNER: yourGitHubOrganisation
      REPO_NAME: yourGitHubRepository
    
   ```
 - hotlinking w/ github
    - https://pages.github.com/
    - https://combinatronics.com/
    - https://rawgit.com/ is shutdown (see [*](https://stackoverflow.com/questions/23537239/how-can-i-force-cdn-rawgit-com-use-updated-file))
    - https://raw.githack.com/
    - https://htmlpreview.github.io/ ([ex](https://htmlpreview.github.io/?https://github.com/twbs/bootstrap/blob/gh-pages/2.3.2/index.html))
    - https://codesandbox.io


 - my github pages :
    - https://michel47.github.io/index.html
    - https://gradual-quanta.github.io/
    - https://mychelium.github.io/

