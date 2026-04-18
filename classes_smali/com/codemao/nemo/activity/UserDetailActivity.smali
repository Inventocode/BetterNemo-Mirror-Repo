.class public Lcom/codemao/nemo/activity/UserDetailActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserDetailActivity.java"


# instance fields
.field appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private detailWorksFragment:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

.field final discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field flAvatar:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isAnimate:Z

.field private isLight:Z

.field private isOwner:Z

.field private isTop:Z

.field ivAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivAvatarFrame:Landroid/widget/ImageView;
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

.field ivShare:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivTitleAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field rlScroll:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlTitleAvatar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private rlTitleLeftFollow:I

.field private rlTitleLeftNotFollow:I

.field private rlTitleRightFollow:I

.field private rlTitleRightNotFollow:I

.field private rlTitleWitdhNotFollow:I

.field private rlTitleWithFollow:I

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tagView:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toScroll:I

.field private toolBarHeight:I

.field toolbar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCollectNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFanNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFllowNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitleFollow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUserId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUserSign:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userAvatar:Ljava/lang/String;

.field private userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

.field private userId:J

.field private userState:Ljava/lang/String;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vs_forbidden:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QyTGXaiPxeQP21hVDztIfDdCFSI(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->getUserDetail()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isLight:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, -0x1

    .line 142
    iput-wide v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    .line 144
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    .line 155
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isAnimate:Z

    .line 156
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isTop:Z

    const-string/jumbo v0, "客态"

    .line 157
    iput-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolBarHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserDetailActivity;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isLight:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isTop:Z

    return p1
.end method

.method static synthetic access$102(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isLight:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/UserDetailActivity;)J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->getUserDetail()V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->setUserData()V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->goForbidden()V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/activity/UserDetailActivity;ZZ)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/UserDetailActivity;->setFollow(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->doFollowAnim()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleWitdhNotFollow:I

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleWithFollow:I

    return p0
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/activity/UserDetailActivity;)Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserDetailActivity;I)F
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->getToolBarBgAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/UserDetailActivity;)Lcom/codemao/nemo/bean/UserDetailInfoV2;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/UserDetailActivity;Lcom/codemao/nemo/bean/UserDetailInfoV2;)Lcom/codemao/nemo/bean/UserDetailInfoV2;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/UserDetailActivity;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isAnimate:Z

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isAnimate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/UserDetailActivity;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleLeftFollow:I

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleRightFollow:I

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleLeftNotFollow:I

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/UserDetailActivity;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleRightNotFollow:I

    return p0
.end method

.method private addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V
    .registers 8

    .line 820
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "m"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 821
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 p3, 0x42a60000  # 83.0f

    .line 822
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    new-instance p3, Lcom/codemao/nemo/view/CustomImageSpan;

    const/high16 v1, 0x40400000  # 3.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p3, p2, v2, v1}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 824
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {v0, p3, p2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 825
    new-instance p2, Lcom/codemao/nemo/activity/UserDetailActivity$11;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/activity/UserDetailActivity$11;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;I)V

    .line 838
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p4

    invoke-virtual {v0, p2, p3, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 839
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private doFollowAnim()V
    .registers 16

    .line 648
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3f4ccccd  # 0.8f

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3f4ccccd  # 0.8f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v0, 0x64

    .line 649
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v2, 0x1

    .line 650
    invoke-virtual {v7, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 651
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 652
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v13, v4

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v14, v4

    const v9, 0x3f4ccccd  # 0.8f

    const/high16 v10, 0x3f800000  # 1.0f

    const v11, 0x3f4ccccd  # 0.8f

    const/high16 v12, 0x3f800000  # 1.0f

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 653
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 654
    invoke-virtual {v3, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 655
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 656
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-array v0, v2, [F

    const/4 v1, 0x0

    const/high16 v2, 0x40a00000  # 5.0f

    aput v2, v0, v1

    .line 657
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$10;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xd2

    .line 673
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 674
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 3

    .line 381
    iget v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolBarHeight:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_13

    .line 382
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolBarHeight:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_15

    :cond_13
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_15
    return p1
.end method

.method private getUserDetail()V
    .registers 6

    .line 442
    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    const-string/jumbo v0, "用户不存在"

    .line 443
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 446
    :cond_f
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserDetail(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 447
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$4;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    .line 449
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userAvatar"

    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "userId"

    .line 167
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "from"

    .line 168
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 169
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "themeId"

    .line 170
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goForbidden()V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->vs_forbidden:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0364

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0a08d0

    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/activity/UserDetailActivity$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$5;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$6;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initShareModel()V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 366
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 368
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const-string v1, "https://dev-ide.codemao.cn/we/20001724"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    return-void
.end method

.method private isOwner()Z
    .registers 6

    .line 191
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private setFollow(ZZ)V
    .registers 7

    .line 678
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_39

    .line 681
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAttention_status(Z)V

    .line 682
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/RoundTextView;->setBackgroungColor(I)V

    .line 683
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v1, "已关注"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_63

    .line 685
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_63

    .line 689
    :cond_39
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAttention_status(Z)V

    .line 690
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/RoundTextView;->setBackgroungColor(I)V

    .line 691
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v2, "关注"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_63

    .line 693
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 697
    :cond_63
    :goto_63
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isTop:Z

    if-nez p1, :cond_6d

    .line 698
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6d
    return-void
.end method

.method private setUserData()V
    .registers 7

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    if-nez v0, :cond_5

    return-void

    .line 499
    :cond_5
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_cover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 500
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    const-string v1, "https://static.codemao.cn/nemo/cover/cover_forset.png"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setUser_cover(Ljava/lang/String;)V

    .line 502
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->updateUserTags()V

    .line 503
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_cover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 504
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvCollectNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollect_times()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFanNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getFans_total()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFllowNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_total()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_description()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->setUserSign(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v2

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a0

    goto :goto_106

    .line 515
    :cond_a0
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 516
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_description()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateDesEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 517
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateAvatarEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 518
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->creatUpdateNickNameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_description()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserDes(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    goto :goto_115

    .line 512
    :cond_106
    :goto_106
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 513
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_status()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->setFollow(ZZ)V

    .line 523
    :goto_115
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 524
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivTitleAvatar:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 528
    :cond_131
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->setUserLevelInfo()V

    return-void
.end method

.method private setUserLevelInfo()V
    .registers 5

    .line 783
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    if-nez v0, :cond_5

    return-void

    .line 786
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 787
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAuthor_level()I

    move-result v0

    if-eqz v0, :cond_79

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_40

    const/4 v1, 0x5

    if-eq v0, v1, :cond_31

    .line 807
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 804
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0804dc

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V

    goto :goto_84

    .line 801
    :cond_40
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0804db

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V

    goto :goto_84

    .line 798
    :cond_4f
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0804da

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V

    goto :goto_84

    .line 795
    :cond_5e
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0804d9

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V

    goto :goto_84

    .line 792
    :cond_6d
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 789
    :cond_79
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :goto_84
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 812
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a9

    .line 814
    :cond_98
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_a9
    return-void
.end method

.method private setUserSign(Ljava/lang/String;)V
    .registers 6

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 533
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_23

    goto :goto_2c

    .line 536
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserSign:Landroid/widget/TextView;

    const-string/jumbo v0, "介绍下自己，描述下正在做什么吧~"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 534
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserSign:Landroid/widget/TextView;

    const-string/jumbo v0, "这个训练师很懒，什么都还没写呢~"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 539
    :cond_35
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserSign:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3a
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0067

    return v0
.end method

.method editAvatar(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 357
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-eqz p1, :cond_2c

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击头像更换"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 359
    sget-object p1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->Companion:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isOffical()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;->getCallIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2c
    return-void
.end method

.method editCover(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 347
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-eqz p1, :cond_29

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击头像更换"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 349
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_29
    return-void
.end method

.method editUserInfo(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 546
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    const-string v0, "个人主页-点击前往登录（关注）"

    .line 547
    invoke-static {p0, v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 551
    :cond_d
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击编辑"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a5

    .line 556
    :cond_39
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 557
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 560
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 561
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_status()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击取消关注"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v0

    new-instance v2, Lcom/codemao/nemo/activity/UserDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$7;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_a5

    .line 583
    :cond_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-点击关注用户"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v0

    new-instance v2, Lcom/codemao/nemo/activity/UserDetailActivity$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$8;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_a5
    return-void
.end method

.method exit(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 422
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string v0, "个人主页-点击返回"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 423
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method followUser(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 610
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    const-string v0, "个人主页-点击前往登录（关注）"

    .line 611
    invoke-static {p0, v0, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 615
    :cond_d
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_status()Z

    move-result p1

    if-nez p1, :cond_53

    .line 616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击关注用户"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 617
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 618
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 621
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 623
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getUser_id()J

    move-result-wide v0

    new-instance v2, Lcom/codemao/nemo/activity/UserDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$9;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :cond_53
    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "个人主页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "userId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    .line 198
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    iget-wide v4, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-eqz v1, :cond_33

    const-string v1, "主态"

    goto :goto_36

    :cond_33
    const-string/jumbo v1, "客态"

    .line 199
    :goto_36
    iput-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    const-string v4, "user_state"

    .line 200
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewExtraInfo(Ljava/util/Map;)V

    .line 202
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "workId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "themeId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const p1, 0x3eda9fbe  # 0.427f

    .line 207
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->flAvatar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42ae0000  # 87.0f

    .line 210
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x40400000  # 3.0f

    .line 211
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1, p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    const/high16 v1, 0x42400000  # 48.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 216
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleWithFollow:I

    const/high16 v0, 0x42a40000  # 82.0f

    .line 217
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleWitdhNotFollow:I

    .line 218
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleLeftNotFollow:I

    .line 219
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleLeftFollow:I

    .line 220
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleRightNotFollow:I

    .line 221
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleRightFollow:I

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-eqz v0, :cond_101

    const/16 v0, 0x8

    goto :goto_102

    :cond_101
    const/4 v0, 0x4

    :goto_102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlScroll:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    const/high16 v1, 0x42440000  # 49.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "userAvatar"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->initShareModel()V

    .line 227
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    const/high16 p1, 0x424c0000  # 51.0f

    .line 228
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->toolBarHeight:I

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$1;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 285
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserId:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "训练师编号："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvUserId:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$2;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "动态"

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "作品"

    .line 305
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-static {v1, v2}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getInstance(J)Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->detailWorksFragment:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->pageAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 310
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 312
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 313
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userAvatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivTitleAvatar:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 314
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner()Z

    move-result p1

    if-eqz p1, :cond_1b4

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v0, "编辑"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c1

    .line 317
    :cond_1b4
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 318
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v0, "关注"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_1c1
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/UserDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$3;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 428
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 429
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_11

    .line 431
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    :cond_11
    return-void
.end method

.method public onFollowUserEvent(Lcom/codemao/nemo/event/FollowUserEvents;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    if-eqz v0, :cond_92

    .line 705
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    .line 706
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result p1

    if-nez p1, :cond_1e

    .line 707
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_total()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAttention_total(I)V

    goto :goto_28

    .line 710
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_total()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAttention_total(I)V

    .line 712
    :goto_28
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFllowNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_total()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    .line 714
    :cond_43
    iget-wide v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_78

    .line 715
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isAnimate:Z

    if-nez v0, :cond_5d

    .line 716
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x1

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    invoke-direct {p0, v0, v2}, Lcom/codemao/nemo/activity/UserDetailActivity;->setFollow(ZZ)V

    .line 718
    :cond_5d
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result p1

    if-nez p1, :cond_6e

    .line 719
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getFans_total()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setFans_total(I)V

    goto :goto_78

    .line 721
    :cond_6e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getFans_total()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setFans_total(I)V

    .line 724
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFanNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getFans_total()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_92
    :goto_92
    return-void
.end method

.method public onUpdateUserDetail(Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 894
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->getUserId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_84

    .line 895
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->getType()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_61

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_19

    goto :goto_84

    .line 897
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setCollect_times(I)V

    .line 898
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvCollectNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollect_times()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 901
    :cond_3d
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setFans_total(I)V

    .line 902
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFanNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getFans_total()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 905
    :cond_61
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAttention_total(I)V

    .line 906
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvFllowNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAttention_total()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 732
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    goto :goto_48

    .line 734
    :cond_9
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect()Z

    move-result p1

    .line 735
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_48

    if-eqz p1, :cond_21

    .line 737
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollect_times()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setCollect_times(I)V

    goto :goto_2c

    .line 739
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollect_times()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setCollect_times(I)V

    .line 741
    :goto_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvCollectNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollect_times()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 8

    .line 176
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 177
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-wide v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    if-eqz v0, :cond_23

    const-string v3, "主态"

    goto :goto_26

    :cond_23
    const-string/jumbo v3, "客态"

    .line 178
    :goto_26
    iput-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvTitleFollow:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    const/16 v0, 0x8

    goto :goto_30

    :cond_2f
    const/4 v0, 0x4

    :goto_30
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 181
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v1, "编辑"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57

    .line 184
    :cond_4a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const-string/jumbo v1, "关注"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_57
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/activity/UserDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserInfoUpdate(Lcom/codemao/nemo/event/UpdateUserInfoEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 749
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getUserId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_99

    .line 750
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getType()I

    move-result v0

    if-eqz v0, :cond_87

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_69

    const/4 v1, 0x3

    if-eq v0, v1, :cond_49

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    goto/16 :goto_99

    .line 756
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setHead_frame_url(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 758
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_99

    .line 760
    :cond_39
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatarFrame:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_99

    .line 766
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setAvatar_url(Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivAvatar:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 768
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivTitleAvatar:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_99

    .line 775
    :cond_69
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setUser_description(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewDes()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->setUserSign(Ljava/lang/String;)V

    goto :goto_99

    .line 771
    :cond_7a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setNickname(Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserDetailActivity;->setUserLevelInfo()V

    goto :goto_99

    .line 752
    :cond_87
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->setUser_cover(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewCoverUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->ivCover:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_99
    :goto_99
    return-void
.end method

.method showShareDialog(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method toUserCollect(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "个人主页-点击收藏"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 403
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    const-string v2, "userId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method toUserFans(Landroid/view/View;)V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "个人主页-点击粉丝"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    iget-wide v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    const-string v0, "userId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "type"

    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method toUserFollowser(Landroid/view/View;)V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "个人主页-点击关注"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userId:J

    const-string v3, "userId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "type"

    .line 415
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateUserTags()V
    .registers 6

    .line 843
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    if-nez v0, :cond_c

    .line 844
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tagView:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 847
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getBlock_total()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "块积木"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getView_times()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "次被浏览"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getLiked_total()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "次被点赞"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getCollected_total()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "次被收藏"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->userDetailInfo:Lcom/codemao/nemo/bean/UserDetailInfoV2;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDetailInfoV2;->getRe_created_total()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "次被再创作"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tagView:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 v1, 0x40800000  # 4.0f

    .line 855
    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000  # 10.0f

    .line 856
    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 857
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserDetailActivity;->tagView:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    new-instance v4, Lcom/codemao/nemo/activity/UserDetailActivity$12;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/codemao/nemo/activity/UserDetailActivity$12;-><init>(Lcom/codemao/nemo/activity/UserDetailActivity;Ljava/util/List;II)V

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/codemao/nemo/view/flowlayout/TagAdapter;)V

    return-void
.end method
