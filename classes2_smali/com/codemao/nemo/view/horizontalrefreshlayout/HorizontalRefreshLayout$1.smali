.class Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothRelease()V
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

    .line 278
    iput-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 282
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$002(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;I)I

    .line 283
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$102(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;I)I

    .line 284
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;->this$0:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->access$202(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;F)F

    return-void
.end method
