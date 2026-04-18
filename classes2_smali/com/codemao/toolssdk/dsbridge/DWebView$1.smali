.class Lcom/codemao/toolssdk/dsbridge/DWebView$1;
.super Ljava/lang/Object;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView;->addInternalJavascriptObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closePage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 339
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/dsbridge/DWebView$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$1;)V

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$500(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public disableJavascriptDialogBlock(Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 357
    check-cast p1, Lorg/json/JSONObject;

    .line 358
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-string v1, "disable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$602(Lcom/codemao/toolssdk/dsbridge/DWebView;Z)Z

    return-void
.end method

.method public dsinit(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 364
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$700(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    return-void
.end method

.method public hasNativeMethod(Ljava/lang/Object;)Z
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 300
    const-class v0, Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "name"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 302
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object v2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v2, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$200(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$300(Lcom/codemao/toolssdk/dsbridge/DWebView;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 310
    :try_start_33
    aget-object v6, v1, v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v0, v7, v3

    const-class v8, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_44

    const/4 v0, 0x1

    goto :goto_4f

    .line 315
    :catch_44
    :try_start_44
    aget-object v1, v1, v5

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    const/4 v0, 0x0

    :goto_4f
    if-eqz v4, :cond_7f

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_62

    .line 322
    const-class v1, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/webkit/JavascriptInterface;

    if-nez v1, :cond_62

    return v3

    :cond_62
    const-string v1, "all"

    .line 327
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    if-eqz v0, :cond_74

    const-string v1, "asyn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    :cond_74
    if-nez v0, :cond_7f

    const-string v0, "syn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    :cond_7e
    return v5

    :cond_7f
    return v3
.end method

.method public returnValue(Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/toolssdk/dsbridge/DWebView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$1$2;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$1;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$500(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/Runnable;)V

    return-void
.end method
