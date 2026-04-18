.class public final Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "AiGenerateProgressPop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;,
        Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;


# instance fields
.field private btnClickListener:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;

.field private progressTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ZqVVd4sSEI6_7dKUsM48M-wlrV4(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->initPopupContent$lambda$0(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->Companion:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static final initPopupContent$lambda$0(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->btnClickListener:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;->onCancel()V

    .line 43
    :cond_c
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getBtnClickListener()Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->btnClickListener:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 32
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_pop_ai_generate_progress:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 37
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 38
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->progressTextView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    new-instance v1, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setBtnClickListener(Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->btnClickListener:Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;

    return-void
.end method

.method public final setProgress(I)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop;->progressTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_19

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    return-void
.end method
