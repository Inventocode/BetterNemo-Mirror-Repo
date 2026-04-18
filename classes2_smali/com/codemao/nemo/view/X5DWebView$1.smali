.class Lcom/codemao/nemo/view/X5DWebView$1;
.super Ljava/lang/Object;
.source "X5DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView;->addInternalJavascriptObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/X5DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 2

    .line 291
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

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

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/X5DWebView$1$1;-><init>(Lcom/codemao/nemo/view/X5DWebView$1;)V

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/X5DWebView;->access$400(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/Runnable;)V

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

    .line 351
    check-cast p1, Lorg/json/JSONObject;

    .line 352
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    const-string v1, "disable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/X5DWebView;->access$502(Lcom/codemao/nemo/view/X5DWebView;Z)Z

    return-void
.end method

.method public dsinit(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 358
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {p1}, Lcom/codemao/nemo/view/X5DWebView;->access$600(Lcom/codemao/nemo/view/X5DWebView;)V

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

    .line 298
    const-class v0, Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "name"

    .line 299
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 300
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v2, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v2, v1}, Lcom/codemao/nemo/view/X5DWebView;->access$100(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v2}, Lcom/codemao/nemo/view/X5DWebView;->access$200(Lcom/codemao/nemo/view/X5DWebView;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 308
    :try_start_33
    aget-object v6, v1, v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v0, v7, v3

    const-class v8, Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_44

    const/4 v0, 0x1

    goto :goto_4f

    .line 313
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
    if-eqz v4, :cond_78

    .line 319
    const-class v1, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/webkit/JavascriptInterface;

    if-eqz v1, :cond_78

    const-string v1, "all"

    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    if-eqz v0, :cond_6d

    const-string v1, "asyn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    :cond_6d
    if-nez v0, :cond_78

    const-string v0, "syn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    :cond_77
    return v5

    :cond_78
    return v3
.end method

.method public returnValue(Ljava/lang/Object;)V
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

    .line 364
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v1, Lcom/codemao/nemo/view/X5DWebView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/view/X5DWebView$1$2;-><init>(Lcom/codemao/nemo/view/X5DWebView$1;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->access$400(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/Runnable;)V

    return-void
.end method
