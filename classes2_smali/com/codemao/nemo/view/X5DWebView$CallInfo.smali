.class Lcom/codemao/nemo/view/X5DWebView$CallInfo;
.super Ljava/lang/Object;
.source "X5DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/X5DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallInfo"
.end annotation


# instance fields
.field public callbackId:I

.field public data:Ljava/lang/String;

.field public method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 5

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->data:Ljava/lang/String;

    if-nez p4, :cond_b

    const/4 p1, 0x0

    new-array p4, p1, [Ljava/lang/Object;

    .line 476
    :cond_b
    new-instance p1, Lorg/json/JSONArray;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->data:Ljava/lang/String;

    .line 477
    iput p3, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->callbackId:I

    .line 478
    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 483
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "method"

    .line 485
    iget-object v2, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "callbackId"

    .line 486
    iget v2, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->callbackId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 487
    iget-object v2, p0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    :goto_1f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
