package org.lala.lex.utils
{
    public class LexerFile
    {
        public var className:String = 'Lexer';
        public var packageName:String = '';
        public var userCode:String = '';
        public var imports:String = '';
        public var actions:String = '';
        public var tables:String = '';
        public var initialCode:String = '';
        
        public function LexerFile(lexerConfig:Object)
        {
            if(lexerConfig.decs != null)
            {
                if(lexerConfig.decs['class'] != '')
                    className = lexerConfig.decs['class'];
                packageName = lexerConfig.decs['package'];
                imports = lexerConfig.decs['imports'].join(';\r\n') + ';\r\n';
            }
            
            if(lexerConfig.codes != null)
            {
                userCode = lexerConfig.codes.join(';\r\n') + ';\r\n';
            }
            
            if(lexerConfig.initials != null)
            {
                initialCode = lexerConfig.initials.join(';\r\n') + ';\r\n';
            }
        }
        
        public function getRenderObject():Object
        {
            return {
                'class' : className,
                'package' : packageName,
                'imports' : imports,
                'usercode' : userCode,
                'tables' : tables,
                'initial' : initialCode,
                'actions' : actions
            };
        }
    }
}