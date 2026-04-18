.class public Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;
.super Landroidx/fragment/app/Fragment;
.source "CreateBcmFragment2.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;
.implements Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateBcmFragment2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateBcmFragment2.kt\ncom/codemao/toolssdk/fragment/kn/CreateBcmFragment2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,723:1\n1#2:724\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$Companion;

.field private static testToolType:Ljava/lang/String;


# instance fields
.field private basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

.field private bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

.field private cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

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

.field private webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;


# direct methods
.method public static synthetic $r8$lambda$54JBPnaFRWkywEqY3DVxUSz9sgs(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showBcmStateChangeDialog$lambda$6(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IoCqeI-FPS3tq3CzexdgQW8MdE0(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showBcmStateChangeDialog$lambda$5(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTk8_jeHFjyE-tl-Fv0vI_Tcovw(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroidx/activity/result/ActivityResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->register$lambda$0(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->Companion:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->isShowTopPopupWindow:Z

    const-string v0, "KN"

    .line 233
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    const-string v0, "normal"

    .line 234
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolMode:Ljava/lang/String;

    .line 241
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul…ultCallback(result)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->register:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$closePage(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->closePage()V

    return-void
.end method

.method public static final synthetic access$getBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$getCmToolsManager$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/codemao/toolssdk/evolving/CMToolsManager2;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    return-object p0
.end method

.method public static final synthetic access$getTopPopupWindow$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public static final synthetic access$onPublishWork(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onPublishWork()V

    return-void
.end method

.method public static final synthetic access$saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 1

    .line 65
    invoke-static {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    return-void
.end method

.method public static final synthetic access$setBcmStateChangePop$p(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private final closePage()V
    .registers 5

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 427
    iget-boolean v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->isShowTopPopupWindow:Z

    if-eqz v1, :cond_21

    .line 428
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

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

    .line 429
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showTopPopupWindow(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->topPopupWindow:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    goto :goto_24

    .line 432
    :cond_21
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish()V

    :cond_24
    :goto_24
    return-void
.end method

.method private final onPublishWork()V
    .registers 5

    .line 520
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showSavingDialog()V

    .line 521
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$2;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final register$lambda$0(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroidx/activity/result/ActivityResult;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz p0, :cond_11

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->activityResultCallback(Landroidx/activity/result/ActivityResult;)V

    :cond_11
    return-void
.end method

.method private static final saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 4

    .line 482
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showSavingDialog()V

    .line 483
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$executeSave$2;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    const-string p0, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_16
    return-void
.end method

.method private static final showBcmStateChangeDialog$lambda$5(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish()V

    .line 588
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_f
    return-void
.end method

.method private static final showBcmStateChangeDialog$lambda$6(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onPublishWork()V

    .line 591
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->bcmStateChangePop:Lcom/nemo/commonui/xpopup/core/BasePopupView;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_f
    return-void
.end method

.method private final showErrorLoad(I)V
    .registers 4

    .line 606
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_f

    .line 607
    sget-object v1, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getLoadErrorStr(I)Lcom/codemao/toolssdk/constant/ErrorLoadModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V

    :cond_f
    return-void
.end method

.method private final showLoadingDialog()V
    .registers 4

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 613
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-nez v1, :cond_17

    .line 614
    sget-object v1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->Companion:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;

    .line 616
    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$showLoadingDialog$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$showLoadingDialog$1$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    .line 614
    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;->generateXPop(Landroid/content/Context;Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    .line 626
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_1e
    return-void
.end method

.method private final showSavingDialog()V
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

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

    .line 634
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->dismissLoadDialog()V

    .line 635
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    .line 637
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    const-string v2, "正在保存作品"

    invoke-direct {v1, v0, v2}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    if-eqz v1, :cond_2c

    .line 638
    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->show()V

    :cond_2c
    return-void
.end method

.method private final showTopPopupWindow(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 4

    .line 438
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

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

    .line 672
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

    .line 647
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 648
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

.method public changePublishedView(Z)V
    .registers 3

    .line 597
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->published:Ljava/lang/Boolean;

    .line 598
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->quitePop:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;->setPublishView(Z)V

    :cond_d
    return-void
.end method

.method public dismissLoadDialog()V
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->basePopupView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->dismiss()V

    :cond_7
    return-void
.end method

.method public dismissSavingDialog()V
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->savingDialog:Lcom/codemao/toolssdk/view/dialog/LoadingDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/dialog/LoadingDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 246
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

    .line 552
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    if-eqz v0, :cond_13

    .line 553
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger;->c:Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;

    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getBcmChangeState$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getBcmChangeState$1$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    new-instance v3, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getBcmChangeState$1$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getBcmChangeState$1$2;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/codemao/toolssdk/evolving/android/callweb/CTPostMessageManger$c;->getBcmChangeState(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_13
    return-void
.end method

.method public final getCMToolsManager()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    return-object v0
.end method

.method public getLastUrl()Ljava/lang/String;
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, "empty"

    :cond_c
    return-object v0
.end method

.method public getPickCatQuitPopConfig()Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
    .registers 5

    .line 442
    new-instance v0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showPublishButton:Z

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->published:Ljava/lang/Boolean;

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

.method public getPublishState(I)V
    .registers 2

    return-void
.end method

.method public getPublished()Ljava/lang/Boolean;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->published:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getShowPublishButton()Z
    .registers 2

    .line 668
    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showPublishButton:Z

    return v0
.end method

.method public getTopPopup(Landroid/content/Context;)Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;

    .line 447
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getPickCatQuitPopConfig()Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    move-result-object v1

    .line 448
    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$getTopPopup$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    .line 446
    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/toolssdk/view/dialog/PickCatQuitPop;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop$CallBack;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->quitePop:Lcom/codemao/toolssdk/view/dialog/CreateBcmPageQuitePop;

    .line 477
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public hideBottomUIMenu()V
    .registers 6

    .line 252
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

    .line 253
    :goto_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_42

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 255
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v3

    goto :goto_31

    :cond_30
    move-object v3, v1

    :goto_31
    if-eqz v3, :cond_3a

    .line 257
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    :cond_3a
    if-nez v3, :cond_3d

    goto :goto_49

    :cond_3d
    const/4 v4, 0x2

    .line 258
    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    goto :goto_49

    :cond_42
    if-nez v0, :cond_45

    goto :goto_49

    :cond_45
    const/16 v3, 0x1002

    .line 261
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    :goto_49
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_53

    if-nez v0, :cond_50

    goto :goto_53

    :cond_50
    const/4 v2, 0x1

    .line 265
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 268
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

    .line 676
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
    .registers 23

    move-object/from16 v0, p0

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showLoadingDialog()V

    .line 313
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

    .line 314
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

    .line 315
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

    .line 316
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

    .line 317
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

    .line 318
    :goto_52
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_61

    sget-object v10, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    invoke-virtual {v10}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;->getWORK_TEST_FULL_URL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_71

    sget-object v11, Lcom/codemao/toolssdk/activity/CreateBcmActivity;->Companion:Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;

    invoke-virtual {v11}, Lcom/codemao/toolssdk/activity/CreateBcmActivity$Companion;->getWORK_FROM_LOCAL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 320
    :cond_71
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_80

    iget-object v11, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    const-string v12, "ToolsData"

    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_81

    :cond_80
    move-object v9, v4

    :goto_81
    if-nez v9, :cond_85

    iget-object v9, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    :cond_85
    iput-object v9, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    .line 321
    sget-object v11, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->testToolType:Ljava/lang/String;

    if-nez v11, :cond_8c

    goto :goto_90

    :cond_8c
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v11

    :goto_90
    iput-object v9, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_a1

    iget-object v11, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolMode:Ljava/lang/String;

    const-string v12, "ToolMode"

    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a2

    :cond_a1
    move-object v9, v4

    :goto_a2
    if-nez v9, :cond_a6

    iget-object v9, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolMode:Ljava/lang/String;

    :cond_a6
    iput-object v9, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolMode:Ljava/lang/String;

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_b4

    const-string v11, "showPublishButton"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    :cond_b4
    iput-boolean v10, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showPublishButton:Z

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_c7

    const-string v10, "isLandscape"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_c8

    :cond_c7
    move-object v9, v4

    .line 325
    :goto_c8
    sget-object v10, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v10}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v11

    if-eqz v11, :cond_d5

    invoke-virtual {v11}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v11

    goto :goto_d6

    :cond_d5
    move-wide v11, v2

    .line 326
    :goto_d6
    invoke-virtual {v10}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v13

    if-eqz v13, :cond_e2

    invoke-virtual {v13}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e4

    :cond_e2
    const-string v13, ""

    .line 327
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_160

    .line 328
    new-instance v15, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Builder;

    invoke-direct {v15}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Builder;-><init>()V

    .line 329
    invoke-virtual {v15, v14}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v14

    .line 330
    iget-object v15, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-interface {v14, v15}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v14

    .line 331
    new-instance v15, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    iget-object v4, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolType:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->toolMode:Ljava/lang/String;

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object v3, v15

    move-object/from16 v16, v4

    move-object/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v14, v3}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v2

    .line 332
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-virtual {v10}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v4

    if-eqz v4, :cond_120

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_121

    :cond_120
    const/4 v4, 0x0

    :goto_121
    invoke-direct {v3, v4, v11, v12, v13}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v2

    .line 333
    invoke-interface {v2, v0}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v2

    .line 334
    invoke-interface {v2, v0}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v2

    .line 335
    sget-object v3, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWORK_ENTER_FROM_FREE()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/codemao/toolssdk/cpp/manager/builder/ICppToolsManagerBuilderBiz;->setEnterFrom(Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object v2

    .line 336
    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->build2()Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object v2

    .line 328
    iput-object v2, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-nez v1, :cond_143

    goto :goto_157

    .line 337
    :cond_143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v10, -0x1

    cmp-long v4, v2, v10

    if-nez v4, :cond_157

    if-nez v5, :cond_157

    if-nez v6, :cond_157

    if-eqz v7, :cond_157

    .line 338
    invoke-virtual {v0, v7, v9}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->loadTemplatePage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_160

    :cond_157
    :goto_157
    if-eqz v8, :cond_15d

    .line 340
    invoke-virtual {v0, v8, v9}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->loadMiaoCodePage(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_160

    .line 346
    :cond_15d
    invoke-virtual {v0, v1, v5, v6, v9}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->loadCreatePage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_160
    :goto_160
    return-void
.end method

.method public loadCreatePage(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 18

    move-object v0, p0

    .line 357
    iget-object v1, v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v1, :cond_36

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_b

    goto :goto_13

    .line 358
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_18

    :goto_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v4

    :goto_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 360
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v7, p4

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Lcom/codemao/toolssdk/manager/StageType;->Landscape:Lcom/codemao/toolssdk/manager/StageType;

    move-object v7, v3

    goto :goto_2a

    :cond_29
    move-object v7, v4

    :goto_2a
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1d8

    const/4 v12, 0x0

    move-object v3, p2

    move-object/from16 v4, p3

    .line 357
    invoke-static/range {v1 .. v12}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_36
    return-void
.end method

.method public loadMiaoCodePage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 15

    const-string p2, "miaoCode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public loadTemplatePage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 15

    const-string p2, "templateId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x17f

    const/4 v11, 0x0

    move-object v8, p1

    invoke-static/range {v0 .. v11}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 272
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->hideBottomUIMenu()V

    .line 275
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->fullScreen()V

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_1d

    new-instance v0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onCreate$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    :cond_1d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_create_cpp:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 289
    sget p2, Lcom/codemao/toolssdk/R$id;->cpp_webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->destroy()V

    .line 398
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->dismissLoadDialog()V

    .line 399
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 392
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 393
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->onPause()V

    :cond_a
    return-void
.end method

.method public onPublishSaved(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V
    .registers 2

    return-void
.end method

.method public onQuite()V
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showPublishTips()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 544
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getBcmChangeState()V

    goto :goto_d

    .line 546
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish()V

    :goto_d
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 382
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 383
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->onResume()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->onStop()V

    .line 388
    :cond_7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->loadCMTools()V

    .line 307
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->register:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->setActivityResultLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    .line 308
    :cond_14
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->initTestConfig()V

    return-void
.end method

.method public onWorkSaved(ZLcom/codemao/toolssdk/model/dsbridge/SaveResult;Z)V
    .registers 4

    return-void
.end method

.method public saveWorkAndFinish()V
    .registers 3

    .line 493
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->isTemplateWork()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 494
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->cmToolsManager:Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$saveWorkAndFinish$1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerKn;->checkWorkSaveEnable(Lkotlin/jvm/functions/Function1;)V

    goto :goto_16

    .line 502
    :cond_13
    invoke-static {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->saveWorkAndFinish$executeSave(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public setPublished(Z)V
    .registers 2

    .line 535
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->published:Ljava/lang/Boolean;

    return-void
.end method

.method public showBcmStateChangeDialog(Landroid/content/Context;)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;

    new-instance v2, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    new-instance v3, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    const-string v0, "Builder(context).dismiss…()\n            })).show()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public showPublishTips()Z
    .registers 3

    .line 539
    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showPublishButton:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->getPublished()Ljava/lang/Boolean;

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

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toolLoadDidFail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->showErrorLoad(I)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 1

    .line 407
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->dismissLoadDialog()V

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

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toolSessionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
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

    .line 421
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->closePage()V

    :cond_46
    return-void
.end method
