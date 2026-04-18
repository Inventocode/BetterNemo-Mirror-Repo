.class Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;
.super Ljava/lang/Object;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallInfo"
.end annotation


# instance fields
.field private callbackId:I

.field private data:Ljava/lang/String;

.field private method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 5

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_8

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 505
    :cond_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->data:Ljava/lang/String;

    .line 506
    iput p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->callbackId:I

    .line 507
    iput-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->method:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;)I
    .registers 1

    .line 498
    iget p0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->callbackId:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "method"

    .line 514
    iget-object v2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "callbackId"

    .line 515
    iget v2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->callbackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 516
    iget-object v2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$CallInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 518
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    :goto_1f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
