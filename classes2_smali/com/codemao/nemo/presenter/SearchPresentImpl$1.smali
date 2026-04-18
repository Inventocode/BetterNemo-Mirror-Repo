.class Lcom/codemao/nemo/presenter/SearchPresentImpl$1;
.super Ljava/lang/Object;
.source "SearchPresentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/SearchPresentImpl;->enterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/presenter/SearchPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/SearchPresentImpl;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;->this$0:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;->this$0:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->access$000(Lcom/codemao/nemo/presenter/SearchPresentImpl;)Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 67
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;->this$0:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->access$000(Lcom/codemao/nemo/presenter/SearchPresentImpl;)Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/presenter/SearchPresentImpl$1;->this$0:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->access$000(Lcom/codemao/nemo/presenter/SearchPresentImpl;)Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_26
    return-void
.end method
