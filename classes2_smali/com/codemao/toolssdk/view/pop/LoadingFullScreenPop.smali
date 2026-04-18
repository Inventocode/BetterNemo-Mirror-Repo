.class public final Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "LoadingFullScreenPop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;,
        Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;


# instance fields
.field private listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

.field private loadingFullScreenView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->Companion:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 56
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发LoadingFullScreenPop的dismiss"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->loadingFullScreenView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->stopAnim()V

    .line 58
    :cond_e
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 62
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_pop_loading_fullscreen:I

    return v0
.end method

.method public final getListener()Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 44
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "初始化LoadingFullScreenPop"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 46
    sget v0, Lcom/codemao/toolssdk/R$id;->view_loading_fullscreen:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->loadingFullScreenView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-nez v0, :cond_17

    goto :goto_1c

    .line 47
    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->setListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V

    :goto_1c
    return-void
.end method

.method public final setListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-void
.end method

.method public show()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->loadingFullScreenView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->showLoadingAnim()V

    .line 52
    :cond_7
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    const-string v1, "super.show()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V
    .registers 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop;->loadingFullScreenView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V

    :cond_c
    return-void
.end method
