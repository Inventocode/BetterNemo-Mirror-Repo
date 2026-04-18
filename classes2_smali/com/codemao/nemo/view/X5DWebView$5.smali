.class Lcom/codemao/nemo/view/X5DWebView$5;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView;->reload()V
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

    .line 456
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$5;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$5;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->access$902(Lcom/codemao/nemo/view/X5DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 460
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$5;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1201(Lcom/codemao/nemo/view/X5DWebView;)V

    return-void
.end method
