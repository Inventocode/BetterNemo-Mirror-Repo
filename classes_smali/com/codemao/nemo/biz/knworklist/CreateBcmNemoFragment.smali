.class public final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;
.super Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
.source "CreateBcmNemoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isPublished:Z

.field private mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$GWmdvtswUUjiyl9bqD-ekocF8Do(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->getPublishState$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m4lOZaTAqN_HMw8bb2r0YYbBBds(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->checkBindInfo$lambda$2$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;-><init>()V

    .line 162
    new-instance v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;-><init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$changePublishedState(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->changePublishedState(Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V

    return-void
.end method

.method public static final synthetic access$goAnswerFriendlyProtocol(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->goAnswerFriendlyProtocol()V

    return-void
.end method

.method public static final synthetic access$goPublishActivity(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->goPublishActivity()V

    return-void
.end method

.method private final changePublishedState(Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 181
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->isUnpublished()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_1e

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->isInReview()Z

    move-result p1

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_1e
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->isPublished:Z

    .line 182
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->setPublished(Z)V

    .line 183
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->isPublished:Z

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->changePublishedView(Z)V

    return-void
.end method

.method private final checkBindInfo()V
    .registers 5

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 271
    sget-object v1, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkPublish(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;-><init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1d
    return-void
.end method

.method private static final checkBindInfo$lambda$2$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getPublishState$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getViewModel()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    return-object v0
.end method

.method private final goAnswerFriendlyProtocol()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v0, :cond_e

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    iget-boolean v2, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->isPublished:Z

    const/4 v3, 0x2

    .line 292
    invoke-static {v1, v0, v2, v3}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswerKn(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/SaveResult;ZI)V

    :cond_e
    return-void
.end method

.method private final goPublishActivity()V
    .registers 6

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v2

    :goto_1a
    const-string v3, "workId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v2

    :goto_29
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    const-string v3, "type"

    .line 342
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getCover()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    move-object v1, v2

    :goto_3e
    const-string v3, "imagePath"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getPicNeedCheckFileUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    :cond_4c
    move-object v1, v2

    :goto_4d
    const-string v3, "publish_work_pictures"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_5b
    move-object v1, v2

    :goto_5c
    const-string v3, "publish_work_url"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getBcmVersion()Ljava/lang/String;

    move-result-object v2

    :cond_69
    const-string v1, "publish_work_bcm_version"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-boolean v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->isPublished:Z

    const-string v2, "published"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPickCatQuitPopConfig()Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
    .registers 5

    .line 397
    new-instance v0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getShowPublishButton()Z

    move-result v1

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getPublished()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;-><init>(ZZZZ)V

    return-object v0
.end method

.method public getPublishState(I)V
    .registers 10

    .line 195
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getPublishState(I)V

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_12

    const-string v3, "workId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_13

    :cond_12
    move-wide v3, v1

    :goto_13
    cmp-long v0, v3, v1

    if-nez v0, :cond_2b

    .line 197
    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;->getWorkId()J

    move-result-wide v1

    goto :goto_23

    :cond_22
    move-wide v1, v5

    :goto_23
    cmp-long v7, v1, v5

    if-lez v7, :cond_2b

    .line 198
    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->goPublishActivity()V

    goto :goto_46

    :cond_2b
    if-eqz v0, :cond_46

    .line 200
    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->getViewModel()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus(J)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$getPublishState$1;-><init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;I)V

    new-instance p1, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public final onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    sget-object p1, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getCMToolsManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->setBindPhoneResult(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 171
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 406
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onDestroy()V

    .line 407
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPublishSaved(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V
    .registers 4

    .line 221
    invoke-super {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onPublishSaved(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "创作也的保存结果:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "流程-发布"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "保存成功"

    .line 223
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iput-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    .line 225
    invoke-direct {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->checkBindInfo()V

    return-void
.end method

.method public onQuite()V
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 191
    :cond_12
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onQuite()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 369
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onResume()V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "最终加载的链接:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getLastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toolSdkWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->getPublishState(I)V

    return-void
.end method

.method public onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V
    .registers 4

    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V

    if-eqz p1, :cond_7

    .line 376
    iput-object p2, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->mSaveResult:Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    :cond_7
    if-eqz p3, :cond_34

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;I)V

    .line 380
    sget-object p1, Lcom/codemao/nemo/common/GlobalLiveData;->INSTANCE:Lcom/codemao/nemo/common/GlobalLiveData;

    invoke-virtual {p1}, Lcom/codemao/nemo/common/GlobalLiveData;->getKN_WORK_UPDATE()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const-wide/16 p2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 381
    sget-object p1, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "work_kn_page_finishi"

    invoke-virtual {p1, p3, p2}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 5

    .line 387
    invoke-super {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolLoadDidFinish()V

    .line 391
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getCMToolsManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 392
    sget-object v1, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->setAccountListener(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    :cond_17
    return-void
.end method
