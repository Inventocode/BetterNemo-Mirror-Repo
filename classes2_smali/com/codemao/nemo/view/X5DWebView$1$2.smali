.class Lcom/codemao/nemo/view/X5DWebView$1$2;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView$1;->returnValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/X5DWebView$1;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView$1;Ljava/lang/Object;)V
    .registers 3

    .line 364
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$1$2;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$1$2;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "data"

    .line 367
    iget-object v1, p0, Lcom/codemao/nemo/view/X5DWebView$1$2;->val$obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    :try_start_6
    const-string v2, "id"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "complete"

    .line 371
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 372
    iget-object v4, p0, Lcom/codemao/nemo/view/X5DWebView$1$2;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v4, v4, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v4, v4, Lcom/codemao/nemo/view/X5DWebView;->handlerMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/dsbridge/OnReturnValue;

    .line 373
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 374
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-eqz v4, :cond_47

    .line 377
    invoke-interface {v4, v0}, Lcom/codemao/creativestore/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V

    if-eqz v3, :cond_47

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1$2;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView;->handlerMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    :goto_47
    return-void
.end method
