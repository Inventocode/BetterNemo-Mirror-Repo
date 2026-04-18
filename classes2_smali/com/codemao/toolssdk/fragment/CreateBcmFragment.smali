.class public Lcom/codemao/toolssdk/fragment/CreateBcmFragment;
.super Landroidx/fragment/app/Fragment;
.source "CreateBcmFragment.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;
.implements Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateBcmFragment.kt\ncom/codemao/toolssdk/fragment/CreateBcmFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,734:1\n1#2:735\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

.field private static testToolType:Ljava/lang/String;


# instance fields
.field private basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

.field private bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

.field private final isShowTopPopupWindow:Z

.field private published:Ljava/lang/Boolean;

.field private quitePop:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

.field private final register:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

.field private showPublishButton:Z

.field private toolMode:Ljava/lang/String;

.field private toolType:Ljava/lang/String;

.field private topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private webView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$1uwwvQTc3JluyH-Y35GvmXTjtgA(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showBcmStateChangeDialog$lambda$6(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A5DWO8QJw1IIyjJ9GnAsw-edMF4(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->register$lambda$0(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8JVpgQNjp6fpxjat4pHZo15tcc(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showBcmStateChangeDialog$lambda$5(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->Companion:Lcom/codemao/toolssdk/fragment/CreateBcmFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->isShowTopPopupWindow:Z

    const-string v0, "KN"

    .line 227
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    const-string v0, "normal"

    .line 228
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolMode:Ljava/lang/String;

    .line 235
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…ultCallback(result)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->register:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$closePage(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->closePage()V

    return-void
.end method

.method public static final synthetic access$getBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-object p0
.end method

.method public static final synthetic access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$onPublishWork(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onPublishWork()V

    return-void
.end method

.method public static final synthetic access$saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    return-void
.end method

.method public static final synthetic access$setBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private final closePage()V
    .registers 5

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 436
    iget-boolean v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->isShowTopPopupWindow:Z

    if-eqz v1, :cond_21

    .line 437
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v1

    if-ne v1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-nez v2, :cond_24

    .line 438
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showTopPopupWindow(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_24

    .line 441
    :cond_21
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish()V

    :cond_24
    :goto_24
    return-void
.end method

.method private final onPublishWork()V
    .registers 5

    .line 529
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showSavingDialog()V

    .line 530
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onPublishWork$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onPublishWork$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onPublishWork$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onPublishWork$2;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final register$lambda$0(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroidx/activity/result/ActivityResult;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz p0, :cond_11

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->activityResultCallback(Landroidx/activity/result/ActivityResult;)V

    :cond_11
    return-void
.end method

.method private static final saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V
    .registers 4

    .line 491
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showSavingDialog()V

    .line 492
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$executeSave$2;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    const-string p0, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final showBcmStateChangeDialog$lambda$5(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish()V

    .line 597
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_f
    return-void
.end method

.method private static final showBcmStateChangeDialog$lambda$6(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->onPublishWork()V

    .line 600
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_f
    return-void
.end method

.method private final showErrorLoad(I)V
    .registers 4

    .line 615
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_f

    .line 616
    sget-object v1, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getLoadErrorStr(I)Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V

    :cond_f
    return-void
.end method

.method private final showLoadingDialog()V
    .registers 4

    .line 621
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 622
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-nez v1, :cond_17

    .line 623
    sget-object v1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->Companion:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;

    .line 625
    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$showLoadingDialog$1$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    .line 623
    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;->generateXPop(Landroid/content/Context;Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    .line 635
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_1e
    return-void
.end method

.method private final showSavingDialog()V
    .registers 5

    .line 642
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_18

    .line 643
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->dismissLoadDialog()V

    .line 644
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    .line 646
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    const-string v2, "正在保存作品"

    invoke-direct {v1, v0, v2}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    if-eqz v1, :cond_2c

    .line 647
    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->show()V

    :cond_2c
    return-void
.end method

.method private final showTopPopupWindow(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 4

    .line 447
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canShowExitPop()Z
    .registers 3

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public changeOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V
    .registers 4

    if-eqz p1, :cond_17

    .line 656
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 657
    :goto_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_17

    :cond_13
    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public dismissLoadDialog()V
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->dismiss()V

    :cond_7
    return-void
.end method

.method public dismissSavingDialog()V
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1a
    return-void
.end method

.method public getBcmChangeState()V
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolsWebViewReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_21

    .line 562
    sget-object v1, Lcom/codemao/toolssdk/utils/NekoPostMessageManager;->Companion:Lcom/codemao/toolssdk/utils/NekoPostMessageManager$Companion;

    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    new-instance v3, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getBcmChangeState$1$2;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/codemao/toolssdk/utils/NekoPostMessageManager$Companion;->getBcmChangeState(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public getPickCatQuitPopConfig()Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
    .registers 5

    .line 451
    new-instance v0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showPublishButton:Z

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->published:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;-><init>(ZZZZ)V

    return-object v0
.end method

.method public getPublished()Ljava/lang/Boolean;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->published:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    new-instance v0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;

    .line 456
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getPickCatQuitPopConfig()Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    move-result-object v1

    .line 457
    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$getTopPopup$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    .line 455
    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->quitePop:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

    .line 486
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public hideBottomUIMenu()V
    .registers 6

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 247
    :goto_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_42

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 249
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v3

    goto :goto_31

    :cond_30
    move-object v3, v1

    :goto_31
    if-eqz v3, :cond_3a

    .line 251
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_3a
    if-nez v3, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 v4, 0x2

    .line 252
    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_49

    :cond_42
    if-nez v0, :cond_45

    goto :goto_49

    :cond_45
    const/16 v3, 0x1002

    .line 255
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_49
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_53

    if-nez v0, :cond_50

    goto :goto_53

    :cond_50
    const/4 v2, 0x1

    .line 259
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 262
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    :cond_5d
    if-nez v1, :cond_60

    goto :goto_63

    :cond_60
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_63
    return-void
.end method

.method public initTestConfig()V
    .registers 1

    return-void
.end method

.method public isTemplateWork()Z
    .registers 4

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string v2, "workTemplateId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    const/4 v0, 0x1

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    xor-int/2addr v0, v1

    return v0
.end method

.method public loadCMTools()V
    .registers 25

    move-object/from16 v0, p0

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showLoadingDialog()V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_19

    const-string v5, "workId"

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v4

    .line 311
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_27

    const-string v6, "workUrl"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_28

    :cond_27
    move-object v5, v4

    .line 312
    :goto_28
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_35

    const-string v7, "workCourse"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    :cond_35
    move-object v6, v4

    .line 313
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_43

    const-string v8, "workTemplateId"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    :cond_43
    move-object v7, v4

    .line 314
    :goto_44
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_51

    const-string v9, "workNemoMiaoCode"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_52

    :cond_51
    move-object v8, v4

    .line 315
    :goto_52
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_63

    sget-object v10, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    invoke-virtual {v10}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;->getWORK_TEST_FULL_URL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_64

    :cond_63
    move-object v9, v4

    .line 316
    :goto_64
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_7a

    sget-object v12, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    invoke-virtual {v12}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;->getWORK_FROM_LOCAL()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_7b

    :cond_7a
    move-object v10, v4

    .line 317
    :goto_7b
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_8a

    iget-object v13, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    const-string v14, "ToolsData"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8b

    :cond_8a
    move-object v12, v4

    :goto_8b
    if-nez v12, :cond_8f

    iget-object v12, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    :cond_8f
    iput-object v12, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    .line 318
    sget-object v13, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->testToolType:Ljava/lang/String;

    if-nez v13, :cond_96

    goto :goto_9a

    :cond_96
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v13

    :goto_9a
    iput-object v12, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_ab

    iget-object v13, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolMode:Ljava/lang/String;

    const-string v14, "ToolMode"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ac

    :cond_ab
    move-object v12, v4

    :goto_ac
    if-nez v12, :cond_b0

    iget-object v12, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolMode:Ljava/lang/String;

    :cond_b0
    iput-object v12, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolMode:Ljava/lang/String;

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_be

    const-string v13, "showPublishButton"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    :cond_be
    iput-boolean v11, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showPublishButton:Z

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_d1

    const-string v12, "isLandscape"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_d2

    :cond_d1
    move-object v11, v4

    .line 322
    :goto_d2
    sget-object v12, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v12}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v13

    if-eqz v13, :cond_df

    invoke-virtual {v13}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v13

    goto :goto_e0

    :cond_df
    move-wide v13, v2

    .line 323
    :goto_e0
    invoke-virtual {v12}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v15

    if-eqz v15, :cond_ec

    invoke-virtual {v15}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_ee

    :cond_ec
    const-string v15, ""

    .line 324
    :cond_ee
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_181

    .line 325
    new-instance v2, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    invoke-direct {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;-><init>()V

    .line 326
    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 327
    iget-object v3, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->webView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setToolsWebView(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 328
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    iget-object v4, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolType:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v23, v10

    iget-object v10, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->toolMode:Ljava/lang/String;

    const/16 v21, 0x6

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v22}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 329
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-virtual {v12}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v4

    if-eqz v4, :cond_12d

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_12e

    :cond_12d
    const/4 v4, 0x0

    :goto_12e
    invoke-direct {v3, v4, v13, v14, v15}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 330
    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 332
    sget-object v3, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWORK_ENTER_FROM_FREE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->setEnterFrom(Ljava/lang/String;)Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;->build()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v2

    .line 325
    iput-object v2, v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-nez v1, :cond_150

    goto :goto_164

    .line 334
    :cond_150
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v12, -0x1

    cmp-long v4, v2, v12

    if-nez v4, :cond_164

    if-nez v5, :cond_164

    if-nez v6, :cond_164

    if-eqz v7, :cond_164

    .line 335
    invoke-virtual {v0, v7, v11}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadTemplatePage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_181

    :cond_164
    :goto_164
    if-eqz v8, :cond_16a

    .line 337
    invoke-virtual {v0, v8, v11}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadMiaoCodePage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_181

    :cond_16a
    if-eqz v9, :cond_170

    .line 339
    invoke-virtual {v0, v9, v11}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadTestFullUrl(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_181

    .line 340
    :cond_170
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v4, v23

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 341
    invoke-virtual {v0, v1, v5, v6, v11}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadCreatePageLocal(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_181

    .line 343
    :cond_17e
    invoke-virtual {v0, v1, v5, v6, v11}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadCreatePage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_181
    :goto_181
    return-void
.end method

.method public loadCreatePage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 14

    .line 357
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_30

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_a

    goto :goto_12

    .line 358
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_18

    :goto_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_19

    :cond_18
    move-object v1, v3

    :goto_19
    const/4 v4, 0x0

    .line 360
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p1, Lcom/codemao/toolssdk/manager/StageType;->Landscape:Lcom/codemao/toolssdk/manager/StageType;

    move-object v5, p1

    goto :goto_27

    :cond_26
    move-object v5, v3

    :goto_27
    const/4 v6, 0x0

    const/16 v7, 0x28

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    .line 357
    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadUrl$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public loadCreatePageLocal(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 12

    .line 382
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadWorkByLocal$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/Long;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public loadMiaoCodePage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 10

    const-string p2, "miaoCode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadMiaoCodeWork$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public loadTemplatePage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 10

    const-string p2, "templateId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadTemplateWork$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public loadTestFullUrl(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    const-string p2, "testFullUrl"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadTestFullUrl(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->hideBottomUIMenu()V

    .line 269
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->fullScreen()V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_1d

    new-instance v0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$onCreate$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    :cond_1d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_create_bcm:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 283
    sget p2, Lcom/codemao/toolssdk/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->webView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->destroy()V

    .line 407
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->dismissLoadDialog()V

    .line 408
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 401
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 402
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onPause()V

    :cond_a
    return-void
.end method

.method public onPublishSaved(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V
    .registers 2

    return-void
.end method

.method public onQuite()V
    .registers 2

    .line 552
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showPublishTips()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 553
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getBcmChangeState()V

    goto :goto_d

    .line 555
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish()V

    :goto_d
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 391
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 392
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onResume()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->onStop()V

    .line 397
    :cond_7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->loadCMTools()V

    .line 301
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->register:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->setActivityResultLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    .line 303
    :cond_14
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->initTestConfig()V

    return-void
.end method

.method public onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V
    .registers 4

    return-void
.end method

.method public saveWorkAndFinish()V
    .registers 3

    .line 502
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->isTemplateWork()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 503
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$saveWorkAndFinish$1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->checkWorkSaveEnable(Lkotlin/jvm/functions/Function1;)V

    goto :goto_16

    .line 511
    :cond_13
    invoke-static {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public showBcmStateChangeDialog(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 595
    new-instance v1, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;

    new-instance v2, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    new-instance v3, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/CreateBcmFragment;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    const-string v0, "Builder(context).dismiss…()\n            })).show()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public showPublishTips()Z
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showPublishButton:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->getPublished()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string p2, "toolsError"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toolLoadDidFail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->showErrorLoad(I)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 1

    .line 416
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->dismissLoadDialog()V

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 1

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toolSessionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    const-string v1, "BUTTON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object p1

    const-string v0, "button"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "EXIT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 430
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/CreateBcmFragment;->closePage()V

    :cond_46
    return-void
.end method
