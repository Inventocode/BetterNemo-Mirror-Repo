.class public Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenEditWithCustomKeyboardPop.java"


# instance fields
.field private blur:Landroid/widget/ImageView;

.field private content:Ljava/lang/String;

.field private edit:Landroid/widget/EditText;

.field private isTextChanged:Z

.field private listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

.field private viewCover:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$XCsESfCjDMbIYkcd7ul2w6CG0o8(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->lambda$initKeyboard$2(Landroid/widget/EditText;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5MC8HUofblg5aCMlOhYVg3SDOU(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpUaqBoH8Sz_bkoIex-i1QNWSv0(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uNNgxSH1hv2W_Y8ByE4TOGX2lWQ(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->lambda$initEditText$3(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->isTextChanged:Z

    .line 40
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->isTextChanged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->isTextChanged:Z

    return p1
.end method

.method private initBlurBackground()V
    .registers 3

    .line 64
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->viewCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->blur:Landroid/widget/ImageView;

    const-string v1, "#FA221D4E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2c

    .line 68
    :cond_1b
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->viewCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    :goto_2c
    return-void
.end method

.method private initEditText(Landroid/widget/EditText;)V
    .registers 6

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 99
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 101
    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    new-instance v0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initKeyboard(Landroid/widget/EditText;)V
    .registers 5

    .line 80
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$id;->keyboardParent:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p0, v2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->register(Landroid/widget/EditText;I)V

    .line 83
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->setOnKeyDoneListener(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;)V

    return-void
.end method

.method private synthetic lambda$initEditText$3(Landroid/widget/EditText;)V
    .registers 6

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 127
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 128
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->content:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0xbb8

    const/high16 v3, -0x80000000

    .line 130
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->measure(II)V

    .line 132
    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result v1

    if-le v1, v0, :cond_33

    const v1, 0x800013

    .line 134
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_38

    :cond_33
    const/16 v1, 0x11

    .line 136
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    :goto_38
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 139
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->isTextChanged:Z

    :cond_44
    return-void
.end method

.method private synthetic lambda$initKeyboard$2(Landroid/widget/EditText;Landroid/view/View;I)V
    .registers 4

    .line 84
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->onDone(Landroid/widget/EditText;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->quite()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->edit:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->onDone(Landroid/widget/EditText;)V

    return-void
.end method

.method private onDone(Landroid/widget/EditText;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    if-eqz v0, :cond_f

    .line 90
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;->onDone(Ljava/lang/String;)V

    .line 92
    :cond_f
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private quite()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    if-eqz v0, :cond_7

    .line 157
    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;->onCancel()V

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method protected doAfterDismiss()V
    .registers 2

    .line 151
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    .line 152
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 146
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_edit_with_custom_keyboard:I

    return v0
.end method

.method public holder(Lcom/codemao/creativecenter/event/EmptyEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method protected onCreate()V
    .registers 5

    .line 50
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    sget v0, Lcom/codemao/creativecenter/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->edit:Landroid/widget/EditText;

    .line 53
    sget v0, Lcom/codemao/creativecenter/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->blur:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/codemao/creativecenter/R$id;->v_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->viewCover:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->initBlurBackground()V

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->edit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->initEditText(Landroid/widget/EditText;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->edit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->initKeyboard(Landroid/widget/EditText;)V

    .line 58
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->blur:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d6

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 5

    .line 164
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d6

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onShow()V
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method

.method public setListener(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    return-object p0
.end method
