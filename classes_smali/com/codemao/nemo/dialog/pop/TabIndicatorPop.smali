.class public final Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;
.super Lcom/nemo/commonui/xpopup/core/PositionPopupView;
.source "TabIndicatorPop.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$aj1TFpHezb-XZr2fpSbAning--M(Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;->initPopupContent$lambda$0(Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static final initPopupContent$lambda$0(Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 22
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d02e0

    goto :goto_d

    :cond_a
    const v0, 0x7f0d02df

    :goto_d
    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 26
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->initPopupContent()V

    const v0, 0x7f0a033f

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 30
    new-instance v1, Lcom/codemao/nemo/dialog/pop/TabIndicatorPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/TabIndicatorPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
