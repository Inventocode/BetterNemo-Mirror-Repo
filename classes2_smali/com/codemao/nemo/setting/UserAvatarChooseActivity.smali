.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserAvatarChooseActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;
.implements Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserAvatarChooseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserAvatarChooseActivity.kt\ncom/codemao/nemo/setting/UserAvatarChooseActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,793:1\n1860#2,3:794\n1860#2,2:797\n1862#2:800\n1#3:799\n*S KotlinDebug\n*F\n+ 1 UserAvatarChooseActivity.kt\ncom/codemao/nemo/setting/UserAvatarChooseActivity\n*L\n458#1:794,3\n708#1:797,2\n708#1:800\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;


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

.field private hasChooseAvatar:Z

.field private hasJump:Z

.field private final isPad:Z

.field private final mAdapter$delegate:Lkotlin/Lazy;

.field private final mAvatarDatas$delegate:Lkotlin/Lazy;

.field private mChoseAvatarPathByAdd:Ljava/lang/String;

.field private final mChoseAvatarPop$delegate:Lkotlin/Lazy;

.field private mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

.field private final mDatas$delegate:Lkotlin/Lazy;

.field private final mIAvatarPop$delegate:Lkotlin/Lazy;

.field private final mLoadingDialog$delegate:Lkotlin/Lazy;

.field private final mSpanNum$delegate:Lkotlin/Lazy;

.field private selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;


# direct methods
.method public static synthetic $r8$lambda$EqOO-XXRnXfaEnxKbmvk-4B3cIk(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->uploadBcmFile$lambda$1(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->Companion:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 89
    sget-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;->INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mDatas$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mDatas$delegate:Lkotlin/Lazy;

    .line 93
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAdapter$2;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 97
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mLoadingDialog$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mLoadingDialog$2;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mLoadingDialog$delegate:Lkotlin/Lazy;

    .line 101
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    .line 103
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mSpanNum$2;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mSpanNum$delegate:Lkotlin/Lazy;

    .line 244
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mIAvatarPop$2;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mIAvatarPop$delegate:Lkotlin/Lazy;

    .line 249
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mChoseAvatarPop$2;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPop$delegate:Lkotlin/Lazy;

    .line 496
    sget-object v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;->INSTANCE:Lcom/codemao/nemo/setting/UserAvatarChooseActivity$mAvatarDatas$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mAvatarDatas$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 756
    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMAdapter(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAvatarDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMChoseAvatarPop(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMChoseAvatarPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)I
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMSpanNum()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSelectedAvatarFrameInfo$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    return-object p0
.end method

.method public static final synthetic access$initData(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData(Z)V

    return-void
.end method

.method public static final synthetic access$isPad$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    return p0
.end method

.method public static final synthetic access$setSelectedAvatarFrameInfo$p(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    return-void
.end method

.method public static final synthetic access$setupHeadInfo(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->setupHeadInfo()V

    return-void
.end method

.method public static final synthetic access$showBottomBtn(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showBottomBtn(Z)V

    return-void
.end method

.method public static final synthetic access$showLoading(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading(Z)V

    return-void
.end method

.method public static final synthetic access$uploadBcmFile(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final cancelCurAvatarFrame()V
    .registers 3

    .line 324
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-interface {v0}, Lcom/codemao/nemo/setting/api/AvatarApiService;->cancelUserAvatarFrame()Lio/reactivex/Observable;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$cancelCurAvatarFrame$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    return-object v0
.end method

.method private final getMAvatarDatas()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mAvatarDatas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getMChoseAvatarPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object v0
.end method

.method private final getMDatas()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mDatas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mIAvatarPop$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/setting/listener/IAvatarPop;

    return-object v0
.end method

.method private final getMLoadingDialog()Lcom/codemao/nemo/dialog/CommonLoadingDialog;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mLoadingDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/dialog/CommonLoadingDialog;

    return-object v0
.end method

.method private final getMSpanNum()I
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mSpanNum$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final initData(Z)V
    .registers 6

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_official"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 148
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_20

    .line 149
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 151
    :cond_20
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 156
    :cond_38
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-interface {v0}, Lcom/codemao/nemo/setting/api/AvatarApiService;->getUserAvatarFrameInfos()Lio/reactivex/Observable;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initData$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic initData$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 145
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData(Z)V

    return-void
.end method

.method private final initListener()V
    .registers 2

    .line 139
    sget v0, Lcom/codemao/nemo/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/codemao/nemo/R$id;->cl_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initRv()V
    .registers 6

    .line 215
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMSpanNum()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 216
    sget v1, Lcom/codemao/nemo/R$id;->rv_avatar_frame_choose:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    new-instance v2, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMSpanNum()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/codemao/nemo/setting/divider/UserAvatarChoseDivider;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 235
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/setting/adapter/UserAvatarOfficialDelegate;

    invoke-direct {v2}, Lcom/codemao/nemo/setting/adapter/UserAvatarOfficialDelegate;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 236
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;

    invoke-direct {v2}, Lcom/codemao/nemo/setting/adapter/UserAvatarTitleDelegate;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 237
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;-><init>(Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 238
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/setting/adapter/UserAvatarFooterDelegate;

    invoke-direct {v2}, Lcom/codemao/nemo/setting/adapter/UserAvatarFooterDelegate;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 240
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final initView()V
    .registers 4

    .line 116
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 119
    :cond_7
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->setupHeadInfo()V

    .line 121
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initListener()V

    .line 122
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initRv()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showBottomBtn$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setupHeadInfo()V
    .registers 5

    .line 127
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 129
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 130
    sget v0, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_66

    .line 132
    :cond_3f
    sget v0, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 134
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_66
    return-void
.end method

.method private final setupUserAvatarFrame()V
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getId()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    .line 369
    :goto_b
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-virtual {v2, v3}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/setting/api/AvatarApiService;

    invoke-interface {v2, v0, v1}, Lcom/codemao/nemo/setting/api/AvatarApiService;->setupUserAvatarFrame(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 370
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$setupUserAvatarFrame$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final showBottomBtn(Z)V
    .registers 9

    .line 418
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8c

    .line 419
    sget v0, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 420
    iget-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getType()I

    move-result v3

    const v4, 0x7f12002e

    const v5, 0x7f120035

    if-ne v3, v2, :cond_5c

    .line 422
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHasOwned()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 423
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getCurrentUsed()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_43
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 426
    :cond_48
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f120151

    .line 427
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_58
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 431
    :cond_5c
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHasOwned()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 432
    iget-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getCurrentUsed()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_89

    :cond_7d
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_89

    :cond_82
    const v3, 0x7f120150

    .line 433
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    :goto_89
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_8c
    :goto_8c
    sget v0, Lcom/codemao/nemo/R$id;->fl_bottom:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9b

    goto :goto_9c

    :cond_9b
    const/4 v2, 0x0

    :goto_9c
    if-ne v2, p1, :cond_9f

    return-void

    :cond_9f
    if-eqz p1, :cond_af

    .line 442
    iget-object v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz v2, :cond_af

    .line 443
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_ba

    .line 445
    :cond_af
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_ba
    if-eqz p1, :cond_c0

    const p1, 0x7f01002c

    goto :goto_c3

    :cond_c0
    const p1, 0x7f010028

    .line 448
    :goto_c3
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 449
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic showBottomBtn$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 416
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showBottomBtn(Z)V

    return-void
.end method

.method private final showLoading(Z)V
    .registers 2

    if-eqz p1, :cond_14

    .line 742
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMLoadingDialog()Lcom/codemao/nemo/dialog/CommonLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_25

    .line 743
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMLoadingDialog()Lcom/codemao/nemo/dialog/CommonLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/CommonLoadingDialog;->show()V

    goto :goto_25

    .line 746
    :cond_14
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMLoadingDialog()Lcom/codemao/nemo/dialog/CommonLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 747
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMLoadingDialog()Lcom/codemao/nemo/dialog/CommonLoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_25
    :goto_25
    return-void
.end method

.method static synthetic showLoading$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 740
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading(Z)V

    return-void
.end method

.method private final updateAvatar(Ljava/lang/String;)V
    .registers 5

    .line 566
    new-instance v0, Lcn/codemao/android/account/bean/UpdateInformationVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/UpdateInformationVO;-><init>()V

    .line 567
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/UpdateInformationVO;->avatar_url(Ljava/lang/String;)Lcn/codemao/android/account/bean/UpdateInformationVO;

    const-string v0, "avatar_url"

    .line 568
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "create(\"avatar_url\", url).map()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v1, v2}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 570
    invoke-interface {v1, v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserInfo(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v0

    .line 571
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 572
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$updateAvatar$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final uploadBcmFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 553
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 554
    new-instance v4, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p4, p2, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method private static final uploadBcmFile$lambda$1(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 6

    const-string p3, "$baseUrl"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$path"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p4}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 556
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 557
    invoke-direct {p2, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->updateAvatar(Ljava/lang/String;)V

    goto :goto_36

    :cond_2d
    const/4 p0, 0x0

    .line 559
    invoke-direct {p2, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading(Z)V

    const-string p0, "图片上传失败"

    .line 560
    invoke-static {p2, p0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_36
    return-void
.end method

.method private final uploadImage(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    const-string v0, "1001"

    const-string v1, ".jpg"

    const-string v2, "0"

    .line 528
    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 529
    new-instance v1, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$uploadImage$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public chooseAvatar(I)V
    .registers 11

    .line 657
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_11f

    if-ltz p1, :cond_11f

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    goto/16 :goto_11f

    :cond_14
    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasChooseAvatar:Z

    .line 661
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v1, :cond_6f

    .line 663
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-eqz p1, :cond_45

    if-eqz p1, :cond_44

    .line 664
    iget p1, p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->adapterIndex:I

    .line 665
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iput-boolean v4, v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 666
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    .line 667
    iput-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    goto :goto_45

    :cond_44
    return-void

    .line 669
    :cond_45
    :goto_45
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    .line 670
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const-string v1, "permissions"

    .line 673
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "TYPE_OPEN_XIANGCE"

    .line 670
    invoke-virtual {v0, p0, v1, p1}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 675
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 676
    new-instance v0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$chooseAvatar$1;-><init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_de

    .line 702
    :cond_6f
    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_79

    const/4 v1, 0x1

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    :goto_7a
    if-eqz v1, :cond_9a

    .line 703
    iput-object v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    .line 704
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 705
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iput-boolean v4, v5, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 706
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    .line 708
    :cond_9a
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v1

    .line 1861
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_b4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_b4
    check-cast v6, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-ne v5, p1, :cond_cf

    .line 710
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->copy()Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    move-result-object v8

    iput v5, v8, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->adapterIndex:I

    iput-object v8, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    .line 711
    iget-boolean v8, v6, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v8, :cond_c5

    goto :goto_dc

    .line 714
    :cond_c5
    iput-boolean v0, v6, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 716
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    goto :goto_dc

    .line 719
    :cond_cf
    iget-boolean v8, v6, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v8, :cond_dc

    .line 720
    iput-boolean v4, v6, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 722
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    :cond_dc
    :goto_dc
    move v5, v7

    goto :goto_a3

    .line 729
    :cond_de
    :goto_de
    iget-boolean p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    if-eqz p1, :cond_f6

    .line 730
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v3

    :cond_ee
    if-nez v3, :cond_f1

    goto :goto_f2

    :cond_f1
    move-object v2, v3

    :goto_f2
    invoke-interface {p1, v2}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->previewLocal(Ljava/lang/String;)V

    return-void

    .line 733
    :cond_f6
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-eqz p1, :cond_10c

    if-eqz p1, :cond_100

    .line 734
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v3

    :cond_100
    sget p1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v3, p1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_11f

    .line 736
    :cond_10c
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_11f
    :goto_11f
    return-void
.end method

.method public final chooseAvatarSuccess(Lcom/codemao/nemo/event/UserAvatarEditEvents;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UserAvatarEditEvents;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "path"

    .line 767
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    .line 770
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 771
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iput-boolean v1, v2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 772
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    .line 774
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    if-eqz v0, :cond_3a

    .line 775
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->previewLocal(Ljava/lang/String;)V

    goto :goto_45

    .line 778
    :cond_3a
    sget v0, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    :goto_45
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d0064

    goto :goto_b

    :cond_8
    const v0, 0x7f0d0063

    :goto_b
    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "用户头像选择页"

    return-object v0
.end method

.method public onChose(I)V
    .registers 10

    .line 454
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_c8

    if-ltz p1, :cond_c8

    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    goto/16 :goto_c8

    .line 458
    :cond_14
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMDatas()Ljava/util/ArrayList;

    move-result-object v0

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_30

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_30
    check-cast v3, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    .line 459
    instance-of v6, v3, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz v6, :cond_62

    const-string v6, "isSelected"

    if-ne v2, p1, :cond_50

    .line 463
    check-cast v3, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {v3}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_43

    goto :goto_62

    .line 466
    :cond_43
    invoke-virtual {v3, v4}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->setSelected(Z)V

    .line 467
    iput-object v3, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    .line 468
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_62

    .line 470
    :cond_50
    check-cast v3, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {v3}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 471
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->setSelected(Z)V

    .line 472
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAdapter()Lcom/codemao/nemo/setting/adapter/UserAvatarFrameAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_62
    :goto_62
    move v2, v5

    goto :goto_1e

    .line 479
    :cond_64
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v4, 0x0

    :goto_6a
    invoke-direct {p0, v4}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showBottomBtn(Z)V

    .line 481
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz p1, :cond_c8

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    .line 482
    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHeadFrameUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_7a

    :cond_79
    move-object p1, v0

    :goto_7a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 483
    sget p1, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    sget p1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_c8

    .line 486
    :cond_a0
    sget p1, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    sget v1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 488
    iget-object v1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHeadFrameUrl()Ljava/lang/String;

    move-result-object v0

    :cond_bf
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v0

    .line 264
    :goto_d
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    const v1, 0x7f0a0364

    if-nez p1, :cond_1a

    goto :goto_25

    .line 268
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_25

    .line 269
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto/16 :goto_fe

    :cond_25
    :goto_25
    const v1, 0x7f0a014c

    const/4 v2, 0x1

    if-nez p1, :cond_2c

    goto :goto_65

    .line 271
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_65

    .line 273
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 275
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 276
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 277
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->enableDrag(Z)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 278
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMChoseAvatarPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto/16 :goto_fe

    :cond_65
    :goto_65
    const v1, 0x7f0a00dd

    if-nez p1, :cond_6c

    goto/16 :goto_fe

    .line 281
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_fe

    .line 282
    sget p1, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const v1, 0x7f12002e

    .line 283
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 284
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->cancelCurAvatarFrame()V

    goto/16 :goto_fe

    :cond_90
    const v1, 0x7f120035

    .line 285
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 286
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->setupUserAvatarFrame()V

    goto :goto_fe

    .line 288
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    const/4 v1, 0x0

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getType()I

    move-result p1

    if-ne v2, p1, :cond_ae

    const/4 p1, 0x1

    goto :goto_af

    :cond_ae
    const/4 p1, 0x0

    :goto_af
    if-eqz p1, :cond_b5

    .line 289
    invoke-static {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goLevelDes(Landroid/content/Context;)V

    return-void

    .line 293
    :cond_b5
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz p1, :cond_fe

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getActivityUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c0

    goto :goto_fe

    :cond_c0
    const-string v3, "www"

    const/4 v4, 0x2

    .line 294
    invoke-static {p1, v3, v1, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nemo://com.codemao.nemo/openwith?type=5&url=http://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_db
    const-string v3, "http"

    .line 296
    invoke-static {p1, v3, v1, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nemo://com.codemao.nemo/openwith?type=5&url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_f4
    :goto_f4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p0, v1, v1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    .line 300
    iput-boolean v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasJump:Z

    nop

    :cond_fe
    :goto_fe
    return-void
.end method

.method public onCommit()V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-nez v0, :cond_19

    const-string v0, "请先选择需要使用的头像"

    .line 513
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 516
    :cond_19
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-eqz v0, :cond_2d

    .line 517
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mChoseDefaultAvatarInfo!!.httpUrl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->updateAvatar(Ljava/lang/String;)V

    goto :goto_3e

    .line 520
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_3e

    .line 521
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->uploadImage(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 108
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 110
    sget p1, Lcom/codemao/nemo/R$id;->cv_avatar:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setPaddingTop(Landroid/view/View;F)V

    .line 111
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initView()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 783
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 784
    sget v0, Lcom/codemao/nemo/R$id;->fl_bottom:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 785
    sget v0, Lcom/codemao/nemo/R$id;->tv_remind:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 786
    invoke-direct {p0, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->showLoading(Z)V

    .line 787
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss()V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_2f

    const-string v0, ""

    .line 615
    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseAvatarPathByAdd:Ljava/lang/String;

    .line 616
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 617
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iput-boolean v2, v3, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 618
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    .line 620
    :cond_2f
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    if-eqz v0, :cond_4f

    if-eqz v0, :cond_4e

    .line 621
    iget v0, v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->adapterIndex:I

    .line 622
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMAvatarDatas()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iput-boolean v2, v3, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    .line 623
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMIAvatarPop()Lcom/codemao/nemo/setting/listener/IAvatarPop;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/codemao/nemo/setting/listener/IAvatarPop;->changeChose(IZ)V

    const/4 v0, 0x0

    .line 624
    iput-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->mChoseDefaultAvatarInfo:Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    goto :goto_4f

    :cond_4e
    return-void

    .line 627
    :cond_4f
    :goto_4f
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    if-eqz v0, :cond_54

    return-void

    .line 631
    :cond_54
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasChooseAvatar:Z

    if-nez v0, :cond_59

    return-void

    .line 634
    :cond_59
    iput-boolean v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasChooseAvatar:Z

    .line 636
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onDrag(IFZ)V
    .registers 4

    .line 640
    iget-boolean p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->isPad:Z

    if-eqz p1, :cond_5

    return-void

    .line 643
    :cond_5
    sget p1, Lcom/codemao/nemo/R$id;->tv_remind:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p3, 0x1

    int-to-float p3, p3

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 311
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 312
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasJump:Z

    if-eqz v0, :cond_22

    .line 314
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->selectedAvatarFrameInfo:Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getType()I

    move-result v0

    if-ne v3, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v2, v1, v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initData$default(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;ZILjava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->setupHeadInfo()V

    .line 318
    :cond_20
    iput-boolean v2, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->hasJump:Z

    :cond_22
    return-void
.end method

.method public onTouchOut(FF)V
    .registers 5

    .line 647
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 648
    sget v1, Lcom/codemao/nemo/R$id;->iv_back:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 649
    invoke-static {p1, p2, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 650
    invoke-direct {p0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->getMChoseAvatarPop()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_1d
    return-void
.end method
