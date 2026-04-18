.class Lcom/codemao/creativestore/dsbridge/DWebView$3;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)V
    .registers 3

    .line 444
    iput-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    iput-object p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 448
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    iget-object v1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1001(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)V

    goto :goto_25

    .line 450
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1102(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 451
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    iget-object v1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$3;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1201(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)V

    :goto_25
    return-void
.end method
