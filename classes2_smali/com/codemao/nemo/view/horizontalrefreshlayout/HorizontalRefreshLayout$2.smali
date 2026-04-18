.class Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothLocateToRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 317
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$300(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$202(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;F)F

    .line 319
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$400(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 320
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$100(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)I

    move-result p1

    if-nez p1, :cond_24

    .line 321
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$400(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;->onLeftRefreshing()V

    goto :goto_2d

    .line 323
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$400(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;->onRightRefreshing()V

    :cond_2d
    :goto_2d
    return-void
.end method
