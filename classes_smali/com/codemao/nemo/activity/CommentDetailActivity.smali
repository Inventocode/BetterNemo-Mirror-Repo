.class public Lcom/codemao/nemo/activity/CommentDetailActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;


# instance fields
.field commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private commentDetailDelegate:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

.field private commentId:J

.field private commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

.field private commentPosition:I

.field private confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private content:Ljava/lang/String;

.field private customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field final discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private hasMore:Z

.field private hidePopBottom:I

.field private inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

.field private isFirst:Z

.field private isInit:Z

.field private isOwnWork:Z

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

.field private offset:I

.field private parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private replyAtPostion:I

.field private replyNum:I

.field private replys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;"
        }
    .end annotation
.end field

.field rlFakerReplyInput:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlReplyDetail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlTitle:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private screenHeight:I

.field private showMorePosition:I

.field private sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

.field private touchReplyId:J

.field tvFakerInput:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvReplyNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unLoginClickComment:Z

.field private unLoginReplyPosition:I

.field private workId:J

.field private workType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$aiC_kKqDyRbnJ1twajHI8AumpYw(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->lambda$onUserInfoChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fyoUfzt5zDiNZXusfImeclzSbqU(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->lambda$onUserInfoChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$sW8ZL6k2xbIClqEgvcZ9lOkPJ1Y(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->lambda$initView$2()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    const/16 v1, 0x3e7

    .line 101
    iput v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    .line 106
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isOwnWork:Z

    .line 108
    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    const-wide/16 v1, -0x1

    .line 109
    iput-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->touchReplyId:J

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isFirst:Z

    const/16 v2, -0x270f

    .line 119
    iput v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    .line 120
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isInit:Z

    .line 121
    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hidePopBottom:I

    .line 122
    iput v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    .line 124
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginClickComment:Z

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginReplyPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->showMorePosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->showMorePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/CommentDetailActivity;->likeReply(JI)V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginReplyPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/CommentDetailActivity;IZ)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->toReply(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->showInput()V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getCommentsDetail()V

    return-void
.end method

.method static synthetic access$1502(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/bean/WorkCommentReplys;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->setCommentDetail(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->setViewAfterLoading()V

    return-void
.end method

.method static synthetic access$1902(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginClickComment:Z

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/codemao/nemo/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->content:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/activity/CommentDetailActivity;J)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->replySuccess(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteReplySuccess(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteCommentSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/bean/WorkCommentItem;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/CommentDetailActivity;J)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteComment(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteReply(JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/CommentDetailActivity;)J
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/CommentDetailActivity;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isOwnWork:Z

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/CommentDetailActivity;->dislikeReply(JI)V

    return-void
.end method

.method private deleteComment(J)V
    .registers 10

    .line 753
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 754
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 757
    :cond_a
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$14;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$14;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->deleteCommentOrReply(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private deleteCommentSuccess()V
    .registers 7

    .line 848
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    if-eqz v0, :cond_7

    .line 849
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 851
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v3

    iget v5, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentPosition:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/codemao/nemo/event/CommentEvents;->creatCommentDeleteSuccessEvent(JJI)Lcom/codemao/nemo/event/CommentEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 852
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    return-void
.end method

.method private deleteReply(JI)V
    .registers 11

    .line 723
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 724
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 727
    :cond_a
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$13;

    invoke-direct {v6, p0, p3}, Lcom/codemao/nemo/activity/CommentDetailActivity$13;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->deleteCommentOrReply(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private deleteReplySuccess(I)V
    .registers 10

    .line 827
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    if-eqz v0, :cond_7

    .line 828
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    const-string/jumbo v0, "删除成功"

    .line 830
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 832
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v3

    iget v5, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentPosition:I

    iget-object v6, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/event/CommentEvents;->creatReplyDeleteSuccessEvent(JJIJ)Lcom/codemao/nemo/event/CommentEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 834
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 835
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 836
    iget p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    .line 837
    iget p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    .line 838
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_60

    .line 839
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hasMore:Z

    if-eqz p1, :cond_60

    .line 840
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    .line 843
    :cond_60
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateTitle()V

    return-void
.end method

.method private dislikeReply(JI)V
    .registers 11

    const/4 v0, 0x0

    .line 796
    invoke-direct {p0, p3, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateLikeStatus(IZ)V

    .line 797
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$16;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$16;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->disLikePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getCommentsDetail()V
    .registers 8

    .line 414
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-wide v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentId:J

    iget v5, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$5;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$5;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getReplys(JJILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private initData()V
    .registers 6

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commentItem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workType:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commentPostion"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentPosition:I

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showSoftInput"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isOwnWork"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isOwnWork:Z

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "touchReplyId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->touchReplyId:J

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commentId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentId:J

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    .line 172
    :cond_79
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-nez v0, :cond_ac

    .line 173
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 174
    new-instance v0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workType:Ljava/lang/String;

    new-instance v3, Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailDelegate:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    .line 302
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    :cond_ac
    return-void
.end method

.method private initView()V
    .registers 4

    .line 372
    new-instance v0, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    .line 373
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 374
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rlReplyDetail:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_27

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 378
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 379
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateTitle()V

    .line 380
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$3;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 391
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/codemao/nemo/activity/CommentDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$4;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 400
    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_59

    .line 401
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_5f

    .line 403
    :cond_59
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 405
    :goto_5f
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 409
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_8a
    return-void
.end method

.method private synthetic lambda$initView$2()V
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->start()V

    return-void
.end method

.method private synthetic lambda$onUserInfoChanged$0()V
    .registers 2

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->toComment(Z)V

    return-void
.end method

.method private synthetic lambda$onUserInfoChanged$1()V
    .registers 3

    .line 151
    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginReplyPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->toReply(IZ)V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginReplyPosition:I

    return-void
.end method

.method private likeReply(JI)V
    .registers 11

    const/4 v0, 0x1

    .line 776
    invoke-direct {p0, p3, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateLikeStatus(IZ)V

    .line 777
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$15;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$15;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->likePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private replySuccess(J)V
    .registers 9

    .line 676
    new-instance v5, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {v5}, Lcom/codemao/nemo/bean/WorkReplyItem;-><init>()V

    .line 677
    invoke-virtual {v5, p1, p2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setId(J)V

    .line 678
    iget p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    if-eqz p1, :cond_13

    .line 679
    invoke-virtual {v5, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setParent_user(Lcom/codemao/nemo/bean/UserInfo;)V

    .line 681
    :cond_13
    new-instance p1, Lcom/codemao/nemo/bean/UserInfo;

    invoke-direct {p1}, Lcom/codemao/nemo/bean/UserInfo;-><init>()V

    .line 683
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p2

    if-eqz p2, :cond_57

    .line 685
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/bean/UserInfo;->setId(J)V

    .line 686
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getFullname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setAvatar_url(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setAuthor_level(I)V

    .line 690
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setConsume_level(I)V

    .line 691
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setSmall_head_frame_url(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/UserInfo;->setHead_frame_url(Ljava/lang/String;)V

    goto :goto_7d

    .line 694
    :cond_57
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p2

    if-eqz p2, :cond_7d

    .line 696
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/bean/UserInfo;->setId(J)V

    .line 697
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/UserInfoVO;->getFullname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/UserInfo;->setAvatar_url(Ljava/lang/String;)V

    .line 702
    :cond_7d
    :goto_7d
    invoke-virtual {v5, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setReply_user(Lcom/codemao/nemo/bean/UserInfo;)V

    const/4 p1, 0x1

    .line 703
    invoke-virtual {v5, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setIs_own(Z)V

    .line 704
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->content:Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setContent(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setCreated_at(J)V

    .line 706
    invoke-virtual {v5, p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setManualAdd(Z)V

    .line 707
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {p2, p1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 708
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 710
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 711
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    .line 712
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateTitle()V

    .line 713
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    if-eqz p1, :cond_d1

    const-string p2, ""

    .line 714
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 715
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->clearEmoji()V

    .line 716
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    .line 718
    :cond_d1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v2

    iget v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentPosition:I

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/event/CommentEvents;->creatReplySuccessEvents(JJILcom/codemao/nemo/bean/WorkReplyItem;)Lcom/codemao/nemo/event/CommentEvents;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private sendReply(JJLjava/lang/String;J)V
    .registers 19

    move-object v0, p0

    .line 644
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 645
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 648
    :cond_b
    iget-object v2, v0, Lcom/codemao/nemo/activity/CommentDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v10, Lcom/codemao/nemo/activity/CommentDetailActivity$12;

    invoke-direct {v10, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$12;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->sendReply(JJLjava/lang/String;JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private setCommentDetail(Lcom/codemao/nemo/bean/WorkCommentReplys;)V
    .registers 11

    .line 443
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->setViewAfterLoading()V

    .line 444
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getHead_item()Lcom/codemao/nemo/bean/ReplyCommentInfo;

    move-result-object v0

    if-nez v0, :cond_17

    .line 445
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    const-string/jumbo p1, "评论已被删除"

    .line 446
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 449
    :cond_17
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getHead_item()Lcom/codemao/nemo/bean/ReplyCommentInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 450
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getHead_item()Lcom/codemao/nemo/bean/ReplyCommentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ReplyCommentInfo;->getWork_user_id()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isOwnWork:Z

    .line 453
    :cond_3e
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    .line 454
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->updateTitle()V

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 456
    iget v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    if-nez v3, :cond_70

    .line 458
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    if-nez v0, :cond_64

    .line 460
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getHead_item()Lcom/codemao/nemo/bean/ReplyCommentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ReplyCommentInfo;->transToCommentItem()Lcom/codemao/nemo/bean/WorkCommentItem;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    .line 462
    :cond_64
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->transToReply()Lcom/codemao/nemo/bean/WorkReplyItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 464
    :cond_70
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f9

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_82

    goto/16 :goto_f9

    .line 470
    :cond_82
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    iget v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    const/4 v4, -0x1

    if-nez v3, :cond_ca

    .line 473
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 474
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isFirst:Z

    if-eqz v0, :cond_db

    const/4 v0, 0x0

    .line 476
    :goto_9a
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_bd

    .line 477
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->touchReplyId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_ba

    .line 479
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailDelegate:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-virtual {v3, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setTouchPostion(I)V

    move v4, v0

    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 483
    :cond_bd
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/activity/CommentDetailActivity$6;

    invoke-direct {v3, p0, v4}, Lcom/codemao/nemo/activity/CommentDetailActivity$6;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_db

    .line 492
    :cond_ca
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailDelegate:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setTouchPostion(I)V

    .line 493
    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 496
    :cond_db
    :goto_db
    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    .line 497
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result p1

    if-ge v0, p1, :cond_ef

    const/4 v1, 0x1

    :cond_ef
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hasMore:Z

    .line 498
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void

    .line 465
    :cond_f9
    :goto_f9
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 466
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setViewAfterLoading()V
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 869
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method private showInput()V
    .registers 5

    .line 581
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workType:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$10;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setSendListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 589
    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$11;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setOnStatusChangeListner(Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;)V

    .line 601
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setType(I)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setIsShowEmoj(Z)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "回复"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    :cond_4b
    const-string v1, " :"

    :goto_4d
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->setHint(Ljava/lang/String;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 602
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 605
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->inputDialog:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    .line 606
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private toComment(Z)V
    .registers 5

    const/4 p1, 0x0

    .line 534
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    .line 535
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 536
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    :cond_19
    const-string v0, "二级"

    .line 538
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击发布评论"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 540
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/codemao/nemo/activity/CommentDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$9;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method private toReply(IZ)V
    .registers 5

    .line 325
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_16

    .line 326
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->parentUserInfo:Lcom/codemao/nemo/bean/UserInfo;

    .line 328
    :cond_16
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    const-string p1, "二级"

    .line 329
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "作品详情页-点击评论内容卡片"

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$2;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method private updateLikeStatus(IZ)V
    .registers 10

    .line 816
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setIs_liked(Z)V

    .line 817
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getN_likes()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, -0x1

    :goto_26
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setN_likes(I)V

    if-nez p1, :cond_55

    .line 819
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setIs_liked(Z)V

    .line 820
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getN_likes()I

    move-result v1

    if-eqz p2, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, -0x1

    :goto_3b
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setN_likes(I)V

    .line 821
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v3

    iget v5, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentPosition:I

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/event/CommentEvents;->createUpdateCommentLikeStatusEvent(JJIZ)Lcom/codemao/nemo/event/CommentEvents;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 823
    :cond_55
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentDetailAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private updateTitle()V
    .registers 4

    .line 874
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvReplyNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "条回复"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method close(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 626
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d003c

    return v0
.end method

.method public finish()V
    .registers 3

    .line 857
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01004c

    .line 858
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
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

    .line 937
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workType:Ljava/lang/String;

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

    .line 933
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCommentType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "二级评论页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 135
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->initData()V

    .line 138
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->initView()V

    .line 139
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getCommentsDetail()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 631
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 632
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_11

    .line 634
    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->close()V

    .line 636
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_18

    .line 637
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_18
    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 927
    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    if-nez v0, :cond_12

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 928
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    :cond_12
    return-void
.end method

.method public onFinishAnswer(Lcom/codemao/nemo/event/FinishAnswerEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 920
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 921
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper;->showGuide(ILandroid/app/Activity;)V

    :cond_12
    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 6

    .line 896
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    if-gtz p2, :cond_c

    .line 897
    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rlReplyDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    .line 899
    :cond_c
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    .line 900
    iput p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hidePopBottom:I

    .line 901
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->isInit:Z

    goto :goto_3a

    .line 903
    :cond_16
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    if-gtz p2, :cond_2a

    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hidePopBottom:I

    if-le p1, p2, :cond_2a

    sub-int v1, p1, p2

    iget v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2a

    sub-int p2, p1, p2

    .line 904
    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    .line 906
    :cond_2a
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    iget v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    if-le p2, v1, :cond_3a

    .line 907
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hidePopBottom:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    .line 910
    :cond_3a
    :goto_3a
    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_52

    .line 911
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/SoftInputHeightEvent;

    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyBoardHeight:I

    invoke-direct {p2, v0}, Lcom/codemao/nemo/event/SoftInputHeightEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5e

    .line 913
    :cond_52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/SoftInputHeightEvent;

    invoke-direct {p2, v0}, Lcom/codemao/nemo/event/SoftInputHeightEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_5e
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 889
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    .line 890
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 891
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    :cond_b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 879
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 880
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_a

    .line 881
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 882
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 883
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->sortDialog:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_19
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 6

    .line 144
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 146
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginClickComment:Z

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    .line 147
    iput-boolean v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginClickComment:Z

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v4, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 149
    :cond_17
    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->unLoginReplyPosition:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_26

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v4, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_26
    :goto_26
    iput v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->offset:I

    .line 157
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getCommentsDetail()V

    return-void
.end method

.method replyAtComment(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 509
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_b

    goto :goto_2a

    .line 514
    :cond_b
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_26

    .line 515
    new-instance p1, Lcom/codemao/nemo/activity/CommentDetailActivity$7;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$7;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    new-instance v0, Lcom/codemao/nemo/activity/CommentDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$8;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    .line 527
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "作品详情页-点击前往登录（评论）"

    .line 515
    invoke-static {p0, v2, p1, v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void

    :cond_26
    const/4 p1, 0x0

    .line 530
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->toComment(Z)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method send()V
    .registers 11

    const-string v0, "二级"

    .line 611
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击评论发送"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 612
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 613
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    :cond_16
    const-wide/16 v0, -0x1

    .line 617
    iget v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replyAtPostion:I

    if-le v2, v3, :cond_32

    .line 618
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->replys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v0

    :cond_32
    move-wide v8, v0

    .line 620
    iget-wide v3, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->commentItem:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/codemao/nemo/activity/CommentDetailActivity;->content:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/codemao/nemo/activity/CommentDetailActivity;->sendReply(JJLjava/lang/String;J)V

    return-void
.end method
