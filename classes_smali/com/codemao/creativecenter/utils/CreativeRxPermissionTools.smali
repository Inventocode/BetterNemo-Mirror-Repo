.class public final Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;
.super Ljava/lang/Object;
.source "CreativeRxPermissionTools.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->INSTANCE:Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rxPermission(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lcom/codemao/creativecenter/bean/PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;

    invoke-direct {v1, p2, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$1;-><init>(Lcom/codemao/creativecenter/bean/PermissionState;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;

    invoke-direct {v0, p2}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermission$2;-><init>(Lcom/codemao/creativecenter/bean/PermissionState;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "rxPermissions.request(pe…ission)\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final rxPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/codemao/creativecenter/bean/PermissionState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/bean/PermissionState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools;->rxPermission(Landroidx/fragment/app/FragmentActivity;Lcom/codemao/creativecenter/bean/PermissionState;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final varargs rxPermissionList(Landroidx/fragment/app/FragmentActivity;[Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lio/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 78
    new-instance v0, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeRxPermissionTools$rxPermissionList$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.fromArray<Str…Permission(activity, s) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
