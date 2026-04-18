.class public Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "MidiFullScreenEditPop.java"


# instance fields
.field private beforeEnd:I

.field private beforeStart:I

.field private beforeStr:Ljava/lang/String;

.field private blur:Landroid/widget/ImageView;

.field private displayName:Ljava/lang/String;

.field private edit:Landroid/widget/EditText;

.field private exitNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBottom:I

.field private layoutCount:I

.field private listener:Lcom/codemao/midi/view/InputStatusListener;

.field private volatile show:Z

.field private textWatcher:Landroid/text/TextWatcher;

.field private tvNotice:Landroid/widget/TextView;

.field private viewById:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->show:Z

    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->layoutCount:I

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStr:Ljava/lang/String;

    .line 65
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStart:I

    .line 66
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeEnd:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->saveAndQuite()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/TextView;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStart:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;I)I
    .registers 2

    .line 46
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeStart:I

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/widget/EditText;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeEnd:I

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;I)I
    .registers 2

    .line 46
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->beforeEnd:I

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Landroid/text/TextWatcher;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->textWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->hideNotice()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->show:Z

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->quite()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method private caculateMagin(I)V
    .registers 10

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v0, v1}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 218
    div-int/lit8 v2, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-static {v3, v4}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41700000  # 15.0f

    invoke-static {v3, v5}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 220
    iget-object v5, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 221
    iget-object v6, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    add-int/2addr v1, v3

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v1, v7

    if-ge v2, v1, :cond_73

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    add-int v1, v3, v0

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    add-int v1, v0, v2

    if-le v1, p1, :cond_73

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    add-int v2, v0, p1

    .line 231
    :cond_73
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 232
    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 233
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private hideNotice()V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 305
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 306
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$7;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$7;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    .line 322
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_2b
    return-void
.end method

.method private initView()V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$5;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isExist(Ljava/lang/String;)Z
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->exitNames:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private quite()V
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listener:Lcom/codemao/midi/view/InputStatusListener;

    if-eqz v0, :cond_7

    .line 330
    invoke-interface {v0}, Lcom/codemao/midi/view/InputStatusListener;->onCancel()V

    .line 332
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->dismiss()V

    return-void
.end method

.method private saveAndQuite()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listener:Lcom/codemao/midi/view/InputStatusListener;

    if-eqz v1, :cond_68

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_56

    .line 252
    :cond_23
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 253
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listener:Lcom/codemao/midi/view/InputStatusListener;

    invoke-interface {v0}, Lcom/codemao/midi/view/InputStatusListener;->onCancel()V

    .line 254
    invoke-virtual {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->dismiss()V

    return-void

    .line 258
    :cond_34
    invoke-direct {p0, v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 259
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_name_already_exists:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->showNotice()V

    return-void

    .line 263
    :cond_4d
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listener:Lcom/codemao/midi/view/InputStatusListener;

    invoke-interface {v1, v0}, Lcom/codemao/midi/view/InputStatusListener;->onDone(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->dismiss()V

    goto :goto_68

    .line 248
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$string;->midi_name_can_not_be_empty:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->showNotice()V

    :cond_68
    :goto_68
    return-void
.end method

.method private showNotice()V
    .registers 5

    .line 280
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 281
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 282
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 283
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 284
    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v2, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$6;

    invoke-direct {v2, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$6;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_39
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->show:Z

    if-eqz v0, :cond_7

    .line 84
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/midi/util/MidiImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 240
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 241
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 356
    sget v0, Lcom/codemao/midi/R$layout;->midi_pop_fullscreen_edit:I

    return v0
.end method

.method public listen(Lcom/codemao/midi/view/InputStatusListener;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listener:Lcom/codemao/midi/view/InputStatusListener;

    return-object p0
.end method

.method protected onCreate()V
    .registers 3

    .line 90
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 91
    sget v0, Lcom/codemao/midi/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->blur:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/codemao/midi/R$id;->tv_notice:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->tvNotice:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/codemao/midi/R$id;->line:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    .line 94
    sget v0, Lcom/codemao/midi/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    const/high16 v1, 0x20000

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 98
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$1;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    new-instance v0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$2;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->textWatcher:Landroid/text/TextWatcher;

    .line 139
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    sget v0, Lcom/codemao/midi/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$3;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/codemao/midi/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop$4;-><init>(Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 155
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 156
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/midi/util/MidiImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 159
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 160
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 161
    sget v0, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->caculateMagin(I)V

    .line 162
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->initView()V

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    .line 343
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public onGetImagePathResult(Landroid/graphics/Rect;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    sget v0, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v0, p1

    .line 170
    iget v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->layoutCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->layoutCount:I

    .line 171
    iget v2, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->lastBottom:I

    div-int/lit8 v3, v0, 0x5

    if-le v2, v3, :cond_1a

    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_1a

    move p1, v2

    :cond_1a
    if-eq v2, p1, :cond_5d

    if-gez v1, :cond_1f

    goto :goto_5d

    .line 176
    :cond_1f
    iput p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->lastBottom:I

    .line 177
    div-int/lit8 v1, v0, 0x5

    if-le p1, v1, :cond_2f

    div-int/lit8 v1, v0, 0x2

    if-ge p1, v1, :cond_2f

    .line 178
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_36

    .line 180
    :cond_2f
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->viewById:Landroidx/constraintlayout/widget/Guideline;

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 182
    :goto_36
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 183
    sget v1, Lcom/codemao/midi/R$id;->line:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v1, -0x1

    .line 184
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 185
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->edit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    sget v0, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    div-int/lit8 v1, v0, 0x5

    if-le p1, v1, :cond_58

    div-int/lit8 v1, v0, 0x2

    if-ge p1, v1, :cond_58

    .line 187
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->caculateMagin(I)V

    goto :goto_5d

    .line 189
    :cond_58
    div-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->caculateMagin(I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->show:Z

    .line 78
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method

.method public setDiaplayName(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setPools(Ljava/util/List;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->exitNames:Ljava/util/List;

    return-object p0
.end method
