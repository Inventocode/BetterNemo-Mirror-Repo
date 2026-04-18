.class public Lcom/codemao/nemo/activity/WorkDetailActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;


# instance fields
.field appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private collectWorkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field customTabView:Lcom/codemao/nemo/view/CustomTabView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private hidePopBottom:I

.field private isCloseComment:Z

.field private isEmpty:Z

.field private isInit:Z

.field private isUnLoginCommentClick:Z

.field private isUnLoginCommentIsShowEmoji:Z

.field ivCollect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPraise:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivToRework:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private keyBoardHeight:I

.field private keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

.field llCollect:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPraise:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llRework:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llShare:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private reWorkKnDialog:Lcom/codemao/nemo/view/ReWorkKnDialog;

.field private reworkHelper:Lcom/codemao/nemo/util/ReworkHelper;

.field rlFakerCommentInput:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlScroll:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvEmpty:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvReview:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private screenHeight:I

.field private shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private sortDialog:Lcom/codemao/nemo/view/SortDialog;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field toScroll:I

.field toobarEmpty:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toobarError:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toobarLoading:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toobarReview:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private toolBarHeight:I

.field toolbar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvBrowseNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCollect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCollectAnim:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFakerInput:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMayLike:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPraise:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPraiseAnim:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvShare:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvToRework:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private viewModel:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

.field private workCover:Ljava/lang/String;

.field private workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

.field workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

.field workDetailPageAdapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

.field private workDetailVM:Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

.field private workId:J


# direct methods
.method public static synthetic $r8$lambda$-jFfVLBLa3pQprVSH2d7FuMCxFI(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0igVbUZUVj1p1ciaQqhFoRPXPCI()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$showCommentInput$5()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8hiMKGkw22TvO_uYqvvptetquoA(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lkotlin/Unit;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$showCommentInputInExp$8()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JADqmBcVhPzEUmo7_zK2xtV5DBM(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$forkWorkKn$4(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JM3S6_iksncRH0fwwxzB-Nq5jJ0(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lkotlin/Unit;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$showCommentInput$6()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$feoDrE37bHamfZBngD-w5cImBbA()Lkotlin/Unit;
    .registers 1

    invoke-static {}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$showCommentInputInExp$7()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$maEZDA__I2StxtseQyq_VjAa0_k(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$rework$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$omtfwn5smJqI_nVB7eiSefYuK9w(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$onUserInfoChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ydc_Gm3ulki8LkHt8KEJM61Lbjg(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->lambda$rework$2(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 145
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    .line 230
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isEmpty:Z

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isCloseComment:Z

    const/16 v2, -0x270f

    .line 245
    iput v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    .line 246
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isInit:Z

    .line 247
    iput v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->hidePopBottom:I

    .line 248
    iput v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->fragments:Ljava/util/List;

    .line 1091
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentClick:Z

    .line 1092
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentIsShowEmoji:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isEmpty:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/WorkDetailActivity;)I
    .registers 1

    .line 145
    iget p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolBarHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J
    .registers 3

    .line 145
    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setWorkDetailData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/activity/WorkDetailActivity;Ljava/util/List;Z)V
    .registers 3

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setEmptyData(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/util/List;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->toEditInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->editBlocks()V

    return-void
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPublishWork()V

    return-void
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->titles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/WorkDetailActivity;I)F
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getToolBarBgAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/LoadingDialog;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenWork()V

    return-void
.end method

.method static synthetic access$2300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenSuccess()V

    return-void
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewModel:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDownload(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goBcmActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isCloseComment:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showAntiAddictionLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/fragment/WorkCommentFragment;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/view/SortDialog;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->sortDialog:Lcom/codemao/nemo/view/SortDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isKnWork()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showBuyKittenWork()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    return-object p0
.end method

.method private buyKittenSuccess()V
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_b

    .line 862
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 864
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    const-string/jumbo v1, "作品已保存至云端"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "稍后可在电脑端「作品管理」页面查看"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "取消"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "复制链接"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 865
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$23;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$23;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 880
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private buyKittenWork()V
    .registers 5

    .line 824
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v3, Lcom/codemao/nemo/activity/WorkDetailActivity$22;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$22;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->forkWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private cancelPublishWork()V
    .registers 4

    .line 1209
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1210
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1213
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_3b

    .line 1214
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$30;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$29;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$29;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 1273
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 1279
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 1281
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private checkAntiAddictionState()V
    .registers 3

    .line 2124
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 2125
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getBackendHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getAntiAddictionState(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2126
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2127
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$54;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$54;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 2128
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private doCollectAnim(Z)V
    .registers 10

    .line 1808
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 1809
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCollect_times()I

    move-result v1

    const-wide/16 v2, 0x23

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    if-eqz p1, :cond_51

    .line 1811
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollectAnim:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v0

    invoke-direct {p1, v6, v6, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1813
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v7, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1814
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1815
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1816
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1817
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$48;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$48;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1834
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$49;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity$49;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1853
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1854
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollectAnim:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8e

    .line 1856
    :cond_51
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollectAnim:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-int v7, v0

    int-to-float v7, v7

    invoke-direct {p1, v6, v6, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1858
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v7, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1859
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1860
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1861
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1862
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$50;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$50;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1878
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$51;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity$51;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1897
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1898
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollectAnim:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_8e
    return-void
.end method

.method private doPraiseAnim(Z)V
    .registers 10

    .line 1556
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 1557
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraiseAnim:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPraise_times()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x23

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    if-eqz p1, :cond_74

    .line 1559
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_37

    .line 1560
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f08005c

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 1561
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1563
    :cond_37
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1565
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v0

    invoke-direct {p1, v6, v6, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1566
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v1, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1567
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1568
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1569
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1570
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$39;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$39;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1586
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$40;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$40;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1604
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1605
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraiseAnim:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c6

    .line 1607
    :cond_74
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez p1, :cond_8a

    .line 1608
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f080057

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 1609
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1611
    :cond_8a
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1613
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v0

    int-to-float v1, v1

    invoke-direct {p1, v6, v6, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1614
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v6, v6, v0, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1615
    invoke-virtual {p1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1616
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1617
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1618
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$41;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$41;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1634
    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$42;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$42;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1652
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1653
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraiseAnim:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_c6
    return-void
.end method

.method private editBlocks()V
    .registers 9

    .line 1286
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1287
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1288
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1291
    :cond_10
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isWorkLandscape()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x1

    const-string v5, "KN"

    const-string v6, "normal"

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1295
    :cond_2e
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getBcmFromLocal()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1297
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1298
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goBcmActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void

    .line 1301
    :cond_3e
    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_88

    .line 1304
    :cond_55
    new-instance v1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v2, "不了"

    .line 1305
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string/jumbo v2, "更新"

    .line 1306
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string v2, ""

    .line 1307
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string/jumbo v2, "该作品在云端有更新的版本，是否下载最新版本进行编辑？"

    .line 1308
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    .line 1309
    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$31;

    invoke-direct {v2, p0, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity$31;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 1316
    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$32;

    invoke-direct {v2, p0, v1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity$32;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 1324
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_9d

    .line 1302
    :cond_88
    :goto_88
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goBcmActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_9d

    .line 1328
    :cond_8c
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string/jumbo v0, "网络不可用，无法下载作品，请检查网络设置"

    .line 1329
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_9d

    :cond_99
    const/4 v0, 0x0

    .line 1331
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDownload(I)V

    :goto_9d
    return-void
.end method

.method private forkWorkKn()V
    .registers 4

    .line 949
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailVM:Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;->forkWork(J)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getAduanInfo()V
    .registers 5

    .line 2071
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$52;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$52;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const-wide/32 v2, 0x4e4e2

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getUserDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getBcmFromLocal()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 8

    .line 1367
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v0

    .line 1368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1369
    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1370
    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1371
    iget-wide v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_8

    return-object v1

    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEmptyWorks(Z)V
    .registers 4

    .line 640
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$16;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$16;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getEmptyWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 3

    .line 1085
    iget v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolBarHeight:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_13

    .line 1086
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolBarHeight:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_15

    :cond_13
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_15
    return p1
.end method

.method private goBcmActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 1338
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x1

    .line 1339
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 1340
    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 1342
    iget v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    .line 1343
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 1344
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 1345
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 1346
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    return-void
.end method

.method public static goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workId"

    .line 284
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "workCover"

    .line 285
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from"

    .line 286
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "themeId"

    .line 287
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "workCover"

    .line 270
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "workId"

    .line 271
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "from"

    .line 272
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "themeId"

    .line 273
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    sget-object p2, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p2}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p2

    if-eqz p2, :cond_27

    .line 275
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3d

    .line 277
    :cond_27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12032d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 278
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_3d
    return-void
.end method

.method private goDownload(I)V
    .registers 5

    .line 1350
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_b

    const p1, 0x7f1202e8

    .line 1351
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1355
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/codemao/nemo/util/BcmHelper;->showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 1358
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    const-string v2, "workDetail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "downloadType"

    .line 1360
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initShareModel()V
    .registers 5

    .line 1031
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 1032
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 1034
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUnify_share_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120335

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    :cond_65
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    :goto_6b
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitleWX(Ljava/lang/String;)V

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 1042
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 1044
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$27;

    const/16 v2, 0x78

    invoke-direct {v1, p0, v2, v2}, Lcom/codemao/nemo/activity/WorkDetailActivity$27;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;II)V

    .line 1045
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private isKnWork()Z
    .registers 3

    .line 1054
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkLandscape()Z
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private synthetic lambda$forkWorkKn$4(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 10

    .line 950
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 951
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_34

    .line 952
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isPraised()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 953
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseWorkOrCancel(Landroid/view/View;)V

    .line 955
    :cond_16
    sget-object v1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    .line 957
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->getWork_id()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v5, "KN"

    const-string v6, "normal"

    move-object v2, p0

    .line 955
    invoke-virtual/range {v1 .. v7}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 962
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reWorkKnDialog:Lcom/codemao/nemo/view/ReWorkKnDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_52

    .line 963
    :cond_34
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    if-eqz v0, :cond_52

    .line 964
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x263e48a

    if-ne p1, v0, :cond_52

    .line 965
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reWorkKnDialog:Lcom/codemao/nemo/view/ReWorkKnDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string/jumbo p1, "作品已取消发布"

    .line 966
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->start()V

    return-void
.end method

.method private synthetic lambda$onUserInfoChanged$1()V
    .registers 3

    .line 557
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentIsShowEmoji:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->toComment(ZZ)V

    return-void
.end method

.method private synthetic lambda$rework$2(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4

    .line 904
    instance-of p1, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz p1, :cond_24

    .line 905
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->creatFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 906
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setFollow(Z)V

    const-string/jumbo p1, "关注成功"

    .line 907
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 908
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->forkWorkKn()V

    :cond_24
    return-void
.end method

.method private synthetic lambda$rework$3(I)V
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    .line 899
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void

    .line 902
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getNeedFollow()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 903
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailVM:Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getUserId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;->followUser(J)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_29

    .line 912
    :cond_26
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->forkWorkKn()V

    :goto_29
    return-void
.end method

.method private static synthetic lambda$showCommentInput$5()Lkotlin/Unit;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$showCommentInput$6()Lkotlin/Unit;
    .registers 2

    const/4 v0, 0x1

    .line 1102
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentClick:Z

    const/4 v0, 0x0

    .line 1103
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentIsShowEmoji:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$showCommentInputInExp$7()Lkotlin/Unit;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$showCommentInputInExp$8()Lkotlin/Unit;
    .registers 2

    const/4 v0, 0x1

    .line 1163
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentClick:Z

    .line 1164
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentIsShowEmoji:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyIvMoreView()V
    .registers 8

    .line 535
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    const/16 v1, 0x8

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_56

    .line 540
    :cond_d
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-eqz v0, :cond_50

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NEMO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_4a

    .line 545
    :cond_44
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_55

    .line 543
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_55

    .line 548
    :cond_50
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_55
    return-void

    .line 536
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private onPublish()V
    .registers 5

    .line 2091
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v3, Lcom/codemao/nemo/activity/WorkDetailActivity$53;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$53;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private setEmptyData(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_42

    :cond_9
    if-eqz p2, :cond_e

    .line 662
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_10

    :cond_e
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->rvReview:Landroidx/recyclerview/widget/RecyclerView;

    .line 663
    :goto_10
    new-instance v0, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectWorkInfos:Ljava/util/List;

    .line 665
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 666
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectWorkInfos:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 667
    new-instance v0, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$17;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity$17;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;)V

    .line 677
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 678
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 679
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvMayLike:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_42
    :goto_42
    return-void
.end method

.method private setWorkDetailData()V
    .registers 10

    .line 685
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-nez v0, :cond_8

    .line 686
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showEmpty()V

    return-void

    .line 689
    :cond_8
    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->getShowReviewState()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 690
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showReview()V

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isEmpty:Z

    .line 694
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getView_times()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatUpdateViewTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 695
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->initShareModel()V

    .line 696
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    .line 697
    :goto_4b
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 698
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->notifyIvMoreView()V

    const/4 v3, 0x3

    if-eqz v1, :cond_88

    .line 700
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    new-instance v5, Lcom/codemao/nemo/bean/TypeItemData;

    const v6, 0x7f0e00ae

    const-string/jumbo v7, "编辑信息"

    invoke-direct {v5, v0, v7, v6}, Lcom/codemao/nemo/bean/TypeItemData;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    new-instance v5, Lcom/codemao/nemo/bean/TypeItemData;

    const v6, 0x7f0e00af

    const-string/jumbo v7, "编辑积木"

    invoke-direct {v5, v2, v7, v6}, Lcom/codemao/nemo/bean/TypeItemData;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    new-instance v5, Lcom/codemao/nemo/bean/TypeItemData;

    const/4 v6, 0x2

    const v7, 0x7f0803f3

    const-string/jumbo v8, "取消发布"

    invoke-direct {v5, v6, v8, v7}, Lcom/codemao/nemo/bean/TypeItemData;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 704
    :cond_88
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    new-instance v5, Lcom/codemao/nemo/bean/TypeItemData;

    const v6, 0x7f0e007e

    const-string v7, "举报"

    invoke-direct {v5, v3, v7, v6}, Lcom/codemao/nemo/bean/TypeItemData;-><init>(ILjava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :goto_97
    new-instance v4, Lcom/codemao/nemo/view/SortDialog;

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mores:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/codemao/nemo/view/SortDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$18;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$18;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v4, v5}, Lcom/codemao/nemo/view/SortDialog;->setOrderChooseListener(Lcom/codemao/nemo/listener/OnItemClickListener;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object v4

    const/16 v5, 0x35

    .line 729
    invoke-virtual {v4, v5}, Lcom/codemao/nemo/view/SortDialog;->setGravity(I)Lcom/codemao/nemo/view/SortDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->sortDialog:Lcom/codemao/nemo/view/SortDialog;

    .line 730
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->fragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_143

    .line 731
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$19;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$19;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-static {v4, v5}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->getInstance(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/nemo/fragment/WorkDetailFragment$WorkDetailFragmentCallBack;)Lcom/codemao/nemo/fragment/WorkDetailFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    .line 737
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/codemao/nemo/activity/WorkDetailActivity$20;

    invoke-direct {v7, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$20;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-static {v4, v5, v6, v1, v7}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getInstance(JLjava/lang/String;ZLcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;)Lcom/codemao/nemo/fragment/WorkCommentFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 753
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->fragments:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->fragments:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->titles:Ljava/util/ArrayList;

    const-string/jumbo v4, "作品"

    .line 756
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->titles:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "评论("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getComment_times()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v1, Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->fragments:Ljava/util/List;

    iget-object v6, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->titles:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5, v6}, Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailPageAdapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    .line 759
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 760
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailPageAdapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 761
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->titles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    goto :goto_153

    .line 763
    :cond_143
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    if-eqz v3, :cond_14c

    .line 764
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setWorkDetail(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    .line 767
    :cond_14c
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    if-eqz v3, :cond_153

    .line 768
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->setOwnWork(Z)V

    .line 772
    :cond_153
    :goto_153
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvBrowseNum:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getView_times()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getShare_times()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_collected()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setCollect(ZZ)V

    .line 775
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setPraise(ZZ)V

    .line 777
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 778
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 779
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    if-eqz v1, :cond_1c2

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v3

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c2

    goto :goto_1d0

    .line 784
    :cond_1c2
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 785
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivToRework:Landroid/widget/ImageView;

    const v2, 0x7f0e0082

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1dd

    .line 781
    :cond_1d0
    :goto_1d0
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 782
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivToRework:Landroid/widget/ImageView;

    const v2, 0x7f0e0080

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    :goto_1dd
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvToRework:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_tree_nodes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1fd

    .line 790
    :cond_1f6
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 793
    :goto_1fd
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 794
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21a

    .line 795
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    goto :goto_222

    .line 797
    :cond_21a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 800
    :cond_222
    :goto_222
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private showAntiAddictionLayout()V
    .registers 3

    .line 2162
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a099e

    .line 2163
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2164
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2165
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private showBuyKittenWork()V
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_b

    .line 805
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 807
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    const-string/jumbo v1, "电脑端作品暂无法在app内编辑"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "再创作的作品仅可在电脑端打开\n并学习代码。"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "取消"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "确定购买"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 808
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$21;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$21;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 820
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showEmpty()V
    .registers 3

    const v0, 0x7f0a03e2

    .line 624
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a091f

    .line 625
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    invoke-static {p0, v0, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 627
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    .line 628
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getEmptyWorks(Z)V

    return-void
.end method

.method private showError()V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    invoke-static {p0, v0, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    return-void
.end method

.method private showReview()V
    .registers 3

    const v0, 0x7f0a03e2

    .line 632
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a091f

    .line 633
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    invoke-static {p0, v0, v1}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 635
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showExtra()V

    .line 636
    invoke-direct {p0, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getEmptyWorks(Z)V

    return-void
.end method

.method private showUnLoginDialog(Ljava/lang/String;)V
    .registers 3

    .line 1665
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showUnLoginDialogForReWork()V
    .registers 3

    .line 1660
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击前往登录（购买）"

    invoke-static {p0, v1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginDialogForReWorkTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private toComment(ZZ)V
    .registers 5

    .line 1113
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity$28;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Z)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1, v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method private toEditInfo()V
    .registers 5

    .line 1380
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$33;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method


# virtual methods
.method collectWorkOrCancel(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1672
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_d

    const-string/jumbo p1, "作品详情页-点击前往登录（收藏）"

    .line 1673
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showUnLoginDialog(Ljava/lang/String;)V

    return-void

    .line 1677
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-nez p1, :cond_12

    return-void

    .line 1680
    :cond_12
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 1681
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1685
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1686
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_collected()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1687
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击取消收藏"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1688
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$43;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$43;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_5b

    .line 1713
    :cond_45
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击收藏"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1714
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$44;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$44;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->collectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_5b
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d006c

    return v0
.end method

.method public getReportParams()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2113
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    const-string v1, ""

    if-eqz v0, :cond_2e

    .line 2114
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 2116
    :cond_2e
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "作品详情页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1932
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1933
    invoke-static {p1, p2, p3}, Lcn/codemao/android/share/CodeMaoShare;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1925
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCommentFragment:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1926
    :cond_a
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    .line 297
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getAduanInfo()V

    .line 299
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 300
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewModel:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    .line 301
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailVM:Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;

    .line 302
    new-instance p1, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    .line 303
    invoke-virtual {p1, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 305
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 306
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarEmpty:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 307
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarReview:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 308
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarError:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 309
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toobarLoading:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "themeId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlScroll:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    const/high16 v1, 0x42440000  # 49.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    const/high16 v1, 0x42c00000  # 96.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "workCover"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    const/high16 p1, 0x424c0000  # 51.0f

    .line 318
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->toolBarHeight:I

    .line 319
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 320
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 352
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$2;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 393
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 394
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$3;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V

    const p1, 0x7f0a091f

    .line 402
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$4;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03e2

    .line 413
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$5;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0364

    .line 426
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$6;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0365

    .line 434
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$7;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0367

    .line 441
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$8;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0366

    .line 448
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$9;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04e1

    .line 455
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$10;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0449

    .line 477
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$11;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 489
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 491
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    .line 493
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 494
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$12;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$13;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$13;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->notifyIvMoreView()V

    .line 531
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->checkAntiAddictionState()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1175
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 1176
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_a

    .line 1177
    invoke-virtual {v0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->close()V

    .line 1179
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reworkHelper:Lcom/codemao/nemo/util/ReworkHelper;

    if-eqz v0, :cond_11

    .line 1180
    invoke-virtual {v0}, Lcom/codemao/nemo/util/ReworkHelper;->onDestroy()V

    .line 1182
    :cond_11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_1f

    .line 1184
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    .line 1186
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_26

    .line 1187
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1189
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPraiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2d

    .line 1190
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1192
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_34

    .line 1193
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1195
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3b

    .line 1196
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1198
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_42

    .line 1199
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ShareDialog;->onDestroy()V

    :cond_42
    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 2064
    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    if-nez v0, :cond_15

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2066
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    :cond_15
    return-void
.end method

.method public onFinishAnswer(Lcom/codemao/nemo/event/FinishAnswerEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 2045
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 2046
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper;->showGuide(ILandroid/app/Activity;)V

    .line 2048
    :cond_12
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6c

    .line 2049
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2050
    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    const-string v2, "workId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "isEditWorkInfo"

    const/4 v1, 0x1

    .line 2051
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "published"

    .line 2052
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2053
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "des"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2055
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultImagePath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2056
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2057
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v0

    const-string v1, "forkEnable"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2058
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6c
    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 6

    .line 2022
    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    if-gtz p2, :cond_c

    .line 2023
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    .line 2025
    :cond_c
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    .line 2026
    iput p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->hidePopBottom:I

    .line 2027
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isInit:Z

    goto :goto_3a

    .line 2029
    :cond_16
    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    if-gtz p2, :cond_2a

    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->hidePopBottom:I

    if-le p1, p2, :cond_2a

    sub-int v1, p1, p2

    iget v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2a

    sub-int p2, p1, p2

    .line 2030
    iput p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    .line 2032
    :cond_2a
    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    iget v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    if-le p2, v1, :cond_3a

    .line 2033
    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->hidePopBottom:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    .line 2036
    :cond_3a
    :goto_3a
    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_52

    .line 2037
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/SoftInputHeightEvent;

    iget v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyBoardHeight:I

    invoke-direct {p2, v0}, Lcom/codemao/nemo/event/SoftInputHeightEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5e

    .line 2039
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

    .line 1918
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    .line 1919
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 1920
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    :cond_b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1905
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 1906
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->keyboardHeightProvider:Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;

    if-eqz v0, :cond_a

    .line 1907
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/callback/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/creativecenter/callback/KeyboardHeightObserver;)V

    .line 1908
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-eqz v0, :cond_11

    .line 1909
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1911
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_18

    .line 1912
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_18
    return-void
.end method

.method public onShareSuccessEvent(Lcom/codemao/nemo/event/ShareEvents;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-nez v0, :cond_5

    return-void

    .line 2006
    :cond_5
    invoke-virtual {p1}, Lcom/codemao/nemo/event/ShareEvents;->getWorkId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_31

    .line 2007
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getShare_times()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setShare_times(I)V

    .line 2008
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getShare_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1943
    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    return-void

    .line 1946
    :cond_b
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_70

    const/4 v1, 0x7

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v1, :cond_47

    if-eq v0, v2, :cond_1e

    goto/16 :goto_b5

    .line 1968
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getTag()I

    move-result v1

    if-eq v0, v1, :cond_b5

    .line 1969
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect()Z

    move-result p1

    .line 1970
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->setIs_collected(Z)V

    .line 1971
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCollect_times()I

    move-result v1

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v4, -0x1

    :goto_3f
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setCollect_times(I)V

    .line 1972
    invoke-virtual {p0, p1, v3}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setCollect(ZZ)V

    goto :goto_b5

    .line 1948
    :cond_47
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getTag()I

    move-result v1

    if-eq v0, v1, :cond_b5

    .line 1949
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 1950
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->setIs_praised(Z)V

    .line 1951
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPraise_times()I

    move-result v1

    if-eqz p1, :cond_67

    goto :goto_68

    :cond_67
    const/4 v4, -0x1

    :goto_68
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPraise_times(I)V

    .line 1952
    invoke-virtual {p0, p1, v3}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setPraise(ZZ)V

    goto :goto_b5

    .line 1956
    :cond_70
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->onPublish()V

    .line 1957
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 1958
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 1960
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 1962
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 1963
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1964
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v2, 0x0

    :cond_af
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1965
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->initShareModel()V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public onUpdateWorkInfoKnEvent(Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1980
    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->getWorkId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    return-void

    .line 1983
    :cond_b
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    goto :goto_64

    .line 1985
    :cond_13
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->onPublish()V

    .line 1986
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->getWorkDetailInfo()Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;

    move-result-object p1

    .line 1987
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 1991
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;->getFork_scope()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->setFork_scope(Ljava/lang/Integer;)V

    .line 1992
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workCover:Ljava/lang/String;

    .line 1993
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1994
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 p1, 0x0

    goto :goto_5e

    :cond_5c
    const/16 p1, 0x8

    :goto_5e
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1995
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->initShareModel()V

    :goto_64
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 5

    .line 554
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 555
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->notifyIvMoreView()V

    .line 556
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isUnLoginCommentClick:Z

    if-eqz v0, :cond_16

    .line 557
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    :cond_16
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 561
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showError()V

    return-void

    .line 564
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v3, Lcom/codemao/nemo/activity/WorkDetailActivity$14;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$14;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method praiseWorkOrCancel(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1438
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_d

    const-string/jumbo p1, "作品详情页-点击前往登录（点赞）"

    .line 1439
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showUnLoginDialog(Ljava/lang/String;)V

    return-void

    .line 1443
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-nez p1, :cond_12

    return-void

    .line 1446
    :cond_12
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 1447
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1450
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1451
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1452
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击取消点赞"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1453
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$34;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$34;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelPraiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_5b

    .line 1473
    :cond_45
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击点赞"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1474
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$35;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$35;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->praiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_5b
    return-void
.end method

.method refresh(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 587
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 588
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivExit:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$15;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method rework()V
    .registers 4

    .line 884
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 885
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 890
    :cond_a
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 891
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->showUnLoginDialogForReWork()V

    return-void

    .line 895
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 896
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 897
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reWorkKnDialog:Lcom/codemao/nemo/view/ReWorkKnDialog;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/codemao/nemo/view/ReWorkKnDialog;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/nemo/view/ReWorkKnDialog;-><init>(Landroid/content/Context;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Lcom/ljwx/baseapp/callback/CallbackType;)V

    .line 914
    :cond_3a
    iput-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reWorkKnDialog:Lcom/codemao/nemo/view/ReWorkKnDialog;

    .line 915
    invoke-virtual {v0}, Lcom/codemao/nemo/view/ReWorkKnDialog;->show()V

    return-void

    .line 918
    :cond_40
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    .line 919
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setBcm_version(Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setUser_info(Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;)V

    .line 922
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setScreenshot_cover_url(Ljava/lang/String;)V

    .line 924
    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 925
    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setParent_id(J)V

    .line 926
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reworkHelper:Lcom/codemao/nemo/util/ReworkHelper;

    if-nez v1, :cond_87

    .line 927
    new-instance v1, Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {v1}, Lcom/codemao/nemo/util/ReworkHelper;-><init>()V

    iput-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reworkHelper:Lcom/codemao/nemo/util/ReworkHelper;

    .line 930
    :cond_87
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->reworkHelper:Lcom/codemao/nemo/util/ReworkHelper;

    new-instance v2, Lcom/codemao/nemo/activity/WorkDetailActivity$24;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$24;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/codemao/nemo/util/ReworkHelper;->showReworkDialog(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;)Lcom/codemao/nemo/view/ReWorkDialog;

    return-void
.end method

.method public setCloseComment(Z)V
    .registers 3

    .line 2013
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->isCloseComment:Z

    .line 2014
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->rlFakerCommentInput:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_b

    const/16 v0, 0x8

    .line 2015
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method setCollect(ZZ)V
    .registers 10

    const/high16 v0, 0x41480000  # 12.5f

    .line 1743
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1744
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->setIs_collected(Z)V

    const-wide/16 v1, 0x1b8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6e

    if-eqz p2, :cond_4d

    .line 1747
    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1748
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v4, :cond_32

    .line 1749
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 1750
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1753
    :cond_32
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1754
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->collectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1755
    invoke-direct {p0, v3}, Lcom/codemao/nemo/activity/WorkDetailActivity;->doCollectAnim(Z)V

    .line 1756
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    new-instance v4, Lcom/codemao/nemo/activity/WorkDetailActivity$45;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity$45;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c5

    .line 1764
    :cond_4d
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1765
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1766
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCollect_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5

    :cond_6e
    if-eqz p2, :cond_a5

    .line 1770
    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1771
    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_8b

    .line 1772
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 1773
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1775
    :cond_8b
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1776
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelCollectDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1777
    invoke-direct {p0, v4}, Lcom/codemao/nemo/activity/WorkDetailActivity;->doCollectAnim(Z)V

    .line 1778
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    new-instance v4, Lcom/codemao/nemo/activity/WorkDetailActivity$46;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity$46;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c5

    .line 1786
    :cond_a5
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1787
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCollect:Landroid/widget/ImageView;

    const v1, 0x7f0e006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1788
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCollect_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c5
    if-eqz p2, :cond_da

    .line 1792
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCollect_times()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatUpdateCollectTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1795
    :cond_da
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$47;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$47;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;ZZ)V

    const-wide/16 p1, 0x5dc

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setPraise(ZZ)V
    .registers 8

    const/high16 v0, 0x41480000  # 12.5f

    .line 1501
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    .line 1502
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->setIs_praised(Z)V

    const-wide/16 v1, 0x1b8

    const/4 v3, 0x0

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_2a

    .line 1505
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v3, 0x1

    .line 1506
    invoke-direct {p0, v3}, Lcom/codemao/nemo/activity/WorkDetailActivity;->doPraiseAnim(Z)V

    .line 1507
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    new-instance v4, Lcom/codemao/nemo/activity/WorkDetailActivity$36;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity$36;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_80

    .line 1518
    :cond_2a
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1519
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1520
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPraise_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_80

    :cond_4b
    if-eqz p2, :cond_60

    .line 1524
    iget-object v4, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1525
    invoke-direct {p0, v3}, Lcom/codemao/nemo/activity/WorkDetailActivity;->doPraiseAnim(Z)V

    .line 1526
    iget-object v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvShare:Landroid/widget/TextView;

    new-instance v4, Lcom/codemao/nemo/activity/WorkDetailActivity$37;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity$37;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_80

    .line 1537
    :cond_60
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1538
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPraise:Landroid/widget/ImageView;

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1539
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvPraise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPraise_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1542
    :goto_80
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$38;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$38;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;ZZ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method showCommentInput(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1098
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_18

    .line 1099
    sget-object p1, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda7;->INSTANCE:Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 1105
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "作品详情页-点击前往登录（评论）"

    .line 1099
    invoke-static {p0, v2, p1, v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void

    :cond_18
    const/4 p1, 0x0

    .line 1109
    invoke-direct {p0, p1, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->toComment(ZZ)V

    return-void
.end method

.method showCommentInputInExp(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1159
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_18

    .line 1160
    sget-object p1, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 1166
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "作品详情页-点击前往登录（评论）"

    .line 1160
    invoke-static {p0, v2, p1, v0, v1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void

    :cond_18
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1170
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->toComment(ZZ)V

    return-void
.end method

.method showShareDialog(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 975
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    if-nez p1, :cond_5

    return-void

    .line 978
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击分享"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 979
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    if-nez p1, :cond_39

    .line 980
    new-instance p1, Lcom/codemao/nemo/dialog/ShareDialog;

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-wide v3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/dialog/ShareDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;JLjava/lang/String;I)V

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$26;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$26;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/ShareDialog;->setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/ShareDialog;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/WorkDetailActivity$25;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$25;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    .line 995
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/ShareDialog;->setCopyListener(Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;)Lcom/codemao/nemo/dialog/ShareDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    .line 1027
    :cond_39
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->shareDialog:Lcom/codemao/nemo/dialog/ShareDialog;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareDialog;->show()V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toPlayWorkActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1063
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1064
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1067
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击播放按钮"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1068
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1069
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isWorkLandscape()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1070
    iget-wide v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v7

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;->gotoPlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V

    goto :goto_85

    .line 1072
    :cond_37
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    iget-wide v6, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v8

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v9}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->gotoPlay(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V

    goto :goto_85

    .line 1075
    :cond_50
    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->isWorkLandscape()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1076
    iget-wide v5, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v7

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/codemao/nemo/activity/WorkPlayLandActivity;->gotoPlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V

    goto :goto_85

    .line 1078
    :cond_6d
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivCover:Landroid/widget/ImageView;

    iget-wide v6, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workId:J

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v8

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetail:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v9}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->gotoPlay(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/codemao/creativecenter/utils/bcm/bean/Abilities;Ljava/lang/String;)V

    :goto_85
    return-void
.end method
