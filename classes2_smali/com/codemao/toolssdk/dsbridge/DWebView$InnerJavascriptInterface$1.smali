.class Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

.field final synthetic val$cb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;Ljava/lang/String;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    iput-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->val$cb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Z)V
    .registers 7

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 179
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->val$cb:Ljava/lang/String;

    if-eqz p1, :cond_4a

    const-string v1, "%s(%s.data);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    .line 183
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3e

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "delete window."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->val$cb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    :cond_3e
    iget-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    iget-object p2, p2, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->evaluateJavascript(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->complete(Ljava/lang/Object;Z)V

    return-void
.end method

.method public complete(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->complete(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setProgressData(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface$1;->complete(Ljava/lang/Object;Z)V

    return-void
.end method
