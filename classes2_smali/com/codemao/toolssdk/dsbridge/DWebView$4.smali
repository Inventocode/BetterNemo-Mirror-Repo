.class Lcom/codemao/toolssdk/dsbridge/DWebView$4;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

.field final synthetic val$additionalHttpHeaders:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 451
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 455
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1301(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_29

    .line 457
    :cond_16
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1102(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 458
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1401(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V

    :goto_29
    return-void
.end method
