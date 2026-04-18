.class public abstract Lcom/codemao/nemo/activity/login/AccountLoginAction;
.super Ljava/lang/Object;
.source "AccountLoginAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountLoginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLoginAction.kt\ncom/codemao/nemo/activity/login/AccountLoginAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
.end annotation


# instance fields
.field private bottomLeftTextView:Landroid/widget/TextView;

.field private bottomMiddleTextView:Landroid/widget/TextView;

.field private bottomRightTextView:Landroid/widget/TextView;

.field private confirmBtn:Landroid/widget/TextView;

.field private context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

.field private firstLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

.field private isVisitor:Z

.field private ivIcon:Landroid/widget/ImageView;

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

.field private secondLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private viewName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$T5FzGPwJtkLWOQZWvqcSCmMZKf0(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay$lambda$1(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ido5iEpPVSIo6HRCAc1wj4MuY5Q(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelayWithCheckmark$lambda$3(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final showDialog(Ljava/lang/String;I)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    if-nez v0, :cond_11

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;-><init>(Landroid/content/Context;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    .line 116
    :cond_11
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->show(Ljava/lang/String;I)V

    :cond_21
    return-void
.end method

.method private static final showDialogDelay$lambda$1(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    return-void
.end method

.method private static final showDialogDelayWithCheckmark$lambda$3(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    return-void
.end method


# virtual methods
.method protected final getBottomLeftTextView()Landroid/widget/TextView;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomLeftTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getBottomMiddleTextView()Landroid/widget/TextView;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomMiddleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getBottomRightTextView()Landroid/widget/TextView;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomRightTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getConfirmBtn()Landroid/widget/TextView;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->confirmBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    return-object v0
.end method

.method protected final getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->firstLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    return-object v0
.end method

.method protected final getIvIcon()Landroid/widget/ImageView;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->ivIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->secondLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    return-object v0
.end method

.method protected final getTitleTextView()Landroid/widget/TextView;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected final getViewName()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public final hideDialog()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_24

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-eqz v0, :cond_24

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_24

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_24
    return-void
.end method

.method protected final isVisitor()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->isVisitor:Z

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onConfirmClick()V
.end method

.method public onDestroy()V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    return-void
.end method

.method public onGetCaptchaClick(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCancel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onInit()V
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .registers 4

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final setBackImageV(Landroid/widget/ImageView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 3

    const-string v0, "ivIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final setBottomLeftTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomLeftTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setBottomMiddleTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomMiddleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setBottomRightTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->bottomRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setConfirmBtn(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->confirmBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setContext(Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    return-object p0
.end method

.method public final setFirstLoginLayout(Lcom/codemao/nemo/view/LoginInputLayout;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->firstLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    return-object p0
.end method

.method public final setIsVisitor(Z)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->isVisitor:Z

    return-object p0
.end method

.method public final setSecondLoginLayout(Lcom/codemao/nemo/view/LoginInputLayout;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->secondLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    return-object p0
.end method

.method public final setTitleTextView(Landroid/widget/TextView;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setViewName(Ljava/lang/String;)Lcom/codemao/nemo/activity/login/AccountLoginAction;
    .registers 3

    const-string v0, "viewName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->viewName:Ljava/lang/String;

    return-object p0
.end method

.method public final showDialog(Ljava/lang/String;)V
    .registers 4

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    if-nez v0, :cond_16

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->context:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;-><init>(Landroid/content/Context;)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    .line 101
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->loadingDialog:Lcom/codemao/nemo/dialog/LoginLoadingDialog;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/LoginLoadingDialog;->show(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final showDialogDelay(Ljava/lang/String;)V
    .registers 5

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->firstLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    if-eqz p1, :cond_16

    new-instance v0, Lcom/codemao/nemo/activity/login/AccountLoginAction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method public final showDialogDelayWithCheckmark(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0e0105

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;I)V

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginAction;->firstLoginLayout:Lcom/codemao/nemo/view/LoginInputLayout;

    if-eqz p1, :cond_14

    new-instance v0, Lcom/codemao/nemo/activity/login/AccountLoginAction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/login/AccountLoginAction;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method
