ULAPPH Cloud Desktop is a simple, free and open-source webtop or web-based desktop which can be installed in your local laptop, cloud server, docker container, Kubernetes, serverless like Cloud Run or even Android via Termux!

![ULAPPH  Logo](https://lh3.googleusercontent.com/rWg64BhkoZePFav1Piw-3GUL8HpG0_Bz3fjhw6vbPDjcAIrkFGfJFU0E3uEOEc6xN5RfAnBxUH1sJ2onP4tnDfs9bOpn4Bs)
*** Logo designed by my late brother "Rammel"

Too Long; Dont Read (TL;DR)
----------------
- What if you can have a desktop environment on your Chrome browser and be able to open windows, launch applications, watch videos, or even develop your own applications? And you can do this by just accessing a shared webtop server via browser. What if you can run this webtop in your laptop/computer or install it in the cloud like AppEngine or what if you can run it as a docker container in Cloud Run or Kubernetes. That's ULAPPH Cloud Desktop! Think of it as like Windows or Linux operating system but uses web technologies and browser only; no installation required. It can be installed anywhere including an Android device via Termux!
- Try the demo version at https://www.ulapph.com now! Or just watch the demo video https://www.youtube.com/watch?v=kuwnCQhZawI
- This is a monolithic Golang application consisting of one main.go source code. Future development aims to split this application into several docker microservices.
-  Written in Go or Golang programming language. Tested to run as standalone server inside a Windows 10 machine or in Google Appegine Standard or in Google Cloud Run or Kubernetes as a docker container.
- Not yet tested on Mac OS laptop or Linux laptop as I only have Windows 10 :-)
- Tested fully in Google Cloud but not yet tested on AWS, Azure, Bluemix, Alibaba :-)

Versions
--------------
- Versioning is based on famous Filipino dishes. https://en.wikipedia.org/wiki/List_of_Philippine_dishes
- Current version now is "Afridata" - Dockerized, Platform-agnostic version with AI
![Afritada](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/0050jfCuisine_Foods_Philippines_Baliuag_Bulacanfvf_22.jpg/120px-0050jfCuisine_Foods_Philippines_Baliuag_Bulacanfvf_22.jpg)
- Previous version: (Adobo-2019) - Appengine version
![Adobo 2019](https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Chicken_adobo.jpg/120px-Chicken_adobo.jpg)

Watch Demo Video (Youtube)
-----------
https://www.youtube.com/watch?v=kuwnCQhZawI

Features
--------------
**ULAPPH Cloud Desktop** is a web operating system that runs in a browser such as Chrome, Opera and Firefox! Works perfectly with Chrome! 
- It has built-in windowing system which displays contents in multiple **Windows** or desktops.  
- It can be configured to contain **unlimited number of desktops** so you can organize your work, your personal, business and any information such as desktop for your cats cctv images or a desktop for your documents.
- It can automatically generate contents into **slides**, **articles**, and **media** and other formats.
- It can recognize different data formats such as text, music, videos, etc.
- It saves data in the cloud which means it is available **anytime, anywhere and any device**. 
- It works in laptops, desktops, Android/IOS devices as long as they have **Chrome, Opera or Firefox browsers** - No installation required except the X-Frame-Ignore extension and Cross Origin **extension** neeed for Chrome browsers.
- No third party software or apps needed to be installed.
- It works anywhere in Google Cloud Platform specifically AppEngine standard, Cloud Run and Google Kubernetes Engine. Given that, it should work on all cloud platforms as well.
- Tested to work in my OPPO F7 Android device using Termux! Should work in any smartphone w/ Termux!
- And the list goes on...
 
ULAPPH Architecture
----------------

![ULAPPH Architecture](https://raw.githubusercontent.com/edwindvinas/ULAPPH-Cloud-Desktop/master/static/images/ULAPPH%20Cloud%20Desktop%20System-20200507.png "ULAPPH Architecture")

Libraries/Packages Used
----------------

``import (
	"net"
	"html/template"
	"net/http"
	"path"
	"path/filepath"
	"encoding/base64"
	"encoding/json"
	"net/url"
	"math/rand"
	"regexp"
	"unicode"
	"unicode/utf8"
	"time"
	"bytes"
	"fmt"
	"strings"
	"strconv"
	"bufio"
	"io/ioutil"
	"io"
	"log"
	"errors"
    "cloud.google.com/go/datastore"
    mailjet "github.com/mailjet/mailjet-apiv3-go"
	"google.golang.org/appengine/search"
    "google.golang.org/appengine/runtime"
    "cloud.google.com/go/storage"
	"github.com/edwindvinas/user_agent"
	"github.com/edwindvinas/go-humanize"
	"github.com/edwindvinas/html"
	"google.golang.org/api/googleapi/transport"
	"flag"
	"google.golang.org/api/youtube/v3"
	"golang.org/x/net/context"
	"crypto/aes"
	"crypto/cipher"
	crand "crypto/rand"
	"mime/multipart"
	"github.com/edwindvinas/html2text"
	"github.com/edwindvinas/percent"
	"github.com/edwindvinas/jsonq"
	"sort"
	"github.com/edwindvinas/firego.v1"
	"golang.org/x/oauth2/google"
	"crypto/rsa"
    "github.com/edwindvinas/jwt-go"
    "github.com/edwindvinas/goquery"
	"github.com/edwindvinas/sentences.v1/english"
	"golang.org/x/oauth2"
	"github.com/google/go-github/github"
	"github.com/edwindvinas/bleve"
	"github.com/edwindvinas/sprig"
	"encoding/binary"
	"os"
	"github.com/edwindvinas/sillyname-go"
	"github.com/edwindvinas/otto"
	"github.com/edwindvinas/xlsx"
	"reflect"
	"github.com/edwindvinas/nlp"
	"github.com/edwindvinas/goml/text"
	"github.com/edwindvinas/perceptive"
	"image"
	"github.com/edwindvinas/prose.v2"
	"github.com/edwindvinas/closestmatch"
    "github.com/edwindvinas/xurls"
    "cloud.google.com/go/compute/metadata"
    "github.com/satori/go.uuid"
    "github.com/patrickmn/go-cache"
    cloudtasks "cloud.google.com/go/cloudtasks/apiv2"
    taskspb "google.golang.org/genproto/googleapis/cloud/tasks/v2"
	"github.com/IBM/go-sdk-core/core"
    "github.com/watson-developer-cloud/go-sdk/assistantv2"
    "github.com/edwindvinas/openweathermap"
	"github.com/edwindvinas/ytdl"
    "google.golang.org/api/iterator"
    "github.com/tdewolff/minify/v2"
	"github.com/tdewolff/minify/v2/css"
	mhtml "github.com/tdewolff/minify/v2/html"
	"github.com/tdewolff/minify/v2/js"
	mjson "github.com/tdewolff/minify/v2/json"
	"github.com/tdewolff/minify/v2/svg"
	"github.com/tdewolff/minify/v2/xml"
    "github.com/boltdb/bolt"
    "github.com/go-redis/redis/v7"
)``

What exactly can it do?
------------------
Kindly create an issue or send me a question so I can tell you if the feature is available or not while pending updates of the documentations.
- Gmail: edwin.d.vinas@gmail.com
	     ulapph@gmail.com

Installation Packages
------------------
The installation of ULAPPH requires or may need the dependencies such as IBM Watson AI workspaces, configuration files, data folder (for local install), shell installer script, and custom Otto javascript codes for serving the conversational chatbots. Yes, the install is quite complicated as it looks but once you have everything setup in your machine, installation is as easy as executing one shell script since it automates a lot of things.
``
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr 26 00:23 ULAPPH-Cloud-Desktop/
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr  4 20:11 ULAPPH-Cloud-Desktop-AI/
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr  4 20:11 ULAPPH-Cloud-Desktop-Configs/
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr 18 22:30 ULAPPH-Cloud-Desktop-Data/
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr 19 23:46 ULAPPH-Cloud-Desktop-Shell-Installer/
drwxr-xr-x 1 edwin.d.vinas 1049089     0 Apr 21 18:05 ULAPPH-Cloud-Desktop-Watson/
``


How to Install in your chosen platform?
------------------
The installation documents are **in progress**. Please watch out for the release of installation docs.
- Windows 10 laptop (tested and it worked!)
- Android using Termux (tested and it worked!)
- Google Appengine Standard (tested and it worked!)
- Google Cloud Run (tested and it worked!)
- Google Kubernetes Engine (tested and it worked!)
- AWS Cloud (pending testing)
- Microsoft Azure (pending testing)
- IBM Bluemix (pending testing)
- Alibaba Cloud (pending testing)

Contributors
----------------
- Edwin D. Vinas (Golang/JS/HTML/CSS)
- Christine T. Cunanan (UI/Testing/ContentManagement)
- (In memory of) Rammel D. Vinas (CorelDraw/Photoshop/Graphics)
- Our seven indoor Khao Manee Cats and a lot of outdoor homeless/adopted cats!
- Google Search, Wikipedia and other reference materials!
- StackOverflow, Reddit, W3Schools and all resources with code samples!
- Github open-source libraries!
- Alessio Atzeni -- Developer of Mac OSX desktop UI (http://www.alessioatzeni.com/mac-osx-lion-css3/)
- ed_g2s of Sourceforge -- Developer of Javascript Windowing system used (TBD)
- And all the developers of other free/opensource libraries integrated with ULAPPH (see them under the import section)

Thank you very much!
----------------
- Please help us sustain the cloud billing and domain for https://www.ulapph.com and https://www.ulapph.net
- Contact us if you would like to sponsor this project or if you want to contribute!

ULAPPH Conference 2020!
----------------
- Yes, planning to hold an online conference and will do it yearly moving forward.
- Let me know if you are interested to present what you did with ULAPPH!
- No date yet but will let you know once confirmed.