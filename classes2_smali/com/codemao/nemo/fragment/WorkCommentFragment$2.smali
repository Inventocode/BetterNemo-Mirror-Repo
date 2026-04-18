.class Lcom/codemao/nemo/fragment/WorkCommentFragment$2;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    .line 337
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1302(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I

    .line 338
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1400(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V

    return-void
.end method
