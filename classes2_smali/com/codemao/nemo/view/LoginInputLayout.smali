.class public final Lcom/codemao/nemo/view/LoginInputLayout;
.super Landroid/widget/FrameLayout;
.source "LoginInputLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/LoginInputLayout$Companion;
    }
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public static synthetic $r8$lambda$AEbvYpvTvRBwBXHL-6ZoKSr_8jw(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->init$lambda$0(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y33QuWACv2anWEhRU2hF8ftIPIY(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/view/LoginInputLayout;->init$lambda$1(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/view/LoginInputLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/LoginInputLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/LoginInputLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final init$lambda$0(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget p1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final init$lambda$1(Lcom/codemao/nemo/view/LoginInputLayout;Landroid/view/View;Z)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_26

    .line 56
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 57
    sget v0, Lcom/codemao/nemo/R$id;->closeImageV:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_33

    .line 59
    :cond_26
    sget v0, Lcom/codemao/nemo/R$id;->closeImageV:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_33
    sget v0, Lcom/codemao/nemo/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x1

    if-lez p0, :cond_54

    const/4 p0, 0x1

    goto :goto_55

    :cond_54
    const/4 p0, 0x0

    :goto_55
    if-nez p0, :cond_59

    if-eqz p2, :cond_5a

    :cond_59
    const/4 p1, 0x1

    :cond_5a
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public final editRequestFocuse()V
    .registers 2

    .line 147
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_d
    return-void
.end method

.method public final getEditTextStr()Ljava/lang/String;
    .registers 2

    .line 139
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextViewOfConfirm()Landroid/widget/TextView;
    .registers 2

    .line 135
    sget v0, Lcom/codemao/nemo/R$id;->confirmTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTextWatcher()Landroid/text/TextWatcher;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout;->textWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d021f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget-object v0, Lcom/codemao/nemo/R$styleable;->LoginInputLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr…yleable.LoginInputLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x14

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x2

    .line 43
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 50
    sget p1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    .line 52
    :cond_52
    sget p2, Lcom/codemao/nemo/R$id;->closeImageV:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_64

    new-instance v0, Lcom/codemao/nemo/view/LoginInputLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/LoginInputLayout$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/LoginInputLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_64
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_74

    new-instance v0, Lcom/codemao/nemo/view/LoginInputLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/LoginInputLayout$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/view/LoginInputLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    :cond_74
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_84

    new-instance p2, Lcom/codemao/nemo/view/LoginInputLayout$init$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/view/LoginInputLayout$init$3;-><init>(Lcom/codemao/nemo/view/LoginInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    :cond_84
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    return-void
.end method

.method public final setConfirmTextViewVisible(Z)V
    .registers 3

    .line 89
    sget v0, Lcom/codemao/nemo/R$id;->confirmTextView:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    const/16 p1, 0x8

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_14
    return-void
.end method

.method public final setEditTextHint(Ljava/lang/String;)V
    .registers 3

    .line 125
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_e
    return-void
.end method

.method public final setEditTextMaxLength(I)V
    .registers 6

    .line 121
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_b

    goto :goto_19

    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_19
    return-void
.end method

.method public final setFirstIconRes(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    .line 130
    sget v0, Lcom/codemao/nemo/R$id;->iconFirst:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    return-void
.end method

.method public final setInputType(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_37

    if-eq p1, v0, :cond_15

    .line 115
    sget p1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_11

    goto :goto_45

    :cond_11
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_45

    .line 98
    :cond_15
    sget p1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    new-instance v1, Lcom/codemao/nemo/view/LoginInputLayout$setInputType$1;

    invoke-direct {v1}, Lcom/codemao/nemo/view/LoginInputLayout$setInputType$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 112
    :goto_28
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_31

    goto :goto_45

    :cond_31
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_45

    .line 95
    :cond_37
    sget p1, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_42

    goto :goto_45

    :cond_42
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_45
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 3

    .line 143
    sget v0, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public final setTextWatcher(Landroid/text/TextWatcher;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/view/LoginInputLayout;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method
