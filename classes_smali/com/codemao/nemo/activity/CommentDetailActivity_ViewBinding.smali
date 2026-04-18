.class public Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CommentDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;Landroid/view/View;)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0653

    const-string v2, "field \'rlReplyDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->rlReplyDetail:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const v1, 0x7f0a075f

    const-string v2, "field \'rvReplyDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    .line 37
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0638

    const-string v2, "field \'rlFakerReplyInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->rlFakerReplyInput:Landroid/widget/RelativeLayout;

    .line 38
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a065f

    const-string v2, "field \'rlTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->rlTitle:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a08d9

    const-string v1, "field \'tvFakerInput\' and method \'replyAtComment\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFakerInput\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    .line 42
    new-instance v0, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c0

    const-string v2, "field \'tvReplyNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvReplyNum:Landroid/widget/TextView;

    .line 49
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a05f3

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v0, 0x7f0a037b

    const-string v1, "method \'close\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
