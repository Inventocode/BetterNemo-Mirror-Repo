.class public final Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;
.super Ljava/lang/Object;
.source "PermissionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$Companion;
    }
.end annotation


# instance fields
.field public activity:Landroidx/fragment/app/FragmentActivity;

.field public currentDialog:Landroid/app/Dialog;

.field private darkColor:I

.field public deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public explainReasonBeforeRequest:Z

.field public explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

.field public explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

.field public forwardPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

.field private fragment:Landroidx/fragment/app/Fragment;

.field public grantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lightColor:I

.field public normalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originRequestOrientation:I

.field public permanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permissionsWontRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestCallback:Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;

.field public showDialogCalled:Z

.field public specialPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tempPermanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BoiLAwMGLq9TDIULmrJOyDBzJHc(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;Lcom/codemao/toolssdk/permissionx/request/ChainTask;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showHandlePermissionDialog$lambda$1(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;Lcom/codemao/toolssdk/permissionx/request/ChainTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcjgN-iKooSJOStc6YtkAptpBNU(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showHandlePermissionDialog$lambda$2(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuUos4wAfZuIcDkagehqJKvXs00(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showHandlePermissionDialog$lambda$0(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalPermissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPermissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->lightColor:I

    .line 67
    iput v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->darkColor:I

    .line 73
    iput v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->originRequestOrientation:I

    .line 113
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    .line 141
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    .line 149
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    if-eqz p1, :cond_43

    .line 588
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    :cond_43
    if-nez p1, :cond_53

    if-eqz p2, :cond_53

    .line 592
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 594
    :cond_53
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->fragment:Landroidx/fragment/app/Fragment;

    .line 595
    iput-object p3, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    .line 596
    iput-object p4, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    return-void
.end method

.method private final forwardToSettings(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 535
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettings$default(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    return-object v0
.end method

.method private final getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;
    .registers 4

    .line 567
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 569
    check-cast v0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    goto :goto_23

    .line 571
    :cond_f
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    invoke-direct {v0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;-><init>()V

    .line 572
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 573
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :goto_23
    return-object v0
.end method

.method private final lockOrientation()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->originRequestOrientation:I

    .line 520
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    goto :goto_30

    .line 522
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_30

    .line 524
    :cond_28
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_30
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda$0(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/view/View;)V
    .registers 6

    const-string p5, "$dialog"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$chainTask"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$permissions"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_1d

    .line 337
    invoke-interface {p2, p3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->requestAgain(Ljava/util/List;)V

    goto :goto_20

    .line 339
    :cond_1d
    invoke-direct {p4, p3}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettings(Ljava/util/List;)V

    :goto_20
    return-void
.end method

.method private static final showHandlePermissionDialog$lambda$1(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;Lcom/codemao/toolssdk/permissionx/request/ChainTask;Landroid/view/View;)V
    .registers 3

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$chainTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    invoke-interface {p1}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    return-void
.end method

.method private static final showHandlePermissionDialog$lambda$2(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 350
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final forwardToSettings(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettings(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "activity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTargetSdkVersion()I
    .registers 2

    .line 549
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public final onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

    return-object p0
.end method

.method public final removeInvisibleFragment$toolssdk_release()V
    .registers 3

    .line 501
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 503
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1b
    return-void
.end method

.method public final request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestCallback:Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;

    .line 252
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->lockOrientation()V

    .line 255
    new-instance p1, Lcom/codemao/toolssdk/permissionx/request/RequestChain;

    invoke-direct {p1}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;-><init>()V

    .line 256
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestNormalPermissions;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestNormalPermissions;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 257
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 258
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestSystemAlertWindowPermission;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestSystemAlertWindowPermission;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 259
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestWriteSettingsPermission;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestWriteSettingsPermission;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 260
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 261
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestInstallPackagesPermission;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/request/RequestInstallPackagesPermission;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V

    .line 262
    invoke-virtual {p1}, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->runTask$toolssdk_release()V

    return-void
.end method

.method public final requestAccessBackgroundLocationNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 3

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestAccessBackgroundLocationNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final requestInstallPackagePermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 3

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestInstallPackagesPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final requestManageExternalStoragePermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 3

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestManageExternalStoragePermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final requestNow(Ljava/util/Set;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/permissionx/request/ChainTask;",
            ")V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Ljava/util/Set;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final requestSystemAlertWindowPermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 3

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestSystemAlertWindowPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final requestWriteSettingsPermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 3

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getInvisibleFragment()Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestWriteSettingsPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method

.method public final restoreOrientation$toolssdk_release()V
    .registers 3

    .line 511
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->originRequestOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setActivity(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final shouldRequestBackgroundLocationPermission()Z
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final shouldRequestInstallPackagesPermission()Z
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final shouldRequestManageExternalStoragePermission()Z
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final shouldRequestSystemAlertWindowPermission()Z
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final shouldRequestWriteSettingsPermission()Z
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final showHandlePermissionDialog(Lcom/codemao/toolssdk/permissionx/request/ChainTask;ZLcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;)V
    .registers 14

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showDialogCalled:Z

    .line 316
    invoke-virtual {p3}, Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;->getPermissionsToRequest()Ljava/util/List;

    move-result-object v5

    const-string v1, "dialog.permissionsToRequest"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 318
    invoke-interface {p1}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    return-void

    .line 321
    :cond_20
    iput-object p3, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    .line 322
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 323
    instance-of v1, p3, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;

    if-eqz v1, :cond_38

    move-object v1, p3

    check-cast v1, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;->isPermissionLayoutEmpty$toolssdk_release()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 326
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 327
    invoke-interface {p1}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    .line 329
    :cond_38
    invoke-virtual {p3}, Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;->getPositiveButton()Landroid/view/View;

    move-result-object v7

    const-string v1, "dialog.positiveButton"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;->getNegativeButton()Landroid/view/View;

    move-result-object v8

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 332
    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 333
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    .line 334
    new-instance v9, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;ZLcom/codemao/toolssdk/permissionx/request/ChainTask;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_69

    .line 343
    invoke-virtual {v8, v0}, Landroid/view/View;->setClickable(Z)V

    .line 344
    new-instance p2, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    :cond_69
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_75

    new-instance p2, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_75
    return-void
.end method

.method public final showHandlePermissionDialog(Lcom/codemao/toolssdk/permissionx/request/ChainTask;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/permissionx/request/ChainTask;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v2, "chainTask"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "permissions"

    move-object v5, p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "title"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    move-object/from16 v7, p5

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "positiveText"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v2, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;

    .line 288
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 294
    iget v10, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->lightColor:I

    .line 295
    iget v11, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->darkColor:I

    move-object v3, v2

    move-object/from16 v9, p7

    .line 287
    invoke-direct/range {v3 .. v11}, Lcom/codemao/toolssdk/permissionx/dialog/DefaultDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v3, p2

    .line 297
    invoke-virtual {p0, p1, p2, v2}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showHandlePermissionDialog(Lcom/codemao/toolssdk/permissionx/request/ChainTask;ZLcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;)V

    return-void
.end method
