.class public final Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommonConfirmPop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;
    }
.end annotation


# instance fields
.field private final cancelStr:Ljava/lang/String;

.field private cancelTextView:Landroid/widget/TextView;

.field private final confirmStr:Ljava/lang/String;

.field private confirmTextView:Landroid/widget/TextView;

.field private final content:Ljava/lang/String;

.field private listener:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;

.field private final title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$E4yID1HUFfdhv2OgJOhPdU5oz7c(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->onCreate$lambda$0(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8uJx_pcf3F3NA07dDWTSzCzVr0(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->onCreate$lambda$1(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelStr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmStr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object p2, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->title:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->content:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->cancelStr:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->confirmStr:Ljava/lang/String;

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->listener:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;->onConfirmClick()V

    :cond_c
    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->listener:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;->onCancelClick()V

    :cond_c
    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 17
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_pop_common_confirm:I

    return v0
.end method

.method public final getListener()Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->listener:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;

    return-object v0
.end method

.method protected onCreate()V
    .registers 5

    .line 25
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 26
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->confirmTextView:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->cancelTextView:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_content:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    iget-object v2, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->confirmTextView:Landroid/widget/TextView;

    if-nez v2, :cond_2c

    goto :goto_31

    :cond_2c
    iget-object v3, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->confirmStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_31
    iget-object v2, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->cancelTextView:Landroid/widget/TextView;

    if-nez v2, :cond_36

    goto :goto_3b

    :cond_36
    iget-object v3, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->cancelStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_3b
    iget-object v2, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->confirmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    new-instance v1, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_51
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->cancelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5d
    return-void
.end method

.method public final setListener(Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/toolssdk/view/pop/CommonConfirmPop;->listener:Lcom/codemao/toolssdk/view/pop/CommonConfirmPop$ButtonClickListener;

    return-void
.end method
