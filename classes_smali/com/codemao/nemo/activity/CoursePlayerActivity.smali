.class public Lcom/codemao/nemo/activity/CoursePlayerActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CoursePlayerActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/listener/VideoStatusListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field descView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isNetting:Z

.field private final isPad:Z

.field iv_course_type:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iv_next_p:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field jz_retry_p:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

.field private mCourseId:J

.field private mCoursePackageId:J

.field private mCurCourseIndex:I

.field private final mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

.field mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

.field nameView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field newWorkButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pb:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_course_type:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_next_p:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isNetting:Z

    .line 105
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isPad:Z

    .line 377
    new-instance v0, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity$3;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->dismissLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/activity/CoursePlayerActivity;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isNetting:Z

    return p1
.end method

.method static synthetic access$102(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CoursePackageData;)Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I
    .registers 1

    .line 63
    iget p0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/CoursePlayerActivity;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    return p1
.end method

.method static synthetic access$208(Lcom/codemao/nemo/activity/CoursePlayerActivity;)I
    .registers 3

    .line 63
    iget v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->init()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->setupRemind()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/CoursePlayerActivity;)Z
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->hasNextCourse()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/codemao/nemo/activity/CoursePlayerActivity;J)J
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/CoursePlayerActivity;I)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->goCreate(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->doNet()V

    return-void
.end method

.method private dismissLoading()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private doNet()V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isNetting:Z

    if-eqz v0, :cond_9

    goto :goto_32

    :cond_9
    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isNetting:Z

    .line 438
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/retrofit/api/CourseService;->putPlayers(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 439
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity$4;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;)V

    .line 440
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private fetchCoursePackage(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V
    .registers 7

    .line 254
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    .line 255
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p2, 0x0

    const/16 v3, 0x32

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/codemao/nemo/retrofit/api/CourseService;->getCourseDetail(JII)Lio/reactivex/Observable;

    move-result-object p2

    .line 256
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    .line 257
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity$2;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V

    .line 258
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private fetchCoursePackage(Ljava/lang/Long;Ljava/lang/Long;Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    .line 200
    iget-object p3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->pb:Landroid/widget/ProgressBar;

    if-eqz p3, :cond_a

    .line 201
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    :cond_a
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p3

    const-class v1, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-virtual {p3, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/retrofit/api/CourseService;

    .line 205
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 p2, 0x32

    invoke-interface {p3, v1, v2, v0, p2}, Lcom/codemao/nemo/retrofit/api/CourseService;->getCourseDetail(JII)Lio/reactivex/Observable;

    move-result-object p2

    .line 206
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    .line 207
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;

    invoke-direct {p3, p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity$1;-><init>(Lcom/codemao/nemo/activity/CoursePlayerActivity;Ljava/lang/Long;)V

    .line 208
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private goCreate(I)V
    .registers 13

    .line 576
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 577
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 578
    sget-object p1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto/16 :goto_ab

    :cond_1c
    const/4 p1, 0x3

    .line 581
    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    goto/16 :goto_ab

    .line 584
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_version()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7f

    .line 585
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getVideo_url()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v5

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_url()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getCourse_bcm_version()Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move v4, p1

    invoke-static/range {v1 .. v10}, Lcom/codemao/nemo/util/BcmHelper;->createCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 588
    :cond_7f
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getVideo_url()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v5

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v6

    move-object v1, p0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/util/BcmHelper;->createCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 590
    :goto_9c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_ab
    return-void
.end method

.method private hasNextCourse()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .registers 6

    .line 296
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->setupRemind()V

    const/4 v0, 0x0

    .line 298
    sput v0, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    const/4 v1, 0x1

    .line 299
    sput v1, Lcn/jzvd/JZVideoPlayer;->NORMAL_ORIENTATION:I

    .line 300
    sput-boolean v0, Lcn/jzvd/JZVideoPlayer;->SAVE_PROGRESS:Z

    .line 301
    sput-boolean v1, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    .line 303
    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    iget-object v3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getVideo_url()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    iget-object v2, v2, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->preparedStartVideo()V

    .line 308
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isKnWork()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->newWorkButton:Landroid/widget/TextView;

    const-string/jumbo v1, "开始创作"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    const-string/jumbo v1, "点击创作"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setButtonText(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private isKnWork()Z
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KITTENN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setupExtend()V
    .registers 9

    .line 322
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->hasNextCourse()Z

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_next_p:Landroid/widget/ImageView;

    const v2, 0x7f08046d

    const v3, 0x7f08052f

    if-eqz v0, :cond_26

    iget v4, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v5, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_26

    const v4, 0x7f08046d

    goto :goto_29

    :cond_26
    const v4, 0x7f08052f

    :goto_29
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_next_p:Landroid/widget/TextView;

    const v4, 0x7f12003f

    const v5, 0x7f120240

    if-eqz v0, :cond_4e

    iget v6, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v7, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4e

    const v6, 0x7f12003f

    goto :goto_51

    :cond_4e
    const v6, 0x7f120240

    :goto_51
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 325
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    if-eqz v0, :cond_6d

    iget v6, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v7, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6d

    goto :goto_70

    :cond_6d
    const v4, 0x7f120240

    :goto_70
    if-eqz v0, :cond_87

    iget v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v5, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_87

    goto :goto_8a

    :cond_87
    const v2, 0x7f08052f

    :goto_8a
    invoke-virtual {v1, v4, v2}, Lcom/codemao/nemo/view/CourseVideoContainer;->setupExtend(II)V

    return-void
.end method

.method private setupRemind()V
    .registers 8

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->nameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->descView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "NEMO"

    if-eqz v1, :cond_25

    move-object v0, v2

    .line 335
    :cond_25
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/CourseVideoContainer;->changeExpandVisible(Z)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_122

    goto/16 :goto_a7

    :sswitch_45
    const-string v2, "KITTENN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_a7

    :cond_4f
    const/16 v1, 0x8

    goto :goto_a7

    :sswitch_52
    const-string v2, "KITTEN4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_a7

    :cond_5b
    const/4 v1, 0x7

    goto :goto_a7

    :sswitch_5d
    const-string v2, "KITTEN3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_a7

    :cond_66
    const/4 v1, 0x6

    goto :goto_a7

    :sswitch_68
    const-string v2, "WOOD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_a7

    :cond_71
    const/4 v1, 0x5

    goto :goto_a7

    :sswitch_73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_a7

    :cond_7a
    const/4 v1, 0x4

    goto :goto_a7

    :sswitch_7c
    const-string v2, "KIDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_a7

    :cond_85
    const/4 v1, 0x3

    goto :goto_a7

    :sswitch_87
    const-string v2, "BOX3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_a7

    :cond_90
    const/4 v1, 0x2

    goto :goto_a7

    :sswitch_92
    const-string v2, "BOX2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_a7

    :cond_9b
    const/4 v1, 0x1

    goto :goto_a7

    :sswitch_9d
    const-string v2, "BOX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    packed-switch v1, :pswitch_data_148

    .line 369
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/CourseVideoContainer;->changeExpandVisible(Z)V

    goto :goto_11d

    .line 340
    :pswitch_ba  #0x8
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0, v6}, Lcom/codemao/nemo/view/CourseVideoContainer;->changeExpandVisible(Z)V

    goto :goto_11d

    .line 351
    :pswitch_ca  #0x6, 0x7
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_course_type:Landroid/widget/ImageView;

    const v1, 0x7f080497

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_course_type:Landroid/widget/TextView;

    const v1, 0x7f120168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11d

    .line 355
    :pswitch_db  #0x5
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_course_type:Landroid/widget/ImageView;

    const v1, 0x7f0804be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_course_type:Landroid/widget/TextView;

    const v1, 0x7f12032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11d

    .line 345
    :pswitch_ec  #0x4
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_course_type:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->cl_create_work:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v0, v6}, Lcom/codemao/nemo/view/CourseVideoContainer;->changeExpandVisible(Z)V

    goto :goto_11d

    .line 359
    :pswitch_fc  #0x3
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_course_type:Landroid/widget/ImageView;

    const v1, 0x7f08046e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_course_type:Landroid/widget/TextView;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11d

    .line 365
    :pswitch_10d  #0x0, 0x1, 0x2
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->iv_course_type:Landroid/widget/ImageView;

    const v1, 0x7f080462

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->tv_course_type:Landroid/widget/TextView;

    const v1, 0x7f12002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 374
    :goto_11d
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->setupExtend()V

    return-void

    nop

    :sswitch_data_122
    .sparse-switch
        0x101ab -> :sswitch_9d
        0x1f33e7 -> :sswitch_92
        0x1f33e8 -> :sswitch_87
        0x23326d -> :sswitch_7c
        0x248199 -> :sswitch_73
        0x28bead -> :sswitch_68
        0xcc138c -> :sswitch_5d
        0xcc138d -> :sswitch_52
        0xcc13a7 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_10d  #00000000
        :pswitch_10d  #00000001
        :pswitch_10d  #00000002
        :pswitch_fc  #00000003
        :pswitch_ec  #00000004
        :pswitch_db  #00000005
        :pswitch_ca  #00000006
        :pswitch_ca  #00000007
        :pswitch_ba  #00000008
    .end packed-switch
.end method

.method public static start(Landroid/content/Context;Lcom/codemao/nemo/bean/CoursePackageData;I)V
    .registers 5

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_COURSE_PACKAGE"

    .line 127
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "EXTRA_COURSE_INDEX"

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V
    .registers 5

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_COURSE_ITEM"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "EXTRA_COURSE_PACKAGE_ID"

    .line 141
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 5

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CoursePlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_COURSE_ID"

    .line 153
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "EXTRA_COURSE_PACKAGE_ID"

    .line 154
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d0042

    goto :goto_b

    :cond_8
    const v0, 0x7f0d0041

    :goto_b
    return v0
.end method

.method public getViewExtraInfo()Ljava/util/Map;
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

    .line 568
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2d

    .line 569
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setLessonId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "课程详情页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 518
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->backPress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 521
    :cond_7
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 466
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    sparse-switch p1, :sswitch_data_fc

    goto/16 :goto_fb

    .line 474
    :sswitch_e
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    .line 476
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->retryStartVideo()V

    goto/16 :goto_fb

    .line 469
    :sswitch_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 470
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->onBackPressed()V

    goto/16 :goto_fb

    .line 480
    :sswitch_3d
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->hasNextCourse()Z

    move-result p1

    .line 481
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_bf

    .line 483
    iget p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_63

    goto :goto_bf

    .line 487
    :cond_63
    iget p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_fb

    .line 488
    iget p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    .line 489
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 490
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    .line 491
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-nez p1, :cond_9c

    return-void

    .line 495
    :cond_9c
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getVideo_url()Ljava/lang/String;

    move-result-object p1

    .line 496
    iget-object v1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v3, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, v0, v2}, Lcom/codemao/nemo/view/CourseVideoContainer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 498
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    iget-object p1, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    invoke-static {v1, p1, v0, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    .line 499
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->preparedStartVideo()V

    .line 501
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->setupRemind()V

    goto :goto_fb

    .line 484
    :cond_bf
    :goto_bf
    invoke-static {p0}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;)V

    .line 485
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string/jumbo v1, "课程"

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->obtain(ILjava/lang/String;)Lcom/codemao/nemo/event/MainActivityTabChangeEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_fb

    .line 507
    :sswitch_d1
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-nez p1, :cond_d6

    return-void

    .line 510
    :cond_d6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击去创作"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->getViewExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 511
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->goCreate(I)V

    :cond_fb
    :goto_fb
    return-void

    :sswitch_data_fc
    .sparse-switch
        0x7f0a01a3 -> :sswitch_d1
        0x7f0a03e5 -> :sswitch_3d
        0x7f0a03e6 -> :sswitch_3d
        0x7f0a0606 -> :sswitch_1f
        0x7f0a0607 -> :sswitch_1f
        0x7f0a0608 -> :sswitch_d1
        0x7f0a060a -> :sswitch_e
        0x7f0a060b -> :sswitch_e
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 160
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_COURSE_ITEM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "EXTRA_COURSE_PACKAGE_ID"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_35

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-nez p1, :cond_20

    return-void

    .line 167
    :cond_20
    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->fetchCoursePackage(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/Long;)V

    goto/16 :goto_d7

    .line 171
    :cond_35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_COURSE_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourseId:J

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    .line 175
    iget-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourseId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->fetchCoursePackage(Ljava/lang/Long;Ljava/lang/Long;Z)V

    goto :goto_d7

    .line 178
    :cond_66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_COURSE_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CoursePackageData;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    .line 179
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCoursePackageId:J

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EXTRA_COURSE_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    if-eqz p1, :cond_eb

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    if-eqz p1, :cond_eb

    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    .line 182
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_eb

    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ae

    goto :goto_eb

    .line 185
    :cond_ae
    iget p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    if-ltz p1, :cond_eb

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c3

    goto :goto_eb

    .line 188
    :cond_c3
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mPackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CoursePackageData;->getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListDate;->getItems()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCurCourseIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 191
    :goto_d7
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setOnFinishListener(Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setStatusListener(Lcom/codemao/nemo/view/listener/VideoStatusListener;)V

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mCourse:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-nez p1, :cond_e8

    return-void

    .line 196
    :cond_e8
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->init()V

    :cond_eb
    :goto_eb
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 547
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->releaseAllVideosFish()V

    .line 548
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEnd(Z)V
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->mJZVideoContainer:Lcom/codemao/nemo/view/CourseVideoContainer;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 559
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->hideSeekBar(Z)V

    .line 561
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/activity/CoursePlayerActivity;->jz_retry_p:Landroid/view/View;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_11

    const/16 p1, 0x8

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 562
    :goto_12
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 537
    :try_start_0
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->goOnPlayOnPause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    :goto_8
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 526
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 528
    :try_start_3
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->goOnPlayOnResume()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
