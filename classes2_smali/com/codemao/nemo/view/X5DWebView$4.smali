.class Lcom/codemao/nemo/view/X5DWebView$4;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/X5DWebView;

.field final synthetic val$additionalHttpHeaders:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 445
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$4;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/view/X5DWebView$4;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$4;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->access$902(Lcom/codemao/nemo/view/X5DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 449
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$4;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v1, p0, Lcom/codemao/nemo/view/X5DWebView$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/view/X5DWebView$4;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/view/X5DWebView;->access$1101(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
