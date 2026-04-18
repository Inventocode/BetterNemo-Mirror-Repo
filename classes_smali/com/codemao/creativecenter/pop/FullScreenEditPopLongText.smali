.class public Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenEditPopLongText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;
    }
.end annotation


# instance fields
.field private blur:Landroid/widget/ImageView;

.field private curWorkUid:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private edit:Lcom/codemao/creativecenter/customview/CmEditText;

.field private icConfirm:Landroid/widget/ImageView;

.field private lastBottom:I

.field private layoutCount:I

.field private listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

.field private volatile show:Z

.field private testString:Ljava/lang/String;

.field private type:I

.field private viewById:Landroidx/constraintlayout/widget/Guideline;

.field private viewCover:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$g69v_yQhj9vPu0dSvB2-yqzuArY(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 61
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    const/4 v0, 0x5

    .line 53
    iput v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->layoutCount:I

    .line 55
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->show:Z

    const-string/jumbo p1, "测试测试测试测试测试测试测试测试测试测试测试"

    .line 56
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->testString:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    .line 63
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->curWorkUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->saveAndQuite()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    return p0
.end method

.method private caculateMagin(I)V
    .registers 8

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    .line 210
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000  # 5.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41700000  # 15.0f

    invoke-static {v2, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 212
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    add-int/2addr v2, v0

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v2, v5

    if-ge v1, v2, :cond_69

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v0, v1

    if-le v2, p1, :cond_69

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    add-int/2addr p1, v0

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    add-int v1, p1, v0

    .line 221
    :cond_69
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 222
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 125
    iget-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->show:Z

    if-eqz p1, :cond_7

    .line 126
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->quite()V

    :cond_7
    return-void
.end method

.method private quite()V
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    if-eqz v0, :cond_7

    .line 254
    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;->onCancel()V

    .line 256
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->dismiss()V

    return-void
.end method

.method private saveAndQuite()V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    if-eqz v1, :cond_2d

    .line 236
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_25

    .line 242
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 243
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;->onCancel()V

    .line 244
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->dismiss()V

    return-void

    .line 238
    :cond_25
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->dismiss()V

    .line 239
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;->onDone(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->show:Z

    if-eqz v0, :cond_7

    .line 76
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    iget v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    const v3, 0xe89d5

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 230
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 285
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_edit_long:I

    return v0
.end method

.method public listen(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;)Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->listener:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$InputStatusListener;

    return-object p0
.end method

.method protected onCreate()V
    .registers 6

    .line 82
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 83
    sget v0, Lcom/codemao/creativecenter/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->blur:Landroid/widget/ImageView;

    .line 84
    sget v0, Lcom/codemao/creativecenter/R$id;->line:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewById:Landroidx/constraintlayout/widget/Guideline;

    .line 85
    sget v0, Lcom/codemao/creativecenter/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->icConfirm:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/codemao/creativecenter/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/CmEditText;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    .line 87
    sget v0, Lcom/codemao/creativecenter/R$id;->v_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewCover:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    .line 91
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    .line 92
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 93
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->testString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 94
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0xa

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    new-instance v3, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->icConfirm:Landroid/widget/ImageView;

    new-instance v3, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v2, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 130
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 132
    sget-object v2, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v2}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 133
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewCover:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->blur:Landroid/widget/ImageView;

    const-string v2, "#FA221D4E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_ce

    .line 136
    :cond_be
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewCover:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->blur:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 139
    :goto_ce
    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->caculateMagin(I)V

    .line 140
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->initView()V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v3, 0xe89d5

    iget v4, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->type:I

    invoke-direct {v2, v3, v4, v0}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    .line 261
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public onGetImagePathResult(Lcom/codemao/creativecenter/event/RectEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6b

    .line 147
    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_7

    goto :goto_6b

    .line 148
    :cond_7
    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p1, Lcom/codemao/creativecenter/event/RectEvent;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->curWorkUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6b

    .line 151
    :cond_1a
    sget v0, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    iget-object p1, p1, Lcom/codemao/creativecenter/event/RectEvent;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v0, p1

    .line 152
    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->layoutCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->layoutCount:I

    .line 153
    iget v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->lastBottom:I

    div-int/lit8 v3, v0, 0x5

    if-le v2, v3, :cond_33

    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_33

    move p1, v2

    :cond_33
    if-eq v2, p1, :cond_6b

    if-gez v1, :cond_38

    goto :goto_6b

    .line 158
    :cond_38
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->lastBottom:I

    .line 159
    div-int/lit8 v1, v0, 0x5

    if-le p1, v1, :cond_48

    div-int/lit8 v1, v0, 0x2

    if-ge p1, v1, :cond_48

    .line 160
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewById:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_4f

    .line 162
    :cond_48
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->viewById:Landroidx/constraintlayout/widget/Guideline;

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 164
    :goto_4f
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 165
    sget v0, Lcom/codemao/creativecenter/R$id;->line:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v0, 0x0

    .line 166
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 167
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 168
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 169
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 170
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->edit:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->show:Z

    .line 70
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method

.method public setDiaplayName(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->displayName:Ljava/lang/String;

    return-object p0
.end method
