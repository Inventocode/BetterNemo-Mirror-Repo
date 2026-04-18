.class public final Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;
.super Landroidx/fragment/app/Fragment;
.source "InvisibleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvisibleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvisibleFragment.kt\ncom/codemao/toolssdk/permissionx/request/InvisibleFragment\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,448:1\n37#2,2:449\n*S KotlinDebug\n*F\n+ 1 InvisibleFragment.kt\ncom/codemao/toolssdk/permissionx/request/InvisibleFragment\n*L\n113#1:449,2\n*E\n"
.end annotation


# instance fields
.field private forwardToSettingsCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final forwardToSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

.field private final requestBackgroundLocationLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestInstallPackagesLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final requestNormalPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestSystemAlertWindowLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final requestWriteSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;


# direct methods
.method public static synthetic $r8$lambda$1-eUmN1dPR8x20Fgf9lZdlnMBI4(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestManageExternalStorageLauncher$lambda$4(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5DGltfBRI0sTyK2VWZH_wyBUf5Q(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestNormalPermissionLauncher$lambda$0(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ijqLW6C86VW13wMreIZLaBR_6A(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestBackgroundLocationLauncher$lambda$1(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I4wpEcGejAE9vvR1mdnpE4yO_po(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestSystemAlertWindowLauncher$lambda$2(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mNLMuEgbzf2Xp4EwhOAOpY9HA0k(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestInstallPackagesLauncher$lambda$5(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u5KKWKVQI9NEYiox0qjZJh_axSk(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestWriteSettingsLauncher$lambda$3(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zldJGsNjwQ6xd9V6xmWU5C2KZFw(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsLauncher$lambda$6(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…esult(grantResults)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestNormalPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 58
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…sionResult(granted)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestBackgroundLocationLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 65
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…wPermissionResult()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestSystemAlertWindowLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 72
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…sPermissionResult()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestWriteSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v2, "registerForActivityResul…ePermissionResult()\n    }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 86
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestInstallPackagesLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 93
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…sCallback?.invoke()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private final checkForGC()Z
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const-string v0, "PermissionX"

    const-string v1, "PermissionBuilder and ChainTask should not be null at this time, so we can do nothing in this case."

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic forwardToSettings$default(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 195
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettings(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final forwardToSettingsLauncher$lambda$6(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 95
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    const/4 v0, 0x0

    if-nez p1, :cond_16

    const-string p1, "task"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v2, :cond_22

    const-string v2, "pb"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_23

    :cond_22
    move-object v0, v2

    :goto_23
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v1}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->requestAgain(Ljava/util/List;)V

    .line 97
    :cond_2b
    iget-object p0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_32

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_32
    return-void
.end method

.method private final onRequestBackgroundLocationPermissionResult(Z)V
    .registers 9

    .line 298
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "task"

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "pb"

    const/4 v3, 0x0

    if-eqz p1, :cond_44

    .line 300
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_17

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_17
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_24
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_31

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_31
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez p1, :cond_3e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3e
    move-object v3, p1

    :goto_3f
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_100

    :cond_44
    const/4 p1, 0x1

    .line 307
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    .line 309
    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_51

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_51
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    const/4 v6, 0x0

    if-nez v5, :cond_62

    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_5e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_5e
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v5, :cond_b3

    :cond_62
    if-eqz v4, :cond_b3

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v1, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_74
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v1, :cond_95

    .line 315
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v1, :cond_80

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_80
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 316
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v4, :cond_8d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_8d
    invoke-interface {v4}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v4

    .line 315
    invoke-interface {v1, v4, p1, v6}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_b1

    .line 318
    :cond_95
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v1, :cond_9d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_9d
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v4, :cond_aa

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_aa
    invoke-interface {v4}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    :goto_b1
    const/4 p1, 0x0

    goto :goto_e6

    .line 320
    :cond_b3
    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_bb

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_bb
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

    if-eqz v5, :cond_e6

    if-nez v4, :cond_e6

    .line 322
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v1, :cond_d1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_d1
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v4, :cond_de

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_de
    invoke-interface {v4}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getForwardScope()Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    goto :goto_b1

    :cond_e6
    :goto_e6
    if-nez p1, :cond_f4

    .line 330
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_f0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_f0
    iget-boolean p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showDialogCalled:Z

    if-nez p1, :cond_100

    .line 331
    :cond_f4
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez p1, :cond_fc

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_fd

    :cond_fc
    move-object v3, p1

    :goto_fd
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    :cond_100
    :goto_100
    return-void
.end method

.method private final onRequestInstallPackagesPermissionResult()V
    .registers 6

    .line 413
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "task"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_98

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 416
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_25

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v3, v0

    :goto_26
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_a4

    .line 417
    :cond_2b
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    const-string v1, "pb"

    if-nez v0, :cond_35

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_35
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_41

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_41
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_a4

    .line 418
    :cond_45
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_4d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4d
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    if-eqz v0, :cond_76

    .line 420
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_5b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5b
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 421
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_68

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_69

    :cond_68
    move-object v3, v1

    :goto_69
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 420
    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_a4

    .line 423
    :cond_76
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_7e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7e
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_8b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8c

    :cond_8b
    move-object v3, v1

    :goto_8c
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 423
    invoke-interface {v0, v1, v2}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_a4

    .line 428
    :cond_98
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_a0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a1

    :cond_a0
    move-object v3, v0

    :goto_a1
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    :cond_a4
    :goto_a4
    return-void
.end method

.method private final onRequestManageExternalStoragePermissionResult()V
    .registers 6

    .line 389
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "task"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_90

    .line 391
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 392
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    move-object v3, v0

    :goto_1e
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_9c

    .line 393
    :cond_23
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    const-string v1, "pb"

    if-nez v0, :cond_2d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2d
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_39

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_39
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_9c

    .line 394
    :cond_3d
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_45

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_45
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz v0, :cond_6e

    .line 396
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_53

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_53
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_60

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_61

    :cond_60
    move-object v3, v1

    :goto_61
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 396
    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_9c

    .line 399
    :cond_6e
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_76

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_76
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_83

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_84

    :cond_83
    move-object v3, v1

    :goto_84
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 399
    invoke-interface {v0, v1, v2}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_9c

    .line 404
    :cond_90
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_98

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    move-object v3, v0

    :goto_99
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private final onRequestNormalPermissionsResult(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 223
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    const-string v1, "pb"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 228
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_4e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4e
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_5b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_5b
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_68

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_68
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 234
    :cond_6e
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 237
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_7c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7c
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 240
    :cond_82
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_8d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_8d
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_9a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9a
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 247
    :cond_a0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_ad

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_ad
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_ba

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_ba
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c3
    :goto_c3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 253
    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_e1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_e1
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_ee

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_ee
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 257
    :cond_f4
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_fc

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_fc
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v4, :cond_10a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_10a
    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v4, :cond_116

    const/4 p1, 0x1

    goto :goto_117

    :cond_116
    const/4 p1, 0x0

    :goto_117
    const-string v4, "task"

    if-eqz p1, :cond_129

    .line 259
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez p1, :cond_123

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_124

    :cond_123
    move-object v2, p1

    :goto_124
    invoke-interface {v2}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_23b

    .line 263
    :cond_129
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_131

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_131
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez p1, :cond_141

    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_13d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_13d
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz p1, :cond_1ba

    :cond_141
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_1ba

    .line 265
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_150

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_150
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz p1, :cond_180

    .line 267
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_15c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_15c
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_169

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_169
    invoke-interface {v0}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v7, :cond_177

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_177
    iget-object v7, v7, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-interface {p1, v0, v5, v6}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_1ab

    .line 270
    :cond_180
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_188

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_188
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_195

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_195
    invoke-interface {v0}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v7, :cond_1a3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_1a3
    iget-object v7, v7, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v5}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    .line 273
    :goto_1ab
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_1b3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1b3
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1b8
    const/4 v5, 0x0

    goto :goto_217

    .line 274
    :cond_1ba
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_1c2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1c2
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

    if-eqz p1, :cond_217

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-nez p1, :cond_1de

    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_1d5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1d5
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_217

    .line 276
    :cond_1de
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_1e6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1e6
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 277
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_1f3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1f3
    iget-object p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_200

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_200
    invoke-interface {v0}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getForwardScope()Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v5, :cond_20e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_20e
    iget-object v5, v5, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v3}, Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    goto :goto_1b8

    :cond_217
    :goto_217
    if-nez v5, :cond_225

    .line 283
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_221

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_221
    iget-boolean p1, p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showDialogCalled:Z

    if-nez p1, :cond_230

    .line 284
    :cond_225
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez p1, :cond_22d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_22d
    invoke-interface {p1}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    .line 289
    :cond_230
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez p1, :cond_238

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_239

    :cond_238
    move-object v2, p1

    :goto_239
    iput-boolean v6, v2, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->showDialogCalled:Z

    :cond_23b
    :goto_23b
    return-void
.end method

.method private final onRequestSystemAlertWindowPermissionResult()V
    .registers 6

    .line 341
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "task"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_94

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 344
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v3, v0

    :goto_22
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_a0

    .line 345
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    const-string v1, "pb"

    if-nez v0, :cond_31

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_31
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_3d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3d
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_a0

    .line 346
    :cond_41
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_49

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_49
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    if-eqz v0, :cond_72

    .line 348
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_57

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_57
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 349
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_64

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_65

    :cond_64
    move-object v3, v1

    :goto_65
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 348
    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_a0

    .line 351
    :cond_72
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_7a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7a
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_87

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_88

    :cond_87
    move-object v3, v1

    :goto_88
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 351
    invoke-interface {v0, v1, v2}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_a0

    .line 356
    :cond_94
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_9c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9d

    :cond_9c
    move-object v3, v0

    :goto_9d
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private final onRequestWriteSettingsPermissionResult()V
    .registers 6

    .line 365
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "task"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_94

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 368
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_21

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v3, v0

    :goto_22
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    goto/16 :goto_a0

    .line 369
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    const-string v1, "pb"

    if-nez v0, :cond_31

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_31
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_3d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3d
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_a0

    .line 370
    :cond_41
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_49

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_49
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    const-string v4, "android.permission.WRITE_SETTINGS"

    if-eqz v0, :cond_72

    .line 372
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_57

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_57
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_64

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_65

    :cond_64
    move-object v3, v1

    :goto_65
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 372
    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_a0

    .line 375
    :cond_72
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v0, :cond_7a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7a
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v1, :cond_87

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_88

    :cond_87
    move-object v3, v1

    :goto_88
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 375
    invoke-interface {v0, v1, v2}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_a0

    .line 380
    :cond_94
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-nez v0, :cond_9c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9d

    :cond_9c
    move-object v3, v0

    :goto_9d
    invoke-interface {v3}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->finish()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method private static final requestBackgroundLocationLauncher$lambda$1(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/lang/Boolean;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "granted"

    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestBackgroundLocationPermissionResult(Z)V

    return-void
.end method

.method private static final requestInstallPackagesLauncher$lambda$5(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestInstallPackagesPermissionResult()V

    return-void
.end method

.method private static final requestManageExternalStorageLauncher$lambda$4(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestManageExternalStoragePermissionResult()V

    return-void
.end method

.method private static final requestNormalPermissionLauncher$lambda$0(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Ljava/util/Map;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestNormalPermissionsResult(Ljava/util/Map;)V

    return-void
.end method

.method private static final requestSystemAlertWindowLauncher$lambda$2(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestSystemAlertWindowPermissionResult()V

    return-void
.end method

.method private static final requestWriteSettingsLauncher$lambda$3(Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestWriteSettingsPermissionResult()V

    return-void
.end method


# virtual methods
.method public final forwardToSettings(Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsCallback:Lkotlin/jvm/functions/Function0;

    .line 197
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 204
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->forwardToSettingsCallback:Lkotlin/jvm/functions/Function0;

    .line 206
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->checkForGC()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 208
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-nez v1, :cond_16

    const-string v1, "pb"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_24

    .line 209
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 210
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_24
    return-void
.end method

.method public final requestAccessBackgroundLocationNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 125
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 126
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestBackgroundLocationLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestInstallPackagesPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 182
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 183
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_41

    .line 184
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    iget-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestInstallPackagesLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_44

    .line 188
    :cond_41
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestInstallPackagesPermissionResult()V

    :goto_44
    return-void
.end method

.method public final requestManageExternalStoragePermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 167
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 168
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_27

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_27

    .line 169
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2a

    .line 172
    :cond_27
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestManageExternalStoragePermissionResult()V

    :goto_2a
    return-void
.end method

.method public final requestNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Ljava/util/Set;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/permissionx/request/ChainTask;",
            ")V"
        }
    .end annotation

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 112
    iput-object p3, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 113
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestNormalPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    .line 38
    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestSystemAlertWindowPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 135
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 137
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    iget-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestSystemAlertWindowLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_4e

    .line 141
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestSystemAlertWindowPermissionResult()V

    :goto_4e
    return-void
.end method

.method public final requestWriteSettingsPermissionNow(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V
    .registers 4

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 151
    iput-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->task:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 152
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object p2, p0, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->requestWriteSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_4e

    .line 157
    :cond_4b
    invoke-direct {p0}, Lcom/codemao/toolssdk/permissionx/request/InvisibleFragment;->onRequestWriteSettingsPermissionResult()V

    :goto_4e
    return-void
.end method
