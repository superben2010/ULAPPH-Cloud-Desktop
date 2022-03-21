#!/bin/bash
echo "Go getting all Golang libraries...please wait..."
echo "Golang version:"
go version
#echo	"github.com/jaytaylor/html2text"
#go get	"github.com/jaytaylor/html2text"

echo	"github.com/edwindvinas/percent"
go get	"github.com/edwindvinas/percent"

echo	"github.com/edwindvinas/jsonq"
go get	"github.com/edwindvinas/jsonq"

#go get	"gopkg.in/zabawaba99/firego.v1"
echo	"github.com/edwindvinas/firego.v1"
go get	"github.com/edwindvinas/firego.v1"

#go get	"github.com/dustin/go-humanize"
echo	"github.com/edwindvinas/go-humanize"
go get	"github.com/edwindvinas/go-humanize"

echo	"github.com/edwindvinas/html"
go get	"github.com/edwindvinas/html"

echo	"google.golang.org/api/googleapi/transport"
go get	"google.golang.org/api/googleapi/transport"

echo 	"github.com/edwindvinas/go-type-adapters"
go get 	"github.com/edwindvinas/go-type-adapters"

echo    "github.com/edwindvinas/websocket"
go get    "github.com/edwindvinas/websocket"
GOPATH=${GOPATH}
cd $GOPATH/src/github.com/ && mkdir gorilla
cd $GOPATH/src/github.com/gorilla/ && cp -R $GOPATH/src/github.com/edwindvinas/websocket .

echo    "github.com/edwindvinas/yaml"
go get    "github.com/edwindvinas/yaml"


echo "github.com/go-openapi/strfmt"
go get "github.com/go-openapi/strfmt"

echo "github.com/hashicorp/go-cleanhttp"
go get "github.com/hashicorp/go-cleanhttp"


echo "github.com/hashicorp/go-retryablehttp"
go get "github.com/hashicorp/go-retryablehttp"

echo "gopkg.in/go-playground/validator.v9"
go get "gopkg.in/go-playground/validator.v9"

echo "github.com/googleapis/go-type-adapters"
go get "github.com/googleapis/go-type-adapters"

#echo	"google.golang.org/api/plus/v1"
#go get	"google.golang.org/api/plus/v1"

echo	"google.golang.org/api/youtube/v3"
go get	"google.golang.org/api/youtube/v3"

echo	"golang.org/x/net/context"
go get	"golang.org/x/net/context"

echo	"google.golang.org/appengine"
go get	"google.golang.org/appengine"

echo	"golang.org/x/oauth2/google"
go get	"golang.org/x/oauth2/google"

#go get	"github.com/dgrijalva/jwt-go"
echo	"github.com/edwindvinas/jwt-go"
go get	"github.com/edwindvinas/jwt-go"

echo "github.com/patrickmn/go-cache"
go get "github.com/patrickmn/go-cache"

#go get	"github.com/PuerkitoBio/goquery"
echo	"github.com/edwindvinas/goquery"
go get -u	"github.com/edwindvinas/goquery"

#echo	"gopkg.in/neurosnap/sentences.v1/english"
#go get	"gopkg.in/neurosnap/sentences.v1/english"
echo	"github.com/edwindvinas/sentences.v1/english"
go get	"github.com/edwindvinas/sentences.v1/english"

echo	"golang.org/x/oauth2"
go get	"golang.org/x/oauth2"

echo	"github.com/google/go-github/github"
go get	"github.com/google/go-github/github"

#go get	"github.com/blevesearch/bleve"
echo	"github.com/edwindvinas/bleve"
go get	"github.com/edwindvinas/bleve"

echo	"github.com/edwindvinas/sillyname-go"
go get	"github.com/edwindvinas/sillyname-go"

echo  "github.com/edwindvinas/user_agent"
go get  "github.com/edwindvinas/user_agent"

#echo  "github.com/olekukonko/tablewriter"
#go get  "github.com/olekukonko/tablewriter"

#go get  "github.com/robertkrimen/otto"
echo  "github.com/edwindvinas/otto"
go get  "github.com/edwindvinas/otto"

echo "github.com/satori/go.uuid"
go get "github.com/satori/go.uuid"

#go get "github.com/tealeg/xlsx"
echo "github.com/edwindvinas/xlsx"
go get "github.com/edwindvinas/xlsx"

echo "github.com/edwindvinas/sprig"
go get "github.com/edwindvinas/sprig"

#go get "github.com/cdipaolo/goml/text"
echo "github.com/edwindvinas/goml/text"
go get "github.com/edwindvinas/goml/text"

#go get "github.com/shixzie/nlp"
echo "github.com/edwindvinas/nlp"
go get "github.com/edwindvinas/nlp"

#go get "gopkg.in/jdkato/prose.v2"
echo "github.com/edwindvinas/prose.v2"
go get "github.com/edwindvinas/prose.v2"

#go get "github.com/schollz/closestmatch"
echo "github.com/edwindvinas/closestmatch"
go get "github.com/edwindvinas/closestmatch"

#go get "github.com/mvdan/xurls"
echo "github.com/edwindvinas/xurls"
go get "github.com/edwindvinas/xurls"

echo "github.com/edwindvinas/html2text"
go get "github.com/edwindvinas/html2text"

echo "github.com/edwindvinas/perceptive"
go get "github.com/edwindvinas/perceptive"

#echo "cloud.google.com/go/dialogflow/apiv2"
#go get "cloud.google.com/go/dialogflow/apiv2"

#echo "github.com/golang/protobuf/ptypes/struct"
#go get "github.com/golang/protobuf/ptypes/struct"

#echo "google.golang.org/api/option"
#go get "google.golang.org/api/option"

#echo "google.golang.org/genproto/googleapis/cloud/dialogflow/v2"
#go get "google.golang.org/genproto/googleapis/cloud/dialogflow/v2"

#echo "github.com/futurenda/google-auth-id-token-verifier"
#go get "github.com/futurenda/google-auth-id-token-verifier"

#echo "github.com/IBM/go-sdk-core/core"
#go get "github.com/IBM/go-sdk-core/core"
echo "github.com/edwindvinas/go-sdk-core/core"
go get "github.com/edwindvinas/go-sdk-core/core"

echo "Cloning instead..."
GOPATH=${GOPATH}
mkdir $GOPATH/src/github.com/IBM
cd $GOPATH/src/github.com/IBM/ && git clone https://github.com/IBM/go-sdk-core.git
cd $GOPATH/src/github.com/IBM/go-sdk-core/v5/core


#echo "github.com/watson-developer-cloud/go-sdk/assistantv2"
#go get "github.com/watson-developer-cloud/go-sdk/assistantv2"
echo "github.com/edwindvinas/go-sdk/assistantv2"
go get "github.com/edwindvinas/go-sdk/assistantv2"

echo "Cloning instead..."
GOPATH=${GOPATH}
mkdir $GOPATH/src/github.com/watson-developer-cloud
cd $GOPATH/src/github.com/watson-developer-cloud/ && git clone https://github.com/watson-developer-cloud/go-sdk.git 
cd $GOPATH/src/github.com/watson-developer-cloud/go-sdk

#echo "golang.org/x/net/html"
#go get "golang.org/x/net/html"

echo "golang.org/x/xerrors"
go get "golang.org/x/xerrors"

echo "github.com/edwindvinas/openweathermap"
go get "github.com/edwindvinas/openweathermap"

#echo "github.com/edwindvinas/buntdb"
#go get "github.com/edwindvinas/buntdb"

echo "cloud.google.com/go/cloudtasks/apiv2"
go get "cloud.google.com/go/cloudtasks/apiv2"
echo "cloud.google.com/go/cloudtasks"
go get "cloud.google.com/go/cloudtasks"

echo "go.opencensus.io/trace"
go get "go.opencensus.io/trace"

#echo "github.com/rylio/ytdl"
#go get "github.com/rylio/ytdl"
echo "github.com/edwindvinas/ytdl"
go get "github.com/edwindvinas/ytdl"

echo "google.golang.org/api/iterator"
go get "google.golang.org/api/iterator"

echo "github.com/tdewolff/minify"
go get "github.com/tdewolff/minify"

echo "github.com/go-ego/riot"
go get "github.com/go-ego/riot"

#echo "github.com/dgraph-io/badger"
#go get "github.com/dgraph-io/badger"

#echo "github.com/DataDog/zstd"
#go get "github.com/DataDog/zstd"

echo "github.com/mailjet/mailjet-apiv3-go"
go get "github.com/mailjet/mailjet-apiv3-go"

echo "github.com/boltdb/bolt"
go get "github.com/boltdb/bolt"

#echo "github.com/go-redis/redis"
#go get "github.com/go-redis/redis"
echo "github.com/edwindvinas/redis"
go get "github.com/edwindvinas/redis"

# upgrade go112 changes
#go get "google.golang.org/appengine/datastore"
#go get "google.golang.org/appengine/blobstore"
#go get "google.golang.org/appengine/image"
#go get "google.golang.org/appengine/memcache"
#go get "google.golang.org/appengine"
#go get "google.golang.org/appengine/user"
#go get "google.golang.org/appengine/mail"
#go get "google.golang.org/appengine/taskqueue"
#go get "google.golang.org/appengine/delay"
go get "google.golang.org/appengine/search"
#go get "google.golang.org/appengine/urlfetch"
go get "google.golang.org/appengine/runtime"

echo "github.com/nsqio/go-nsq"
go get "github.com/nsqio/go-nsq"

echo "github.com/tidwall/pretty"
go get "github.com/tidwall/pretty"

#echo "github.com/IBM/go-sdk-core"
#go get "github.com/IBM/go-sdk-core"

echo "Fix some dependencies..."
GOPATH=${GOPATH}
mkdir $GOPATH/src/github.com/tdewolff/minify/v2
mv $GOPATH/src/github.com/tdewolff/minify/* $GOPATH/src/github.com/tdewolff/minify/v2/

mkdir $GOPATH/src/github.com/edwindvinas/redis/v7
mv $GOPATH/src/github.com/edwindvinas/redis/* $GOPATH/src/github.com/edwindvinas/redis/v7/

# Added due to gcp gce ubuntu install
go mod download cloud.google.com/go/datastore
go mod download cloud.google.com/go/storage
go get github.com/edwindvinas/go-cache
go get github.com/edwindvinas/redis/v7
go get github.com/edwindvinas/sprig
go get github.com/edwindvinas/ytdl
#go mod download github.com/gorilla/websocket
go get github.com/robfig/cron
go get github.com/tdewolff/minify/v2
go get github.com/tdewolff/minify/v2/css
go get github.com/tdewolff/minify/v2/html
go get github.com/tdewolff/minify/v2/js
go get github.com/tdewolff/minify/v2/json
go get github.com/tdewolff/minify/v2/svg
go get github.com/tdewolff/minify/v2/xml
go get github.com/watson-developer-cloud/go-sdk/assistantv2
#go mod download gopkg.in/yaml.v2

echo "go get gopkg.in/yaml.v2"
go get "go get gopkg.in/yaml.v2"


echo "you may ignore mv errors..."
echo "done!"
