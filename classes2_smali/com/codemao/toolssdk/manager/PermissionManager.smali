.class public final Lcom/codemao/toolssdk/manager/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionManager.kt\ncom/codemao/toolssdk/manager/PermissionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,913:1\n1851#2,2:914\n1851#2,2:916\n1851#2,2:918\n1851#2,2:920\n13543#3,2:922\n13543#3,2:924\n*S KotlinDebug\n*F\n+ 1 PermissionManager.kt\ncom/codemao/toolssdk/manager/PermissionManager\n*L\n101#1:914,2\n184#1:916,2\n590#1:918,2\n600#1:920,2\n687#1:922,2\n776#1:924,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

.field private static lastPermission:Ljava/lang/String;

.field private static permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

.field private static final permissionsCall:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static requested:Z


# direct methods
.method public static synthetic $r8$lambda$0X212MnYd7kW5KAe5EJuHWHIK6Q(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$20$lambda$19$lambda$18(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ZkcthIRxGFT3BWYl-T8PvBgoZs(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute$lambda$2(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4H7w3kXV-kwDUZC3pVTWijg16QY(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$20$lambda$19(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A5RVTvLsVQTZXdNqN15hsTEjtOY(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$25$lambda$24$lambda$22(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7ZJgKscyEDWy4a0FDJl8GvIJN0(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute$7$lambda$6(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_x7lIZTi_Bk5RjpMTamcTmilRY8(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$20$lambda$19$lambda$17(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsak4wBtGH_fRbVrBfqopmJMuDU(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$25$lambda$24(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cGBqxTP6dg7Oyqu6r-01yVlF3xU(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute$lambda$3(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEsyfYFKQmzh0TdtiafdiaCw_co(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute$7$lambda$5(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lfM_z_aOFwR1rV6L9_5VROmFz5o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips$lambda$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDslf3Tg1fheSiDo74N-5jZXFtw(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$25$lambda$24$lambda$23(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/manager/PermissionManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/PermissionManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    const-string v0, ""

    .line 51
    sput-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLastPermission$p()Ljava/lang/String;
    .registers 1

    .line 47
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPermissionsCall$p()Ljava/util/LinkedHashMap;
    .registers 1

    .line 47
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static final synthetic access$getRequested$p()Z
    .registers 1

    .line 47
    sget-boolean v0, Lcom/codemao/toolssdk/manager/PermissionManager;->requested:Z

    return v0
.end method

.method public static final synthetic access$handlePermissionResult(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Z)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->handlePermissionResult(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$requestBluetoothPermission$execute$20([Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V
    .registers 3

    .line 47
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$20([Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public static final synthetic access$requestBluetoothPermission$execute$25(Landroid/content/Context;Lkotlin/jvm/functions/Function4;[Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission$execute$25(Landroid/content/Context;Lkotlin/jvm/functions/Function4;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$requestCameraPermission$execute$11(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 4

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$execute$11(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$requestCameraPermission$execute$12(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 4

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$execute$12(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$requestExternalStoragePermission$execute(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 4

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/view/ToolsWebView;)V

    return-void
.end method

.method public static final synthetic access$requestExternalStoragePermission$execute$7(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 47
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission$execute$7(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$requestRecordAudioPermission$execute$8(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 4

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$execute$8(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$requestRecordAudioPermission$execute$9(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 4

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$execute$9(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$setLastPermission$p(Ljava/lang/String;)V
    .registers 1

    .line 47
    sput-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRequested$p(Z)V
    .registers 1

    .line 47
    sput-boolean p0, Lcom/codemao/toolssdk/manager/PermissionManager;->requested:Z

    return-void
.end method

.method public static final synthetic access$showDeniedSettingsDialog(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V

    return-void
.end method

.method private final handlePermissionResult(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1851
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.CAMERA"

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    sget-object v3, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_23

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_23
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_34

    .line 594
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    invoke-static {v2, v4, v5, v3, v5}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 596
    :cond_34
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    invoke-static {v0, v4, v5, v3, v5}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    .line 1851
    :cond_40
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_44
    :goto_44
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_83

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 601
    sget-object v3, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_60

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_60
    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_6a

    .line 604
    sget-object v3, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    invoke-direct {v3, p1, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->showDeniedToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 606
    :cond_6a
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "拒绝了权限"

    if-eqz v3, :cond_77

    .line 607
    sget-object v3, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    invoke-virtual {v3, v0, v4}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission(ZLjava/lang/String;)V

    .line 609
    :cond_77
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_44

    .line 610
    sget-object p3, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    invoke-virtual {p3, v0, v4}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission(ZLjava/lang/String;)V

    goto :goto_44

    .line 613
    :cond_83
    sput-boolean v0, Lcom/codemao/toolssdk/manager/PermissionManager;->requested:Z

    return-void
.end method

.method private final hasLocationPermission(Landroid/app/Activity;)Z
    .registers 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 897
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 895
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 899
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 900
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 901
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 902
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method private static final requestBluetoothPermission$execute$20([Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "执行蓝牙权限请求:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 698
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2f

    .line 699
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p0, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3d

    .line 724
    :cond_2f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, p0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    return-void
.end method

.method private static final requestBluetoothPermission$execute$20$lambda$19(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 5

    const-string v0, "$bluetoothPermission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->hasLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 701
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "位置权限未通过"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 703
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p0

    .line 704
    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    goto :goto_50

    .line 715
    :cond_33
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "有位置权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 717
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p0

    .line 718
    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    :goto_50
    return-void
.end method

.method private static final requestBluetoothPermission$execute$20$lambda$19$lambda$17(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2, p3, p4, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestBluetoothPermission$execute$20$lambda$19$lambda$18(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2, p3, p4, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestBluetoothPermission$execute$25(Landroid/content/Context;Lkotlin/jvm/functions/Function4;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 786
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行蓝牙权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 787
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_17

    .line 788
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 813
    :cond_17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, p2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    return-void
.end method

.method private static final requestBluetoothPermission$execute$25$lambda$24(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 5

    const-string v0, "$bluetoothPermission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->hasLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 790
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "没有定位权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 792
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p0

    .line 793
    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    goto :goto_50

    .line 804
    :cond_33
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "有定位权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 806
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p0

    .line 807
    new-instance p1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    :goto_50
    return-void
.end method

.method private static final requestBluetoothPermission$execute$25$lambda$24$lambda$22(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2, p3, p4, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestBluetoothPermission$execute$25$lambda$24$lambda$23(Lkotlin/jvm/functions/Function4;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p2, p3, p4, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic requestCameraPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    .line 479
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic requestCameraPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    .line 404
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final requestCameraPermission$execute$11(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行相机权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 428
    sput-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    .line 429
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2a

    .line 430
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2f

    .line 464
    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method

.method private static final requestCameraPermission$execute$12(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行相机权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 505
    sput-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    .line 506
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2a

    .line 507
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$execute$2;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2f

    .line 541
    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method

.method private static final requestExternalStoragePermission$execute(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            ")V"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行相册权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 113
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 114
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 123
    new-instance p3, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    goto :goto_35

    .line 143
    :cond_30
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    return-void
.end method

.method private static final requestExternalStoragePermission$execute$7(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行相册权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 196
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 197
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    goto :goto_35

    .line 226
    :cond_30
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    return-void
.end method

.method private static final requestExternalStoragePermission$execute$7$lambda$5(Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 11

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_titie:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_msg:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context.getString(R.stri…sdk_permission_album_msg)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "context.getString(R.stri…sdk_permission_tosetting)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    .line 199
    invoke-virtual/range {v2 .. v7}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final requestExternalStoragePermission$execute$7$lambda$6(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 2>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p2, :cond_1f

    .line 208
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p3, p2, p1, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_47

    .line 211
    :cond_1f
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p2, 0x0

    const-string p4, "拒绝了请求"

    invoke-virtual {p0, p2, p4}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission(ZLjava/lang/String;)V

    .line 214
    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 213
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_47

    .line 219
    move-object p0, p1

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_error:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-static {p1, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_47
    :goto_47
    return-void
.end method

.method private static final requestExternalStoragePermission$execute$lambda$2(Lcom/codemao/toolssdk/view/ToolsWebView;Landroid/content/Context;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 11

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    sget p0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_titie:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    sget p0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_msg:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p0, "context.getString(R.stri…sdk_permission_album_msg)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget p0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p0, "context.getString(R.stri…sdk_permission_tosetting)"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget p0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    .line 116
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final requestExternalStoragePermission$execute$lambda$3(Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 2>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p2, :cond_1f

    .line 125
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p3, p2, p1, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_47

    .line 128
    :cond_1f
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p2, 0x0

    const-string p4, "拒绝了请求"

    invoke-virtual {p0, p2, p4}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission(ZLjava/lang/String;)V

    .line 131
    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 130
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_47

    .line 136
    move-object p0, p1

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_album_error:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p1, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_47
    :goto_47
    return-void
.end method

.method public static synthetic requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    .line 307
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    .line 241
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final requestRecordAudioPermission$execute$8(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行录音权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 264
    sput-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    .line 265
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2a

    .line 266
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$1;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2f

    .line 292
    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method

.method private static final requestRecordAudioPermission$execute$9(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行录音权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 331
    sput-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->lastPermission:Ljava/lang/String;

    .line 332
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2a

    .line 333
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionsCall:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$execute$2;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2f

    .line 359
    :cond_2a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method

.method private final showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V
    .registers 15

    const-string v0, "android.permission.CAMERA"

    .line 621
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "context.getString(R.stri…sdk_permission_tosetting)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4b

    .line 623
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v2

    .line 625
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_camera_request:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 627
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_camera_msg:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "context.getString(R.stri…dk_permission_camera_msg)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, p3

    .line 624
    invoke-virtual/range {v5 .. v10}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 632
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 634
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    .line 636
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_record_request:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_record_msg:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string p2, "context.getString(R.stri…dk_permission_record_msg)"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, p3

    .line 635
    invoke-virtual/range {v4 .. v9}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    return-void
.end method

.method private final showDeniedToast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.permission.CAMERA"

    .line 646
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    .line 647
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 653
    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_camera_error:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 657
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 658
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 664
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_record_error:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 662
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 666
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_37
    return-void
.end method

.method private static final showFrontTips$lambda$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->showTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    return-void
.end method

.method public final requestBluetoothPermission(Landroid/content/Context;Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/RxBleClient;Lkotlin/jvm/functions/Function4;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起蓝牙权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 766
    invoke-static {p3}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->getBluetoothPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)[Ljava/lang/String;

    move-result-object p3

    .line 768
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-interface {v0, p4}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestBluetoothPermission(Lkotlin/jvm/functions/Function4;)Z

    move-result v0

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_22

    return-void

    :cond_22
    const/4 v0, 0x0

    if-nez p1, :cond_33

    .line 772
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13543
    :cond_33
    array-length v3, p3

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_43

    aget-object v5, p3, v4

    .line 777
    invoke-static {p1, v5}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    const/4 v1, 0x0

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_43
    if-eqz v1, :cond_53

    .line 782
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p1, p2, p3, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 816
    :cond_53
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_8b

    .line 817
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/manager/PermissionManager;->hasLocationPermission(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 818
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "显示定位权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_LOCATION()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$5;

    invoke-direct {v1, p1, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$5;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_8b

    .line 829
    :cond_76
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "显示蓝牙权限"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 833
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_BLUETOOTH()Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$6;

    invoke-direct {v1, p1, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$6;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final requestBluetoothPermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lcom/polidea/rxandroidble2_codemao/RxBleClient;Lkotlin/jvm/functions/Function4;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起蓝牙权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 677
    invoke-static {p2}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->getBluetoothPermission(Lcom/polidea/rxandroidble2_codemao/RxBleClient;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 678
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v0

    .line 679
    :goto_19
    sget-object v2, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_27

    invoke-interface {v2, p3}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestBluetoothPermission(Lkotlin/jvm/functions/Function4;)Z

    move-result v2

    if-ne v2, v3, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_2b

    return-void

    :cond_2b
    if-nez v1, :cond_3b

    .line 683
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p1, v1, p2, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13543
    :cond_3b
    array-length v2, p2

    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v2, :cond_4b

    aget-object v6, p2, v5

    .line 688
    invoke-static {v1, v6}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_48

    const/4 v3, 0x0

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_4b
    if-eqz v3, :cond_5b

    .line 693
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3, p1, p2, v1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 727
    :cond_5b
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_b7

    .line 728
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->hasLocationPermission(Landroid/app/Activity;)Z

    move-result v2

    const-string v3, "toolsWebView.context"

    if-nez v2, :cond_91

    .line 729
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "显示定位权限"

    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v0

    :cond_82
    sget-object p1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_LOCATION()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;

    invoke-direct {v3, v1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_b7

    .line 740
    :cond_91
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v4, "显示蓝牙权限"

    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_a9

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_a9
    sget-object p1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_BLUETOOTH()Ljava/lang/String;

    move-result-object p1

    .line 741
    new-instance v3, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$3;

    invoke-direct {v3, v1, p2, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$3;-><init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final requestCameraPermission(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "发起相机权限请求，context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-interface {v1, p4}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestCameraPermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_2d

    return-void

    :cond_2d
    if-nez p1, :cond_3f

    .line 492
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const-string p2, "context为空无法请求权限"

    invoke-virtual {p1, v3, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission(ZLjava/lang/String;)V

    .line 493
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 494
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3f
    const-string v1, "android.permission.CAMERA"

    .line 497
    invoke-static {p1, v1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 498
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p1, v2, p3, p2, p3}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 499
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "相机权限通过"

    .line 500
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void

    .line 545
    :cond_59
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_CAMERA()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$2;

    invoke-direct {v2, p4, v1, p1, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final requestCameraPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起相机权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 411
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-interface {v1, p3}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestCameraPermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 414
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_27

    :cond_26
    move-object v4, v1

    :goto_27
    if-nez v4, :cond_36

    .line 416
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const-string p2, "context为空无法请求权限"

    invoke-virtual {p1, v3, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission(ZLjava/lang/String;)V

    .line 417
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_36
    const-string v3, "android.permission.CAMERA"

    .line 420
    invoke-static {v4, v3}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 421
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 p2, 0x2

    invoke-static {p1, v2, v1, p2, v1}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->cameraPermission$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 422
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "相机权限通过"

    .line 423
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void

    :cond_4f
    if-eqz p1, :cond_56

    .line 467
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v1

    :goto_57
    if-eqz v0, :cond_7a

    .line 468
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "toolsWebView.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v1

    :cond_6c
    sget-object p1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_CAMERA()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;

    invoke-direct {v2, p3, v3, v4, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_7a
    return-void
.end method

.method public final requestExternalStoragePermission(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起相册权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p3}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestExternalStoragePermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    if-nez p1, :cond_2d

    .line 166
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const-string p2, "context为空,无法发起请求"

    invoke-virtual {p1, v2, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission(ZLjava/lang/String;)V

    .line 167
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 170
    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_44

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    .line 172
    invoke-static {p1, v3}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_44
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 176
    invoke-static {p1, v3}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 179
    invoke-static {p1, v3}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 180
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    invoke-static {p1, v4}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e

    const/4 v1, 0x0

    goto :goto_5e

    :cond_72
    if-eqz v1, :cond_81

    .line 190
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "相册权限请求已经通过了"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_81
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_IMAGES()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;

    invoke-direct {v2, p3, p1, v0}, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final requestExternalStoragePermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起相册权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p2}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestExternalStoragePermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 81
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_27

    :cond_26
    move-object v3, v0

    :goto_27
    if-nez v3, :cond_36

    .line 83
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const-string v0, "context为空,无法发起请求"

    invoke-virtual {p1, v2, v0}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->albumPermission(ZLjava/lang/String;)V

    .line 84
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 87
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_4d

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    .line 89
    invoke-static {v3, v5}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 90
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_4d
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 93
    invoke-static {v3, v5}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 94
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 96
    invoke-static {v3, v5}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 97
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_63
    :goto_63
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_67
    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    invoke-static {v3, v6}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_67

    const/4 v1, 0x0

    goto :goto_67

    :cond_7b
    if-eqz v1, :cond_8a

    .line 107
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "相册权限请求已经通过了"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    return-void

    :cond_8a
    if-eqz p1, :cond_91

    .line 146
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_92

    :cond_91
    move-object v1, v0

    :goto_92
    if-eqz v1, :cond_b5

    .line 147
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "toolsWebView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v0

    :cond_a7
    sget-object v2, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_IMAGES()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$2;

    invoke-direct {v5, p2, v3, v4, p1}, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$2;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/util/List;Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {p0, v1, v0, v2, v5}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_b5
    return-void
.end method

.method public final requestRecordAudioPermission(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起录音权限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p4}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestRecordAudioPermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    if-nez p1, :cond_2d

    .line 320
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const-string p2, "context为空,无法请求"

    invoke-virtual {p1, v2, p2}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission(ZLjava/lang/String;)V

    return-void

    :cond_2d
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 324
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 325
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p1, v1, p3, p2, p3}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 363
    :cond_42
    sget-object v1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_RECORD()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$2;

    invoke-direct {v2, p4, v0, p1, p3}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final requestRecordAudioPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "发起相录音限请求"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPermission(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->permissionRequestListener:Lcom/codemao/toolssdk/manager/PermissionRequestListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p3}, Lcom/codemao/toolssdk/manager/PermissionRequestListener;->onRequestRecordAudioPermission(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 251
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_27

    :cond_26
    move-object v3, v0

    :goto_27
    if-nez v3, :cond_36

    .line 253
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const-string p2, "context为空,无法请求"

    invoke-virtual {p1, v2, p2}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission(ZLjava/lang/String;)V

    return-void

    :cond_36
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 257
    invoke-static {v3, v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 258
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    const/4 p2, 0x2

    invoke-static {p1, v1, v0, p2, v0}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_4a
    if-eqz p1, :cond_51

    .line 295
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_52

    :cond_51
    move-object v1, v0

    :goto_52
    if-eqz v1, :cond_75

    .line 296
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "toolsWebView.context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v0

    :cond_67
    sget-object p1, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->getPERMISSION_TYPE_RECORD()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$1;

    invoke-direct {v4, p3, v2, v3, p2}, Lcom/codemao/toolssdk/manager/PermissionManager$requestRecordAudioPermission$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {p0, v1, v0, p1, v4}, Lcom/codemao/toolssdk/manager/PermissionManager;->showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_75
    return-void
.end method

.method public final showFrontTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1f

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/PermissionManager$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 69
    :cond_1f
    sget-object v0, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/PermissionFrontUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/utils/PermissionFrontUtils;->showTips(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_24
    return-void
.end method

.method public final toAlbum(Landroid/content/Context;)V
    .registers 8

    .line 852
    new-instance v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    invoke-direct {v0}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 853
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->multiSelect(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 854
    sget v3, Lcom/codemao/toolssdk/R$string;->toolsdk_album_select:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_14
    move-object v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnText(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/4 v3, -0x1

    .line 857
    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnTextColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/high16 v4, -0x1000000

    .line 858
    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->statusBarColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/4 v5, 0x1

    .line 859
    invoke-virtual {v0, v5}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isDarkStatusStyle(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    .line 860
    sget v5, Lcom/codemao/toolssdk/R$drawable;->toolsdk_back:I

    invoke-virtual {v0, v5}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->backResId(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    if-eqz p1, :cond_38

    .line 861
    sget v5, Lcom/codemao/toolssdk/R$string;->toolsdk_album_title:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_39

    :cond_38
    move-object v5, v2

    :goto_39
    invoke-virtual {v0, v5}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->title(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    .line 862
    invoke-virtual {v0, v4}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleBgColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    if-eqz p1, :cond_4d

    .line 863
    sget v2, Lcom/codemao/toolssdk/R$string;->toolsdk_album_all_picture:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4d
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->allImagesText(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCrop(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    .line 864
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCamera(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->build()Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object v0

    const-string v1, "Builder() // 是否多选\n      …needCamera(false).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, p1, v0, v2}, Lcom/codemao/toolssdk/image_selector/ISNav;->toListActivity(Ljava/lang/Object;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V

    return-void
.end method

.method public final toAlbum(Landroid/content/Context;ILcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;Z)V
    .registers 8

    const-string v0, "previewType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    new-instance v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    invoke-direct {v0}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnTextColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const-string v1, "#2E2F47"

    .line 878
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->statusBarColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isDarkStatusStyle(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCrop(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    .line 879
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCamera(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->landscape(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->maxNum(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object p2

    if-eqz p1, :cond_38

    .line 880
    sget p4, Lcom/codemao/toolssdk/R$string;->toolsdk_album_all_picture:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_39

    :cond_38
    const/4 p4, 0x0

    :goto_39
    invoke-virtual {p2, p4}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->allImagesText(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->multiSelect(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object p2

    .line 881
    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->setPreviewType(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->build()Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    move-result-object p2

    const-string p3, "Builder().btnTextColor(C…Type(previewType).build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object p3

    const/16 p4, 0x3e9

    invoke-virtual {p3, p1, p2, p4}, Lcom/codemao/toolssdk/image_selector/ISNav;->toListActivity(Ljava/lang/Object;Lcom/codemao/toolssdk/image_selector/config/ISListConfig;I)V

    return-void
.end method

.method public final toEditMusicPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    sget-object v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->Companion:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;

    const/16 v1, 0x3eb

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;->startActivityForEditMusicFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final toRecordPage(Landroid/app/Activity;Z)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->Companion:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;

    const/16 v1, 0x3ea

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;->startActivity(Landroid/app/Activity;IZ)V

    return-void
.end method
