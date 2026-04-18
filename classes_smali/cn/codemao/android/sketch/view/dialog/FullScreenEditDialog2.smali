.class public Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;
.super Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;
.source "FullScreenEditDialog2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;
    }
.end annotation


# instance fields
.field private blurringView:Lcn/codemao/android/sketch/view/BlurringView;

.field private fl_edit_space:Landroid/view/View;

.field private iv_shadow_bottom:Landroid/view/View;

.field private iv_shadow_top:Landroid/view/View;

.field private keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

.field private lastHeight:I

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private listener:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;

.field private mContext:Landroid/content/Context;

.field private mEditText:Lcn/codemao/android/sketch/view/CmEditText;

.field private screenHeight:I

.field private selText:Ljava/lang/String;

.field private show:Z

.field private sure:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Bfx7WM-zNa6VOLlaR0Z2jfKl7sA(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->lambda$onCreate$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_16

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 57
    :cond_16
    iput-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->selText:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;
    .registers 1

    .line 33
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->iv_shadow_top:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->fl_edit_space:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->iv_shadow_bottom:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->show:Z

    if-eqz v0, :cond_7

    .line 76
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 2

    .line 83
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->doAfterDismiss()V

    .line 84
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->close()V

    :cond_a
    return-void
.end method

.method protected doAfterShow()V
    .registers 3

    .line 166
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->doAfterShow()V

    .line 167
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v1, :cond_e

    .line 168
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/UiUtil;->hideNavigationBar(Landroid/app/Activity;)V

    :cond_e
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 90
    sget v0, Lcn/codemao/android/sketch/R$layout;->pop_fullscreen_edit2:I

    return v0
.end method

.method public listenText(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;)Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;
    .registers 2

    .line 160
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->listener:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/codemao/android/sketch/R$id;->sure:I

    if-ne p1, v0, :cond_17

    .line 178
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 181
    :goto_18
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->listener:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;

    if-eqz v0, :cond_1f

    .line 182
    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;->onText(Ljava/lang/String;)V

    .line 183
    :cond_1f
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->dismiss()V

    return-void
.end method

.method protected onCreate()V
    .registers 5

    .line 96
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onCreate()V

    .line 97
    sget v0, Lcn/codemao/android/sketch/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v0, Lcn/codemao/android/sketch/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->sure:Landroid/view/View;

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->screenHeight:I

    .line 104
    sget v0, Lcn/codemao/android/sketch/R$id;->editText:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CmEditText;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    .line 105
    sget v0, Lcn/codemao/android/sketch/R$id;->fl_edit_space:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->fl_edit_space:Landroid/view/View;

    .line 106
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_shadow_top:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->iv_shadow_top:Landroid/view/View;

    .line 107
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_shadow_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->iv_shadow_bottom:Landroid/view/View;

    .line 108
    sget v0, Lcn/codemao/android/sketch/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/BlurringView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 109
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 111
    iget-object v2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 113
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->fl_edit_space:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 116
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v2, :cond_8e

    .line 117
    check-cast v1, Lcn/codemao/android/sketch/SketchActivity2;

    .line 118
    invoke-virtual {v1}, Lcn/codemao/android/sketch/SketchActivity2;->getRootview()Landroid/view/View;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    invoke-virtual {v3, v2}, Lcn/codemao/android/sketch/view/BlurringView;->setBlurredView(Landroid/view/View;)V

    .line 122
    new-instance v2, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    invoke-direct {v2, v1}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->keyboardHeightProvider:Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;

    .line 123
    invoke-virtual {v2, p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;)V

    .line 125
    new-instance v1, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$1;-><init>(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_8e
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->selText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 135
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c0

    .line 138
    :cond_9e
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->selText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->selText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 140
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->selText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_c0

    .line 141
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 145
    :cond_c0
    :goto_c0
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    new-instance v2, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;-><init>(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 156
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->mEditText:Lcn/codemao/android/sketch/view/CmEditText;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 4

    .line 190
    iget p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->screenHeight:I

    if-eqz p2, :cond_46

    .line 191
    iget p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->lastHeight:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0xa

    if-le p2, v0, :cond_46

    .line 192
    iput p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->lastHeight:I

    .line 193
    iget-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 194
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->fl_edit_space:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->sure:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    iget-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->sure:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-le p2, v0, :cond_46

    .line 197
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result p2

    .line 198
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->sure:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 199
    iget-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->sure:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->show:Z

    .line 70
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method
