.class public final Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "BcmStateChangeTipsPop.kt"


# instance fields
.field private final publish:Landroid/view/View$OnClickListener;

.field private final save:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "save"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publish"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;->save:Landroid/view/View$OnClickListener;

    .line 11
    iput-object p3, p0, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;->publish:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 15
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_dialog_work_change_save_tips:I

    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 19
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 20
    sget v0, Lcom/codemao/toolssdk/R$id;->publish:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;->publish:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget v0, Lcom/codemao/toolssdk/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/BcmStateChangeTipsPop;->save:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
