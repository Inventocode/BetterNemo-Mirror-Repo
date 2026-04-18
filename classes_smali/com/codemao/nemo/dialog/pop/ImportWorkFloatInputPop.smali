.class public final Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "ImportWorkFloatInputPop.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportWorkFloatInputPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportWorkFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,111:1\n15#2,7:112\n65#3,16:119\n93#3,3:135\n*S KotlinDebug\n*F\n+ 1 ImportWorkFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop\n*L\n35#1:112,7\n43#1:119,16\n43#1:135,3\n*E\n"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentLayout:Landroid/view/View;

.field private data:Lcom/codemao/nemo/bean/KnWorkListItem;

.field private edittext:Landroid/widget/EditText;

.field private sure:Landroid/widget/TextView;

.field private final sureCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$U1QhhE0jx0Jd21uT-nnp5PZsTjU(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->onCreate$lambda$3(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ss7BCCW4ImEuY83o3akX_43HNNE(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->onCreate$lambda$1(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWUSavpkVHnC-y8HQn-EWsMVGcQ(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->onCreate$lambda$2(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V

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
            "-",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
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
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->sureCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Lcom/codemao/nemo/bean/KnWorkListItem;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->data:Lcom/codemao/nemo/bean/KnWorkListItem;

    return-object p0
.end method

.method public static final synthetic access$getEdittext$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Landroid/widget/EditText;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getSure$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Landroid/widget/TextView;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->sure:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getSureCallback$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->sureCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_29

    .line 55
    invoke-static {}, Lcom/blankj/utilcode/util/ClipboardUtils;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->setContent(Ljava/lang/String;)V

    goto :goto_2e

    :cond_29
    const-string p1, ""

    .line 57
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->setContent(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 108
    invoke-super {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02db

    return v0
.end method

.method protected onCreate()V
    .registers 7

    .line 32
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a018e

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->contentLayout:Landroid/view/View;

    const v0, 0x7f0a0758

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->sure:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    const-wide/16 v1, 0x3e8

    .line 35
    new-instance v3, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;-><init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)V

    const/4 v4, 0x0

    .line 20
    new-instance v5, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    const v0, 0x7f0a0328

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a032a

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v1, :cond_47

    .line 80
    new-instance v2, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;-><init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/widget/TextView;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    :cond_47
    new-instance v1, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->setContent(Ljava/lang/String;)V

    const v0, 0x7f0a0169

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_65

    new-instance v1, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_65
    const v0, 0x7f0a0677

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_76

    new-instance v1, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_76
    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 102
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->setMarginBottom(I)V

    return-void
.end method

.method protected onShow()V
    .registers 3

    .line 70
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->content:Ljava/lang/String;

    if-eqz p1, :cond_16

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->edittext:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_16
    return-void
.end method

.method public setData(Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->data:Lcom/codemao/nemo/bean/KnWorkListItem;

    return-void
.end method

.method public final setMarginBottom(I)V
    .registers 5

    .line 91
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->contentLayout:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method
