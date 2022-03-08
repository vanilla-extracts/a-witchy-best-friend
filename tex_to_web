#!/usr/bin/python3
#A script to prepare the tex file for publication
import argparse
import os

class TeXParser:
    def __init__(self,filename,glossaryname,outname,name,use_glossary=True):
        self.filename = filename
        self.glossaryname = glossaryname
        self.outname = outname
        self.use_glossary = use_glossary
        self.parsed_glossary = None
        self.chappies = self.read_file()
        self.name = name
        self.parsed_chapters = None
        if self.use_glossary:
            self.glossary = self.read_glossary()
        
    
    def read_file(self):
        file = open(self.filename, 'r')
        lines = file.read()
        file.close()
        chappy = lines.split("\chapter")
        return chappy[1:]

    def read_glossary(self):
        file = open(self.glossaryname, 'r')
        glossaries = file.read()
        file.close()
        return glossaries
    
    def print_chapter(self,i):
        if self.parsed_chapters is None:
            self.parsed_chapters = [self.parse_chapter(a) for a in self.chappies]
        a = self.parsed_chapters[i]
        line = "<h2 id=\"chap"+str(i)+"\">Chapter " + str(i) + " : " + a["name"] + "</h2>\n\n"
        total_text = line + a["text"]
        return total_text

    def write_chapter(self,i):
        if self.parsed_chapters is None:
            self.parsed_chapters = [self.parse_chapter(a) for a in self.chappies]
        a = self.parsed_chapters[i]
        line = "<title>"+self.name+": HTML Version</title>\n<body>\n"
        line += "<style>\n .center { \n margin:auto; \n text-align: center; \n } \n </style>"
        line += "<h1 id=\"title\" class=\"center\">" + self.name + ": HTML Version" + "</h1>\n\n"
        line += "<h2>" + a["name"] + "</h2>\n\n"
        total_text = line + a["text"] + "</body>"
        file = open(self.outname, "w")
        file.write(total_text)
        file.close()
        print("Chapter",i,"has been printed")

    def write_file(self):
        if self.parsed_chapters is None:
            self.parsed_chapters = [self.parse_chapter(a) for a in self.chappies]
        line = "<title>"+self.name+": HTML Version</title>\n<body>\n"
        line += "<style>\n .center { \n margin:auto; \n text-align: center; \n } \n </style>"
        line += "<h1 id=\"title\" class=\"center\">" + self.name + ": HTML Version" + "</h1>\n\n"
        i = 0
        line += "<div id=\"tableofcontent\" class=\"center\"><br/>\n"
        line += "\t<h2>Table of content</h2><br/>\n"
        for _ in self.chappies:
            line += "\t<a href=\"#chap"+str(i)+"\">Chapter "+ str(i) +" : " + self.parsed_chapters[i]["name"] + "</a><br/>\n"
            i+=1
        if self.use_glossary:
            line += "\t<a href=\"#glossary\">Glossary</a><br/>\n"
        line += "</div>"
        i = 0
        for _ in range(len(self.chappies)):
            line += self.print_chapter(i)
            i += 1
        line += self.print_glossary()
        line += "\n</body>"
        file = open(self.outname, "w")
        file.write(line)
        file.close()
        print(name,"html has been printed in the file",self.outname)

    def parse_gls(self,text,startingpoint):
        if not self.use_glossary:
            return "",startingpoint,""
        if self.parsed_glossary is None:
            self.parsed_glossary = self.parse_glossaries(self.glossary)
        i = startingpoint
        name = ""
        while i <= len(text):
            char = text[i]
            if char=="}":
                break
            else:
                name += char
            i += 1
        if name not in self.parsed_glossary.keys():
            return i,"error"
        return name,i,self.parsed_glossary[name]
        
    def parse_text_in_italic_and_bold_reloaded(self,text):
        i = 0
        last_char = ""
        result = ""
        in_italic = False 
        in_bold = False
        last_opened = [] #0 rien 1 it 2 b 
        while i<len(text):
            word = text[i]
            if word=="{" and last_char=="t":
            #nous avons affaire à \textit{
                in_italic = True
                last_opened.append(0)
                result += "<i>"
            elif word=="{" and last_char=="f":
            #nous avons affaire à \textbf{
                in_bold = True
                last_opened.append(1)
                result += "<b>"
            elif word=="{" and last_char=="s":
            #nous avons affaire à gls, parse le nom du gls
                if self.use_glossary:
                    name,s,(n,_) = self.parse_gls(text, i+1)
                    result += "<a href=\"#" + name + "\"><span>" + n + "</span></a>"
                    i = s
                else:
                    result += word
            elif word=="}":
                if in_italic==True and in_bold==False:
                    last_opened.pop()
                    result += "</i>"
                    in_italic = False
                elif in_italic==False and in_bold==True:
                    last_opened.pop()
                    result += "</b>"
                    in_bold = False
                elif in_italic==True and in_bold==True:
                    to_oppen = last_opened.pop()
                    if to_oppen == 0:
                        result += "</i>"
                        in_italic = False
                    else:
                        result += "</b>"
                        in_bold = False
                else:
                    result += "}"
            else:
                result += word
            last_char = word
            i += 1
        return result.replace("\\textit","").replace("\\textbf","").replace("\\gls", "")
    
    def print_glossary(self):
        if not self.use_glossary:
            return ""
        if self.parsed_glossary is None:
            self.parsed_glossary = self.parse_glossaries()
        line = "<div id=\"glossary\">\n<br/>\n"
        line += "\t<h2>Glossary</h2>\n"
        for key in self.parsed_glossary.keys():
            name,desc = self.parsed_glossary[key]
            line += "\t<div id=\"" + key + "\">\n\t\t<h3>" + name + "</h3>\n\t\t<p>" + desc + "</p>\n\t</div>\n"
        line += "</div>\n"
        line = line.replace("\printglossaries", "")
        return line

    def parse_chapter(self,chapter: str):
        """
        parse a given chapter into its name, and its text.
        """
        chapters = {}
        a = chapter.splitlines()
        a = [" " + b for b in a]
        first_line = a[0]
        name = first_line.replace("{","").replace("}","").replace("*","").strip()
        text = ("<p>\n\t" + "".join(a[1:])).strip()
        text_with_line = text.replace("\\newline", "<br/>\n").replace("\\par","<br/>\n").replace("\\bigskip", "</p>\n\n<p>\n\t").replace("\\\\", "<br/>\n").strip()
        text_sep = text_with_line.replace("\\sep", "<br/><div class=\"center\">\n<p>\n<br/><b>***</b><br/>\n</p>\n</div>").strip()
        text_sep = text_sep.replace("\\begin{center}","<div class=\"center\">\n").replace("\\end{center}","\n</div>")
        text_sep = text_sep.replace("\\end{document}","")
        text = text_sep.strip()
        text = self.parse_text_in_italic_and_bold_reloaded(list(text))
        chapters["name"] = name.strip()
        chapters["text"] = "<div>\n\t" + text + "\n</div><br/>\n"
        return chapters

    @staticmethod
    def parse_glossaries(glossary:str):
        glos = glossary.split("\\newglossaryentry")
        #desc : (name,def)
        gls = {}
        for glo in glos:
            if glo=="\n":
                continue
            lines = glo.splitlines()
            desc = lines[0].replace("{", "").replace("}", "").replace("*", "")
            name = ""
            description = ""
            for line in lines[1:]:
                line = line.strip()
                if line.startswith("name="):
                    name = line.replace("name=", "").replace("}", "").replace("{","")[:-1]
                if line.startswith("description="):
                    description = line.replace("description=", "").replace("{","").replace("}", "")
            gls[desc] = (name,description)
        return gls

   

parser = argparse.ArgumentParser(description='Python script to transform the tex file into an html file')
parser.add_argument('--input', type=str, help="Manually input the file to transform",required=True)
parser.add_argument('--output', type=str, help="Manually input the file to transform",required=True)
parser.add_argument('--use-glossary', type=str, help="Specify if there is a glossary attached")
parser.add_argument('--chapter', type=int, help='Prints only the supplied chapter without the glossary')
parser.add_argument('--name',type=str,help="Specify the name in the <title> and <h1> balise, TeX by default", default="TeX")
args = parser.parse_args()
chapter = args.chapter
input_file = args.input
glossary = args.use_glossary
output = args.output
name = args.name
use_glossary = not(glossary is None)
tex = TeXParser(input_file,glossary,output,name,use_glossary)

if not (chapter is None):
    tex.write_chapter(chapter)
else:
    tex.write_file()