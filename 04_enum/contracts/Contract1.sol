pragma solidity ^0.4.23;
contract Contract1 {

    enum Languages {
        java,
        javascript,
        solidity,
        python
    }
    
    Languages languages;

    function getLanguage() public returns (int) {
        return int(Languages.solidity);
    }

    function getLanguage2() public returns (int) {
        Languages language = Languages.python;
        return int(language);
    }

    function setLanguage(int lang) public {
        languages = Languages(lang);
    }

    function getLanguageStateVariable() public returns (Languages) {
        return languages;
    }



    

}