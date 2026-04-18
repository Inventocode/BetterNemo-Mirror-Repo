.class Lcom/codemao/nemo/view/X5DWebView$2;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView;->evaluateJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/X5DWebView;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V
    .registers 3

    .line 411
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$2;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iput-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$2;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$2;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    iget-object v1, p0, Lcom/codemao/nemo/view/X5DWebView$2;->val$script:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->access$800(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V

    return-void
.end method
