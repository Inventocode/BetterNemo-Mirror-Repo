.class public Lcom/codemao/nemo/fragment/WorkCommentFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "WorkCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;
    }
.end annotation


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private commentAtUserInfo:Lcom/codemao/nemo/bean/UserInfo;

.field private commentFragmentCallBack:Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;

.field private confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private content:Ljava/lang/String;

.field private customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

.field private emojiContent:Ljava/lang/String;

.field private hasMore:Z

.field private inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

.field private isLoadMore:Z

.field private isLoading:Z

.field private isOwnWork:Z

.field loadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private offset:I

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private replyAtCommentId:J

.field private replyAtPosition:I

.field rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private showMorePosition:I

.field private sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

.field private toCommentPositionInUnLogin:I

.field private totalReplyNum:I

.field tvFakeInput:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workId:J

.field private workType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$slxPzOkdtTcvxcTyCkU2zlvfFk4(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->lambda$onUserInfoChanged$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 82
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 93
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    const/4 v2, 0x0

    .line 96
    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    .line 97
    sget-object v3, Lcom/codemao/nemo/bean/TypeItemData;->SORT_NORMAL:Ljava/lang/String;

    .line 101
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtCommentId:J

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    .line 109
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    .line 110
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isLoadMore:Z

    .line 116
    iput v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toCommentPositionInUnLogin:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showMorePosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showMorePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->likeReply(JI)V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/fragment/WorkCommentFragment;IZ)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toComment(IZ)V

    return-void
.end method

.method static synthetic access$1202(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toCommentPositionInUnLogin:I

    return p1
.end method

.method static synthetic access$1302(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    return p1
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getComments(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showReplyInput()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/bean/WorkComments;Z)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->setComments(Lcom/codemao/nemo/bean/WorkComments;Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->setViewAfterLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showClose()V

    return-void
.end method

.method static synthetic access$202(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->emojiContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sendReply()V

    return-void
.end method

.method static synthetic access$2600(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateFakerComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sendCommentSuccess(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sendReplySuccess(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->deleteCommentSuccess(JI)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->deleteComment(JI)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/WorkCommentFragment;ZJI)V
    .registers 5

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->topOrCancel(ZJI)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isOwnWork:Z

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->dislikeReply(JI)V

    return-void
.end method

.method private deleteComment(JI)V
    .registers 10

    .line 821
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    new-instance v5, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->deleteCommentOrReply(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private deleteCommentSuccess(JI)V
    .registers 5

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "删除成功"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 862
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    if-eqz p1, :cond_10

    .line 863
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 865
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 866
    iget p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    .line 867
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    .line 868
    iget p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_33

    const/4 p1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result p1

    :goto_37
    sub-int/2addr p2, p1

    iput p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    if-gez p2, :cond_3e

    .line 870
    iput v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 872
    :cond_3e
    iget p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 873
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 874
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 875
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 878
    :cond_59
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_70

    .line 879
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    if-eqz p1, :cond_6b

    .line 880
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_70

    .line 882
    :cond_6b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    :cond_70
    :goto_70
    return-void
.end method

.method private dislikeReply(JI)V
    .registers 11

    const/4 v0, 0x0

    .line 502
    invoke-direct {p0, p3, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateLikeStatus(IZ)V

    .line 503
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    new-instance v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$8;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$8;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->disLikePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getComments(Z)V
    .registers 7

    .line 440
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    new-instance v4, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;

    invoke-direct {v4, p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getComments(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public static getInstance(JLjava/lang/String;ZLcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;)Lcom/codemao/nemo/fragment/WorkCommentFragment;
    .registers 7

    .line 119
    new-instance v0, Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;-><init>()V

    .line 120
    invoke-virtual {v0, p4}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->setCommentFragmentCallBack(Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;)V

    .line 121
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "workId"

    .line 122
    invoke-virtual {p4, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "workType"

    .line 123
    invoke-virtual {p4, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isOwnWork"

    .line 124
    invoke-virtual {p4, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {v0, p4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic lambda$onUserInfoChanged$0()V
    .registers 3

    .line 385
    iget v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toCommentPositionInUnLogin:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toComment(IZ)V

    const/4 v0, -0x1

    .line 386
    iput v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toCommentPositionInUnLogin:I

    return-void
.end method

.method private likeReply(JI)V
    .registers 11

    const/4 v0, 0x1

    .line 482
    invoke-direct {p0, p3, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateLikeStatus(IZ)V

    .line 483
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    new-instance v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$7;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$7;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->likePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private sendComment()V
    .registers 7

    .line 626
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->emojiContent:Ljava/lang/String;

    new-instance v5, Lcom/codemao/nemo/fragment/WorkCommentFragment$13;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$13;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->sendComment(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private sendCommentSuccess(I)V
    .registers 5

    const/4 p1, 0x0

    .line 747
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    const/4 p1, 0x1

    .line 748
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getComments(Z)V

    const-string p1, ""

    .line 749
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateFakerComment(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    if-eqz v0, :cond_2d

    .line 752
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 753
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->clearEmoji()V

    .line 754
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    .line 756
    :cond_2d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/CommentEvents;->creatCommentSuccessEvents(J)Lcom/codemao/nemo/event/CommentEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private sendReply()V
    .registers 8

    .line 652
    iget-wide v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtCommentId:J

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_9

    return-void

    .line 655
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget-object v5, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    new-instance v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->sendReply(JJLjava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private sendReplySuccess(I)V
    .registers 8

    .line 760
    iget v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 761
    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 762
    new-instance v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;-><init>()V

    int-to-long v2, p1

    .line 763
    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/bean/WorkReplyItem;->setId(J)V

    .line 764
    new-instance p1, Lcom/codemao/nemo/bean/UserInfo;

    invoke-direct {p1}, Lcom/codemao/nemo/bean/UserInfo;-><init>()V

    .line 765
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 767
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/codemao/nemo/bean/UserInfo;->setId(J)V

    .line 768
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getFullname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setAvatar_url(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setAuthor_level(I)V

    .line 772
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setConsume_level(I)V

    .line 773
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setHead_frame_url(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/UserInfo;->setSmall_head_frame_url(Ljava/lang/String;)V

    goto :goto_7c

    .line 776
    :cond_56
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 778
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/codemao/nemo/bean/UserInfo;->setId(J)V

    .line 779
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getFullname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/UserInfo;->setAvatar_url(Ljava/lang/String;)V

    .line 784
    :cond_7c
    :goto_7c
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setReply_user(Lcom/codemao/nemo/bean/UserInfo;)V

    .line 785
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setIs_own(Z)V

    .line 786
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setContent(Ljava/lang/String;)V

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/bean/WorkReplyItem;->setCreated_at(J)V

    .line 788
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setManualAdd(Z)V

    .line 789
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_c8

    .line 790
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    new-instance v3, Lcom/codemao/nemo/bean/WorkCommentReplys;

    invoke-direct {v3}, Lcom/codemao/nemo/bean/WorkCommentReplys;-><init>()V

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->setReplies(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    .line 791
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setTotal(I)V

    .line 793
    :cond_c8
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_f2

    .line 794
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setItems(Ljava/util/List;)V

    .line 796
    :cond_f2
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result p1

    .line 797
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v3

    add-int/2addr p1, v1

    invoke-virtual {v3, p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setTotal(I)V

    .line 798
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 799
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 p1, -0x1

    .line 800
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    const-wide/16 v0, -0x1

    .line 801
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtCommentId:J

    .line 802
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    const-string v0, ""

    if-eqz p1, :cond_14c

    .line 803
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 804
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->clearEmoji()V

    .line 805
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    .line 807
    :cond_14c
    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateFakerComment(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 808
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentAtUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    .line 809
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setComments(Lcom/codemao/nemo/bean/WorkComments;Z)V
    .registers 9

    .line 697
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->setViewAfterLoading()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 699
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    .line 700
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void

    .line 703
    :cond_f
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getTotal()I

    move-result v2

    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 704
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 705
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 706
    iget v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    if-nez v3, :cond_28

    .line 708
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 710
    :cond_28
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_39

    goto :goto_9f

    .line 717
    :cond_39
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 718
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 719
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isLoadMore:Z

    if-eqz v3, :cond_59

    .line 720
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_5e

    .line 722
    :cond_59
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 724
    :goto_5e
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/WorkCommentFragment$15;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$15;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    iget v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    .line 734
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkComments;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0xf

    if-lt p1, v2, :cond_85

    const/4 p1, 0x1

    goto :goto_86

    :cond_85
    const/4 p1, 0x0

    :goto_86
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    if-eqz p2, :cond_8f

    .line 736
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 738
    :cond_8f
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    if-nez p1, :cond_99

    .line 739
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_9e

    .line 741
    :cond_99
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_9e
    return-void

    .line 711
    :cond_9f
    :goto_9f
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    .line 712
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 713
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setViewAfterLoading()V
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 815
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 816
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private showClose()V
    .registers 5

    .line 841
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-eqz v0, :cond_3b

    .line 842
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showClose()V

    .line 843
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    if-eqz v0, :cond_3b

    const-string v0, ""

    .line 846
    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateFakerComment(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 849
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->clearEmoji()V

    .line 850
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    .line 853
    :cond_3b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 854
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;

    if-eqz v0, :cond_53

    .line 855
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setCloseComment(Z)V

    :cond_53
    return-void
.end method

.method private showReplyInput()V
    .registers 6

    const-string v0, "一级"

    .line 582
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击评论内容卡片"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 586
    :cond_12
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setSendListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 600
    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setOnStatusChangeListner(Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;)V

    .line 616
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setType(I)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setIsShowEmoj(Z)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentAtUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    if-nez v1, :cond_54

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_70

    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "回复"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentAtUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_70
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setHint(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 617
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 620
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 621
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private toComment(IZ)V
    .registers 6

    .line 392
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtPosition:I

    .line 393
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->replyAtCommentId:J

    .line 394
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentAtUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    .line 395
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method private topOrCancel(ZJI)V
    .registers 7

    .line 890
    const-class v0, Lcom/codemao/nemo/retrofit/api/WorkService;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 891
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_14
    if-eqz p1, :cond_64

    .line 895
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    const/4 v1, 0x1

    .line 896
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setIs_top(Z)V

    .line 897
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 898
    iget-object p4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 899
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 900
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "评论已置顶成功"

    invoke-static {p1, p4}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 901
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/WorkService;

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/codemao/nemo/retrofit/api/WorkService;->topComment(JJ)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 902
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/fragment/WorkCommentFragment$17;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$17;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_8c

    .line 920
    :cond_64
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/WorkService;

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/codemao/nemo/retrofit/api/WorkService;->cancelTopComment(JJ)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 921
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/fragment/WorkCommentFragment$18;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$18;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_8c
    return-void
.end method

.method private updateCommentCount(I)V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentFragmentCallBack:Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;

    if-nez v0, :cond_5

    return-void

    .line 685
    :cond_5
    invoke-interface {v0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;->updateCommentCount(I)V

    return-void
.end method

.method private updateFakerComment(Ljava/lang/String;)V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentFragmentCallBack:Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;

    if-nez v0, :cond_5

    return-void

    .line 692
    :cond_5
    invoke-interface {v0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;->updateFakerInput(Ljava/lang/String;)V

    return-void
.end method

.method private updateLikeStatus(IZ)V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setIs_liked(Z)V

    .line 523
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getN_likes()I

    move-result v1

    if-eqz p2, :cond_23

    const/4 p2, 0x1

    goto :goto_24

    :cond_23
    const/4 p2, -0x1

    :goto_24
    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setN_likes(I)V

    .line 524
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0170

    return v0
.end method

.method public getReportParams()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReportParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1083
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCommentType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()Z
    .registers 2

    .line 1071
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1072
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseComment(Lcom/codemao/nemo/event/ShowCloseEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 945
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showClose()V

    return-void
.end method

.method public onCommentEvent(Lcom/codemao/nemo/event/CommentEvents;)V
    .registers 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 953
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getCommentPosition()I

    move-result v0

    if-gez v0, :cond_a

    return-void

    .line 957
    :cond_a
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_19f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_12b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1d

    goto/16 :goto_222

    .line 1027
    :cond_1d
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_222

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getCommentId()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_222

    .line 1028
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->isLiked()Z

    move-result p1

    .line 1029
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setIs_liked(Z)V

    .line 1030
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->getN_likes()I

    move-result v2

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v3, -0x1

    :goto_60
    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setN_likes(I)V

    .line 1031
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_222

    .line 984
    :cond_6b
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    if-gez v1, :cond_74

    .line 986
    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 988
    :cond_74
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    invoke-direct {p0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 989
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getReplyId()J

    move-result-wide v4

    .line 990
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_222

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getCommentId()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-nez p1, :cond_222

    .line 991
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    if-eqz p1, :cond_222

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_222

    .line 992
    :goto_b9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_124

    .line 993
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_121

    .line 994
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 995
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setTotal(I)V

    goto :goto_124

    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 999
    :cond_124
    :goto_124
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_222

    .line 1004
    :cond_12b
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_185

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getCommentId()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_185

    .line 1005
    iget p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->offset:I

    .line 1006
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    .line 1007
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    sub-int/2addr v1, v3

    if-nez p1, :cond_15f

    const/4 p1, 0x0

    goto :goto_163

    :cond_15f
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result p1

    :goto_163
    sub-int/2addr v1, p1

    iput v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    if-gez v1, :cond_16a

    .line 1009
    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 1011
    :cond_16a
    iget p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 1012
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1013
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1014
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1017
    :cond_185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_222

    .line 1018
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->hasMore:Z

    if-eqz p1, :cond_198

    .line 1019
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto/16 :goto_222

    .line 1021
    :cond_198
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto/16 :goto_222

    .line 959
    :cond_19f
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    if-gez v1, :cond_1a8

    .line 961
    iput v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    .line 963
    :cond_1a8
    iget v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->totalReplyNum:I

    invoke-direct {p0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->updateCommentCount(I)V

    .line 964
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getWorkReplyItem()Lcom/codemao/nemo/bean/WorkReplyItem;

    move-result-object v1

    .line 965
    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_222

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/codemao/nemo/event/CommentEvents;->getCommentId()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_222

    .line 966
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentItem;

    .line 967
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v4

    if-nez v4, :cond_1ea

    .line 968
    new-instance v4, Lcom/codemao/nemo/bean/WorkCommentReplys;

    invoke-direct {v4}, Lcom/codemao/nemo/bean/WorkCommentReplys;-><init>()V

    invoke-virtual {p1, v4}, Lcom/codemao/nemo/bean/WorkCommentItem;->setReplies(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    .line 969
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setTotal(I)V

    .line 971
    :cond_1ea
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_200

    .line 972
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setItems(Ljava/util/List;)V

    .line 974
    :cond_200
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v4

    .line 975
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v5

    add-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/codemao/nemo/bean/WorkCommentReplys;->setTotal(I)V

    if-eqz v1, :cond_222

    .line 977
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 978
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_222
    :goto_222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 139
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 141
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, -0x1

    const-string v2, "workId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "isOwnWork"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isOwnWork:Z

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "workType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    :cond_3e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1050
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 1051
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_11

    .line 1053
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1039
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 1040
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1041
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    .line 1043
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1044
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_21
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 5

    .line 382
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    .line 383
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->toCommentPositionInUnLogin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 158
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 160
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->datas:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 161
    new-instance p2, Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget-object v5, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    new-instance v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;)V

    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 326
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance p2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 327
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 328
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_58

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 331
    :cond_58
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 332
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 334
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$2;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 350
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$3;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    new-array v0, v0, [I

    const v2, 0x7f0a08bd

    aput v2, v0, p2

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 376
    invoke-direct {p0, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getComments(Z)V

    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 1065
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setCommentFragmentCallBack(Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->commentFragmentCallBack:Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;

    return-void
.end method

.method public setOwnWork(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->isOwnWork:Z

    return-void
.end method

.method public showCommentInput(Z)V
    .registers 7

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_86

    .line 531
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    if-nez p1, :cond_25

    const-string v0, "一级"

    .line 535
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击发布评论"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 537
    :cond_25
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workId:J

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->workType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setSendListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 556
    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$10;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setOnStatusChangeListner(Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;)V

    .line 572
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setType(I)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setIsShowEmoj(Z)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setHint(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 573
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 575
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 576
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 577
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_86
    :goto_86
    return-void
.end method
