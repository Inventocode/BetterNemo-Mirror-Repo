.class Lcom/codemao/toolssdk/dsbridge/DWebView$5;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView;->reload()V
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

    .line 466
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$5;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$5;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1102(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 470
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$5;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1501(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    return-void
.end method
