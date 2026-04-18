.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVCSAssistInfoPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VCSAssistInfoPop.kt\ncom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,736:1\n98#1:737\n1819#2,2:738\n*E\n*S KotlinDebug\n*F\n+ 1 VCSAssistInfoPop.kt\ncom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop\n*L\n617#1:737\n687#1,2:738\n*E\n"
.end annotation


# instance fields
.field private assistCode:Ljava/lang/String;

.field private clEmpty:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private clInvite:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private clRecover:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private clShareDebug:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private csb:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

.field private final ctx:Landroid/content/Context;

.field private volatile curAssistMode:Z

.field private isCancelUpload:Z

.field private final isOpenAssistMode:Z

.field private ivRecover:Landroid/widget/ImageView;

.field private final mAdapter$delegate:Lkotlin/Lazy;

.field private final mApiStore$delegate:Lkotlin/Lazy;

.field private final mAssistorInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

.field private final originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

.field private progressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private tvRecover:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;Z)V
    .registers 5

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originBcm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iput-boolean p3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isOpenAssistMode:Z

    .line 81
    iput-boolean p3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    .line 85
    new-instance p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mAdapter$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAdapter$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 92
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->assistCode:Ljava/lang/String;

    .line 414
    sget-object p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mApiStore$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$mApiStore$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mApiStore$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$download(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static final synthetic access$getAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->assistCode:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    return p0
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-object p0
.end method

.method public static final synthetic access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->progressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-object p0
.end method

.method public static final synthetic access$isCancelUpload$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isCancelUpload:Z

    return p0
.end method

.method public static final synthetic access$performRecover(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performRecover()V

    return-void
.end method

.method public static final synthetic access$requestToggleMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Ljava/lang/String;Z)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->requestToggleMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->assistCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCancelUpload$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isCancelUpload:Z

    return-void
.end method

.method public static final synthetic access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    return-void
.end method

.method public static final synthetic access$setMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-void
.end method

.method public static final synthetic access$setProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->progressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    return-void
.end method

.method public static final synthetic access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->setupMode()V

    return-void
.end method

.method public static final synthetic access$toggleAssistMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->toggleAssistMode()V

    return-void
.end method

.method public static final synthetic access$upload(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method private final download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2e

    check-cast v0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 366
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v1

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const-string v3, "data.work_id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->recoverWork(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 367
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 368
    invoke-virtual {v0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$download$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 365
    :cond_2e
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.codemao.creativecenter.base.BaseCreativeActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final fetchAssistorInfos()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_44

    check-cast v0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 244
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v3, "originBcm.workId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->fetchAssistorInfos(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 253
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$fetchAssistorInfos$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 241
    :cond_44
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.codemao.creativecenter.base.BaseCreativeActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final fetchShowMode()I
    .registers 3

    .line 616
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    if-eqz v0, :cond_12

    .line 98
    invoke-static {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    :cond_11
    return v1

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private final getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    return-object v0
.end method

.method private final getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mApiStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    return-object v0
.end method

.method private final initRecyclerView()V
    .registers 4

    .line 301
    sget v0, Lcom/codemao/creativecenter/R$id;->rv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.rv)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 302
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 303
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "rv"

    if-nez v1, :cond_20

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 304
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->rv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2a
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->rv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_38

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_38
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final performRecover()V
    .registers 7

    .line 327
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 328
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    const-string/jumbo v1, "已经是最初版本了"

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 331
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->toCreateData()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    const-string/jumbo v2, "取消"

    const-string/jumbo v3, "正在恢复最初作品版本"

    if-nez v1, :cond_33

    .line 333
    sget-object v1, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;

    .line 334
    iget-object v4, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    .line 337
    new-instance v5, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;

    invoke-direct {v5, p0, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 333
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->showPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    goto :goto_5e

    :cond_33
    if-nez v1, :cond_38

    .line 356
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_38
    invoke-virtual {v1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isDismiss()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    if-eqz v1, :cond_45

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v1, v4, :cond_5e

    .line 357
    :cond_4a
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    if-nez v1, :cond_51

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_51
    invoke-virtual {v1, v3, v2}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mRecoverProgressPop:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    if-nez v1, :cond_5b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5b
    invoke-virtual {v1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_5e
    :goto_5e
    const-string v1, "createData"

    .line 361
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method private final performUpload(Z)V
    .registers 6

    .line 537
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_35

    .line 538
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ctx.supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 539
    instance-of v2, v1, Lcom/codemao/creativecenter/NewBcmFragment;

    if-eqz v2, :cond_19

    .line 540
    check-cast v1, Lcom/codemao/creativecenter/NewBcmFragment;

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;

    invoke-direct {v3, p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performUpload$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWorkWithoutPop(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    goto :goto_19

    :cond_35
    return-void
.end method

.method static synthetic performUpload$default(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 536
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performUpload(Z)V

    return-void
.end method

.method private final requestToggleMode(Ljava/lang/String;Z)V
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iput-object p1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    check-cast v0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 450
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->toggleAssistMode(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 451
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 452
    invoke-virtual {v0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 453
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$requestToggleMode$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 449
    :cond_2b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.codemao.creativecenter.base.BaseCreativeActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setupMode()V
    .registers 7

    .line 623
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->fetchShowMode()I

    move-result v0

    .line 624
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clEmpty:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_d

    const-string v2, "clEmpty"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_14

    const/4 v4, 0x0

    goto :goto_16

    :cond_14
    const/16 v4, 0x8

    :goto_16
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clInvite:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_22

    const-string v4, "clInvite"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_22
    const/4 v4, 0x2

    if-ne v0, v4, :cond_27

    const/4 v5, 0x0

    goto :goto_29

    :cond_27
    const/16 v5, 0x8

    :goto_29
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clShareDebug:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_35

    const-string v5, "clShareDebug"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_35
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3a

    const/4 v5, 0x0

    goto :goto_3c

    :cond_3a
    const/16 v5, 0x8

    :goto_3c
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clRecover:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_48

    const-string v5, "clRecover"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_48
    if-eqz v0, :cond_4c

    const/4 v5, 0x0

    goto :goto_4e

    :cond_4c
    const/16 v5, 0x8

    :goto_4e
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->rv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_5a

    const-string v5, "rv"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5a
    if-ne v0, v4, :cond_5d

    goto :goto_5f

    :cond_5d
    const/16 v2, 0x8

    :goto_5f
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 630
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->hasSelected()Z

    move-result v0

    .line 631
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ivRecover:Landroid/widget/ImageView;

    if-nez v1, :cond_73

    const-string v2, "ivRecover"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_73
    if-eqz v0, :cond_78

    sget v2, Lcom/codemao/creativecenter/R$drawable;->creative_icon_recover:I

    goto :goto_7a

    :cond_78
    sget v2, Lcom/codemao/creativecenter/R$drawable;->creative_icon_recover_enable:I

    :goto_7a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->tvRecover:Landroid/widget/TextView;

    if-nez v1, :cond_86

    const-string v2, "tvRecover"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_86
    if-eqz v0, :cond_8a

    const/4 v0, -0x1

    goto :goto_90

    :cond_8a
    const-string v0, "#80ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_90
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->csb:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    if-nez v0, :cond_9c

    const-string v1, "csb"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9c
    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setChecked(Z)V

    return-void
.end method

.method private final toggleAssistMode()V
    .registers 4

    .line 498
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performUpload$default(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;ZILjava/lang/Object;)V

    goto :goto_51

    .line 501
    :cond_b
    new-instance v0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "取消"

    .line 503
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v1, "确定"

    .line 504
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v1, "关闭协助模式会删除所有\n协作者的作品"

    .line 505
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string v1, ""

    .line 506
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 507
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$toggleAssistMode$$inlined$also$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$toggleAssistMode$$inlined$also$lambda$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 512
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$toggleAssistMode$$inlined$also$lambda$2;

    invoke-direct {v1, v0, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$toggleAssistMode$$inlined$also$lambda$2;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 522
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 524
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 525
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :goto_51
    return-void
.end method

.method private final upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isCancelUpload:Z

    .line 420
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method


# virtual methods
.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 65
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_vcs_assist_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_vcs_assist:I

    :goto_d
    return v0
.end method

.method public final getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 6

    .line 107
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 108
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_empty:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cl_empty)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clEmpty:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_invite:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<ConstraintLayout>(R.id.cl_invite)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clInvite:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_38

    const-string v1, "clInvite"

    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_38
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_share_debug:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cl_share_debug)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clShareDebug:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_key:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_62

    const/4 v3, 0x0

    goto :goto_64

    :cond_62
    const/16 v3, 0x8

    :goto_64
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    new-instance v3, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_qq:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    .line 145
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v3

    if-eqz v3, :cond_7e

    const/4 v3, 0x0

    goto :goto_80

    :cond_7e
    const/16 v3, 0x8

    :goto_80
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    new-instance v3, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_wx:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    .line 158
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v4, 0x0

    :cond_99
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$3;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_recover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cl_recover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clRecover:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_recover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.iv_recover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ivRecover:Landroid/widget/ImageView;

    .line 171
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_recover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.tv_recover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->tvRecover:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->clRecover:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_da

    const-string v1, "clRecover"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_da
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/codemao/creativecenter/R$id;->csb_assist:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.csb_assist)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->csb:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    const-string v1, "csb"

    if-nez v0, :cond_f8

    .line 199
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f8
    new-instance v4, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$7;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setOnCheckedChangeListener(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$OnCheckedChangeListener;)V

    .line 209
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->initRecyclerView()V

    .line 212
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isOpenAssistMode:Z

    if-eqz v0, :cond_134

    const-string v0, "KEY_HAS_SHOW_ASSIST_REMIND"

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_134

    .line 217
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 220
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 221
    new-instance v2, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;

    iget-object v4, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 225
    :cond_134
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isOpenAssistMode:Z

    if-nez v0, :cond_148

    .line 226
    iput-boolean v3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    .line 227
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->csb:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    if-nez v0, :cond_141

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_141
    invoke-virtual {v0, v3}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->setChecked(Z)V

    .line 229
    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performUpload(Z)V

    goto :goto_14b

    .line 231
    :cond_148
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->fetchAssistorInfos()V

    :goto_14b
    return-void
.end method

.method public final onApplyAssistorBcm(Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    return-void

    .line 687
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 688
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/events/ApplyAssistorBcmEvent;->getAssistorId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setSelected(Z)V

    goto :goto_1e

    .line 690
    :cond_3a
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 692
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public onChoose(I)V
    .registers 12

    if-ltz p1, :cond_cd

    .line 696
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto/16 :goto_cd

    .line 699
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 703
    :cond_17
    sget-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v2, "originBcm.workId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, v2}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistVersionsManager;->saveChoseWorkVersion(Ljava/lang/String;ILjava/util/List;)V

    .line 704
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->setHasUpdate(Z)V

    .line 705
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 707
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 708
    new-instance v1, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "originBcm.workUid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMAdapter()Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->hasUpdate()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/vcs/events/AssistorVersionUpdateEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 711
    new-instance v6, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v6}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 712
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    iput-object v0, v6, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getWorkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/codemao/creativestore/bean/WorksEvent;->bcmUrl:Ljava/lang/String;

    const-string v0, "assist_works"

    .line 714
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    iput-object v1, v6, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkId:Ljava/lang/String;

    .line 716
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkUid:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/codemao/creativestore/bean/WorksEvent;->assistorId:Ljava/lang/String;

    .line 720
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bcm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b8

    :cond_b4
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object p1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 722
    :goto_b8
    sget-object v4, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->Companion:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;

    .line 723
    iget-object v5, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_c1

    goto :goto_c3

    :cond_c1
    const-string p1, ""

    :goto_c3
    move-object v9, p1

    .line 722
    invoke-virtual/range {v4 .. v9}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;->getCallIntent(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 728
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method protected onCreate()V
    .registers 2

    .line 102
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete(I)V
    .registers 5

    if-ltz p1, :cond_4b

    .line 646
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_4b

    .line 649
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_43

    check-cast v0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 650
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->mAssistorInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mAssistorInfos[pos]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 651
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->deleteAssistor(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 652
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 653
    invoke-virtual {v0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$onDelete$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void

    .line 649
    :cond_43
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.codemao.creativecenter.base.BaseCreativeActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 733
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 734
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDismiss()V
    .registers 5

    const-string v0, ""

    .line 638
    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->assistCode:Ljava/lang/String;

    .line 639
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->isOpenAssistMode:Z

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    if-eq v0, v1, :cond_23

    .line 640
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->originBcm:Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkUid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "originBcm.workUid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->curAssistMode:Z

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/vcs/events/ChangeAssistModeEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 642
    :cond_23
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method
