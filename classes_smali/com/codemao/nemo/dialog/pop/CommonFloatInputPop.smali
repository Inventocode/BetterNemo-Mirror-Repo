.class public final Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommonFloatInputPop.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonFloatInputPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/CommonFloatInputPop\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,112:1\n65#2,16:113\n93#2,3:129\n*S KotlinDebug\n*F\n+ 1 CommonFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/CommonFloatInputPop\n*L\n45#1:113,16\n45#1:129,3\n*E\n"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentLayout:Landroid/view/View;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTag;"
        }
    .end annotation
.end field

.field private edittext:Landroid/widget/EditText;

.field private final maxLength:I

.field private sure:Landroid/widget/TextView;

.field private final sureCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "TTag;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-ky_JuUo7NsbTDrJk7WaXy1QUJ8(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->onCreate$lambda$0(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9rLbvKbSPdjtw2mFctvu-so_s7o(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->onCreate$lambda$3(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RWaPrHoMjb9vth3BBApL_dK5iYI(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->onCreate$lambda$2(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-TTag;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sureCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->sureCallback:Lkotlin/jvm/functions/Function2;

    const/16 p1, 0x14

    .line 28
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->maxLength:I

    return-void
.end method

.method public static final synthetic access$getEdittext$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)Landroid/widget/EditText;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getMaxLength$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->maxLength:I

    return p0
.end method

.method public static final synthetic access$getSure$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)Landroid/widget/TextView;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->sure:Landroid/widget/TextView;

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    const-string v0, ""

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    :cond_17
    move-object p1, v0

    .line 40
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-eqz p1, :cond_3c

    .line 41
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->sureCallback:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_37

    :cond_36
    move-object v0, v1

    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->data:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 109
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02dc

    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 35
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a018e

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->contentLayout:Landroid/view/View;

    const v0, 0x7f0a0758

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->sure:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 38
    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    const v0, 0x7f0a09b7

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_36

    .line 80
    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;-><init>(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setContent(Ljava/lang/String;)V

    const v0, 0x7f0a0169

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4c

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4c
    const v0, 0x7f0a0677

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5d
    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 103
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->setMarginBottom(I)V

    return-void
.end method

.method protected onShow()V
    .registers 3

    .line 65
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 8

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->content:Ljava/lang/String;

    if-eqz p1, :cond_33

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->maxLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 81
    :goto_21
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_33
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->data:Ljava/lang/Object;

    return-void
.end method

.method public final setMarginBottom(I)V
    .registers 5

    .line 92
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->contentLayout:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method
