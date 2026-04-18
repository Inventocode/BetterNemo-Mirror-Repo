.class public final Lcom/codemao/nemo/biz/common/GlobalUtils;
.super Ljava/lang/Object;
.source "GlobalUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils;

.field private static final api$delegate:Lkotlin/Lazy;

.field private static result:Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

.field private static success:Z

.field private static final urlListKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7RBPZHs8YAJ60QvRr0RpY0A2bFc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2v_kuwPcV9C7yYGqpyjewIx14w()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList$lambda$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JaGCOGtenNoomMEmjwfzNJaMRzU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_C681DVwmY8wO5qH4--9EGoRZ-0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/common/GlobalUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/common/GlobalUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils;

    .line 16
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils$api$2;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$api$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->api$delegate:Lkotlin/Lazy;

    const-string v0, "urlList"

    .line 18
    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->urlListKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setSuccess$p(Z)V
    .registers 1

    .line 14
    sput-boolean p0, Lcom/codemao/nemo/biz/common/GlobalUtils;->success:Z

    return-void
.end method

.method public static final synthetic access$updateList(Lcom/codemao/nemo/biz/common/GlobalUtils;Ljava/lang/String;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/common/GlobalUtils;->updateList(Ljava/lang/String;)V

    return-void
.end method

.method private final getApi()Lcom/codemao/nemo/retrofit/api/SystemService;
    .registers 2

    .line 16
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->api$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/SystemService;

    return-object v0
.end method

.method private static final requestUrlList$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestUrlList$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestUrlList$lambda$2()V
    .registers 0

    return-void
.end method

.method private static final requestUrlList$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateList(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_17

    .line 23
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/common/GlobalUtils;->urlListKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public final getUrlList()Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
    .registers 3

    .line 28
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/common/GlobalUtils;->requestUrlList()V

    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/common/GlobalUtils;->urlListKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    if-eqz v1, :cond_24

    .line 31
    sget-object v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->Companion:Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;->getResult()Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->result:Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    goto :goto_30

    .line 34
    :cond_24
    :try_start_24
    const-class v1, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    sput-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->result:Lcom/codemao/nemo/bean/response/UrlCheckListResponse;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    nop

    .line 39
    :goto_30
    sget-object v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->result:Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    if-nez v0, :cond_3a

    sget-object v0, Lcom/codemao/nemo/bean/response/UrlCheckListResponse;->Companion:Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/response/UrlCheckListResponse$Companion;->getResult()Lcom/codemao/nemo/bean/response/UrlCheckListResponse;

    move-result-object v0

    :cond_3a
    return-object v0
.end method

.method public final requestUrlList()V
    .registers 7

    .line 43
    sget-boolean v0, Lcom/codemao/nemo/biz/common/GlobalUtils;->success:Z

    if-eqz v0, :cond_5

    return-void

    .line 46
    :cond_5
    invoke-direct {p0}, Lcom/codemao/nemo/biz/common/GlobalUtils;->getApi()Lcom/codemao/nemo/retrofit/api/SystemService;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/SystemService;->urlList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$1;

    new-instance v2, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$2;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$2;

    .line 52
    new-instance v3, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda0;

    .line 47
    sget-object v4, Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;->INSTANCE:Lcom/codemao/nemo/biz/common/GlobalUtils$requestUrlList$4;

    .line 56
    new-instance v5, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/codemao/nemo/biz/common/GlobalUtils$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v3, v1, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
