.class public Lcom/codemao/nemo/fragment/WorkDetailFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "WorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/fragment/WorkDetailFragment$WorkDetailFragmentCallBack;
    }
.end annotation


# instance fields
.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

.field private expandHeight:I

.field flDes:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flUserName:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field isExpand:Z

.field private isLargePad:Z

.field private isOwnWork:Z

.field ivAvatarFrame:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExpand:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivUserAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivUserLevelSign:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWorkSource:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field knAIContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field knNormalContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ll_content:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/HorCommonInfo;",
            ">;"
        }
    .end annotation
.end field

.field rlNum:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private rvBaseAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field rv_detail:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rv_tags:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shrinkDes:Ljava/lang/String;

.field tvBlockNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDes:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFollow:Lcom/codemao/nemo/view/RoundTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvReworkAllow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvReworkUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRoleNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWorkName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWorkSource:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

.field private work_label_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isExpand:Z

    const/high16 v0, 0x41900000  # 18.0f

    .line 129
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->expandHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/WorkDetailFragment;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->expandHeight:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/fragment/WorkDetailFragment;I)I
    .registers 2

    .line 73
    iput p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->expandHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/WorkDetailFragment;IILjava/lang/String;)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->doExandAndShrinAnim(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->shrinkDes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/fragment/WorkDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->shrinkDes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/WorkDetailFragment;ZLjava/lang/String;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setWorkName(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isLargePad:Z

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Ljava/util/List;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->work_label_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/WorkDetailFragment;Lcom/codemao/nemo/bean/WorkDetailRecommends;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setBottomData(Lcom/codemao/nemo/bean/WorkDetailRecommends;)V

    return-void
.end method

.method private doExandAndShrinAnim(IILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 190
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    new-instance v0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/HorCommonInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_10

    .line 535
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 536
    new-instance v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    invoke-direct {v0, p2, p3}, Lcom/codemao/nemo/bean/HorCommonInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public static getInstance(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/nemo/fragment/WorkDetailFragment$WorkDetailFragmentCallBack;)Lcom/codemao/nemo/fragment/WorkDetailFragment;
    .registers 4

    .line 136
    new-instance v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setFragmentCallBack(Lcom/codemao/nemo/fragment/WorkDetailFragment$WorkDetailFragmentCallBack;)V

    .line 138
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "workDetail"

    .line 139
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 140
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getRecommensList()V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/fragment/WorkDetailFragment$8;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$8;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getWorkDetailBottomRecommend(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private isKnWork()Z
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyDataChange()V
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V

    .line 180
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getRecommensList()V

    return-void
.end method

.method private setBottomData(Lcom/codemao/nemo/bean/WorkDetailRecommends;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getTa_work_list()Ljava/util/List;

    move-result-object v1

    const-string v2, "Ta的作品"

    invoke-direct {p0, v0, v2, v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_label_list()Ljava/util/List;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;

    .line 504
    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OFFICIAL_COURSE_WORK"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_40

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object v5

    const-string v7, "USER_COURSE_WORK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    :cond_40
    const/4 v2, 0x1

    .line 507
    :cond_41
    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NEW_RECOMMEND_WORK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;->getLabel_type()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUBJECT_WORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_1b

    :cond_58
    if-eqz v2, :cond_71

    .line 515
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getOfficial_work_list()Ljava/util/List;

    move-result-object v2

    const-string v3, "星能猫小课堂"

    invoke-direct {p0, v0, v3, v2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    .line 516
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getUser_work_list()Ljava/util/List;

    move-result-object p1

    const-string v2, "大家的知识库"

    invoke-direct {p0, v0, v2, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a0

    :cond_71
    const-string v0, "潜力新作"

    if-eqz v3, :cond_8c

    .line 518
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getLabel_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getSubject_work_list()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    .line 519
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getNew_work_list()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, v0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a0

    .line 521
    :cond_8c
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getNew_work_list()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    .line 522
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkDetailRecommends;->getSystem_work_list()Ljava/util/List;

    move-result-object p1

    const-string v2, "精品推荐"

    invoke-direct {p0, v0, v2, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getHorData(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)V

    .line 526
    :goto_a0
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rvBaseAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 527
    new-instance v0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 528
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_detail:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 529
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_detail:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 530
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_detail:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rvBaseAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setData()V
    .registers 10

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-nez v0, :cond_5

    return-void

    .line 215
    :cond_5
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 218
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rlNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_26

    .line 216
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rlNum:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    :goto_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    new-instance v4, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iput-boolean v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isExpand:Z

    .line 246
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v5

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isOwnWork:Z

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCombDesCription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->shrinkDes:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCombDesCription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    new-instance v5, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 277
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setTagData()V

    .line 278
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvBlockNum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "积木:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_brick()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvRoleNum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "角色:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_roles()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 282
    iget-object v5, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    instance-of v6, v5, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-eqz v6, :cond_c2

    .line 283
    check-cast v5, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v5}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isAITag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 285
    :cond_c2
    iget-object v5, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_302

    :goto_d3
    const/4 v4, -0x1

    goto :goto_fc

    :sswitch_d5
    const-string v1, "KITTEN4"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    goto :goto_d3

    :cond_de
    const/4 v4, 0x3

    goto :goto_fc

    :sswitch_e0
    const-string v1, "KITTEN3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    goto :goto_d3

    :cond_e9
    const/4 v4, 0x2

    goto :goto_fc

    :sswitch_eb
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fc

    goto :goto_d3

    :sswitch_f2
    const-string v1, "NEKO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    goto :goto_d3

    :cond_fb
    const/4 v4, 0x0

    :cond_fc
    :goto_fc
    const-string v1, "#FFFAB300"

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_314

    move-object v0, v5

    goto/16 :goto_1d3

    .line 297
    :pswitch_105  #0x3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080456

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v6, "作品由kitten4.0创作"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1d3

    .line 292
    :pswitch_122  #0x2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080455

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v6, "作品由kitten3.0创作"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1d3

    .line 287
    :pswitch_13f  #0x1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v4, "作品由nemo创作"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v4, "#FF786EC6"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1d3

    .line 302
    :pswitch_15d  #0x0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080457

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 303
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v4, 0x42200000  # 40.0f

    .line 305
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flUserName:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    const/high16 v4, 0x41100000  # 9.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v4, 0x42480000  # 50.0f

    .line 312
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, 0x42540000  # 53.0f

    .line 313
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knAIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knNormalContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1d2

    .line 318
    :cond_1b6
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v4, "该作品使用 KittenN 编辑器创作"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkSource:Landroid/widget/TextView;

    const-string v4, "#FF6536E8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knAIContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->knNormalContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1d2
    move-object v0, v1

    :goto_1d3
    if-eqz v0, :cond_1da

    .line 326
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivWorkSource:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_1da
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPublish_time()J

    move-result-wide v6

    sget v1, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v6, v7, v1}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater3(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v0

    if-nez v0, :cond_21f

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkAllow:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkAllow:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12025b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24a

    .line 336
    :cond_21f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkAllow:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkAllow:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f12025a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_24a
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isOwnWork:Z

    if-eqz v0, :cond_254

    .line 342
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_259

    .line 344
    :cond_254
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    :goto_259
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    if-eqz v0, :cond_2a3

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->isFork_user()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setFollow(Z)V

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getAuthor_level()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setUserLevelInfo(ILjava/lang/String;)V

    .line 352
    :cond_2a3
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getParent_id()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_2be

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setWorkName(ZLjava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_300

    .line 356
    :cond_2be
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getParent_user_name()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2ef

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_2ef
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$5;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_300
    return-void

    nop

    :sswitch_data_302
    .sparse-switch
        0x24815b -> :sswitch_f2
        0x248199 -> :sswitch_eb
        0xcc138c -> :sswitch_e0
        0xcc138d -> :sswitch_d5
    .end sparse-switch

    :pswitch_data_314
    .packed-switch 0x0
        :pswitch_15d  #00000000
        :pswitch_13f  #00000001
        :pswitch_122  #00000002
        :pswitch_105  #00000003
    .end packed-switch
.end method

.method private setTagData()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-nez v0, :cond_5

    return-void

    .line 399
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->updateThemeTags()V

    return-void
.end method

.method private setUserLevelInfo(ILjava/lang/String;)V
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment$11;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    const/high16 v2, 0x42580000  # 54.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x8

    if-eqz p1, :cond_68

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_54

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_42

    const/4 v2, 0x5

    if-eq p1, v2, :cond_39

    .line 758
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_72

    :cond_39
    const p1, 0x7f0804e0

    .line 755
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_72

    :cond_42
    const p1, 0x7f0804df

    .line 752
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_72

    .line 749
    :cond_4b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804de

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_72

    .line 746
    :cond_54
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804dd

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_72

    .line 742
    :cond_5d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 743
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_72

    .line 738
    :cond_68
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvUserName:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 739
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivUserLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    :goto_72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 763
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_88

    .line 765
    :cond_7e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_88
    return-void
.end method

.method private setWorkName(ZLjava/lang/String;)V
    .registers 6

    .line 627
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_28

    .line 630
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 631
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvReworkUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    const/high16 p1, 0x3f800000  # 1.0f

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/4 v2, 0x0

    :goto_20
    if-ge v2, p1, :cond_28

    .line 634
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 637
    :cond_28
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 638
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvWorkName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showUnLoginDialog()V
    .registers 4

    .line 547
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getReportParams()Ljava/util/Map;

    move-result-object v1

    const-string v2, "作品详情页-点击前往登录（关注）"

    invoke-static {v0, v2, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 156
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isLargePad:Z

    const v0, 0x7f0d0171

    return v0
.end method

.method public follow(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 554
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 559
    :cond_12
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 560
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->showUnLoginDialog()V

    return-void

    .line 563
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 564
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->isFork_user()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 565
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击取消关注"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 566
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_69

    .line 587
    :cond_4c
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击关注"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 588
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v0

    new-instance v2, Lcom/codemao/nemo/fragment/WorkDetailFragment$10;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$10;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_69
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

    .line 771
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-eqz v0, :cond_32

    .line 772
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 162
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "workDetail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 168
    :cond_26
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 650
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 651
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    if-eqz v0, :cond_11

    .line 653
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    :cond_11
    return-void
.end method

.method public onFollowUserEvent(Lcom/codemao/nemo/event/FollowUserEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-eqz v0, :cond_20

    .line 668
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    .line 669
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setFollow(Z)V

    :cond_20
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 14
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 676
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    .line 677
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v4

    const/4 v6, 0x5

    cmp-long v7, v2, v4

    if-nez v7, :cond_44

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v2

    if-ne v2, v6, :cond_44

    .line 678
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v2

    .line 679
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 680
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 682
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 683
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V

    .line 685
    :cond_44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 688
    :goto_50
    iget-object v7, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9c

    .line 689
    iget-object v7, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/nemo/bean/HorCommonInfo;

    .line 690
    invoke-virtual {v7}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_99

    const/4 v8, 0x0

    .line 691
    :goto_67
    invoke-virtual {v7}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_99

    .line 692
    invoke-virtual {v7}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getWork_id()J

    move-result-wide v9

    cmp-long v11, v0, v9

    if-nez v11, :cond_96

    .line 693
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_96
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 700
    :cond_9c
    :goto_9c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a3

    return-void

    .line 703
    :cond_a3
    :goto_a3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_117

    .line 704
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->objects:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    if-nez v0, :cond_d4

    return-void

    .line 708
    :cond_d4
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    if-ne v1, v6, :cond_f4

    .line 709
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    .line 710
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rvBaseAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-eqz v0, :cond_114

    .line 713
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_114

    .line 715
    :cond_f4
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_114

    .line 716
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result v1

    .line 717
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getLike_times()J

    move-result-wide v7

    if-eqz v1, :cond_107

    const/4 v1, 0x1

    goto :goto_108

    :cond_107
    const/4 v1, -0x1

    :goto_108
    int-to-long v9, v1

    add-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->setLike_times(J)V

    .line 718
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rvBaseAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-eqz v0, :cond_114

    .line 719
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_114
    :goto_114
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_117
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 1

    .line 185
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    .line 186
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->notifyDataChange()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 174
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 175
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->notifyDataChange()V

    return-void
.end method

.method public setFollow(Z)V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_29

    .line 615
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->setFork_user(Z)V

    .line 616
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundTextView;->setBackgroungColor(I)V

    .line 617
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string v0, "已关注"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 619
    :cond_29
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->setFork_user(Z)V

    .line 620
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundTextView;->setBackgroungColor(I)V

    .line 621
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string v0, "关注"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4a
    return-void
.end method

.method public setFragmentCallBack(Lcom/codemao/nemo/fragment/WorkDetailFragment$WorkDetailFragmentCallBack;)V
    .registers 2

    return-void
.end method

.method public setWorkDetail(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 2

    .line 658
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    return-void
.end method

.method toUserDetail(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 542
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "作品详情页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateThemeTags()V
    .registers 10

    .line 404
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_label_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_label_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_69

    .line 406
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_label_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->work_label_list:Ljava/util/List;

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_tags:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000  # 7.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000  # 4.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000  # 15.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 414
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_tags:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_label_list()Ljava/util/List;

    move-result-object v4

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/codemao/nemo/fragment/WorkDetailFragment$6;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;Ljava/util/List;IIII)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/codemao/nemo/view/flowlayout/TagAdapter;)V

    .line 442
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->rv_tags:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment$7;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;)V

    :cond_69
    :goto_69
    return-void
.end method

.method public updateWorkInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 644
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V

    return-void
.end method
