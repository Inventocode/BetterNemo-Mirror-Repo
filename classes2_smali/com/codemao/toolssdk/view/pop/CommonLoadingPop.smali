.class public final Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommonLoadingPop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$YGkf_WRyF0CtVMRdRue-cSvgsd8(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->initPopupContent$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->Companion:Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->content:Ljava/lang/String;

    return-void
.end method

.method private static final initPopupContent$lambda$0(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 26
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_toast_dialog:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 30
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 31
    sget v0, Lcom/codemao/toolssdk/R$id;->background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/toolssdk/view/pop/CommonLoadingPop$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget v0, Lcom/codemao/toolssdk/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/codemao/toolssdk/view/pop/CommonLoadingPop;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
