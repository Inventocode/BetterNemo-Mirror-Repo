.class public Lcn/codemao/android/sketch/activity/ICutActivity;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "ICutActivity.java"


# instance fields
.field private cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

.field private imoji_ib_help:Landroid/widget/ImageView;

.field private ivClose:Landroid/view/View;

.field private mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

.field private mNextButton:Landroid/widget/ImageView;

.field private mUndoButton:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

.field private translationX:F


# direct methods
.method public static synthetic $r8$lambda$REqBEt3zlgKJ1YMBk5S1AnJbS3Q(Lcn/codemao/android/sketch/activity/ICutActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ws6wEdDXNgVVgbehwcfyVURnV8Y(Lcn/codemao/android/sketch/activity/ICutActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/activity/ICutActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->showCutHelp()V

    return-void
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/activity/ICutActivity;)F
    .registers 1

    .line 29
    iget p0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->translationX:F

    return p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/activity/ICutActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    return-object p0
.end method

.method private finishThis()V
    .registers 5

    .line 208
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 211
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animAlpha(Landroid/view/View;Z)V

    .line 212
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    iget v2, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->translationX:F

    const/4 v3, 0x0

    invoke-static {v3, v0, v2, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZ)V

    .line 213
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    iget v2, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->translationX:F

    invoke-static {v3, v0, v2, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZ)V

    .line 214
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$5;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$5;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleBitmapReady(Landroid/graphics/Bitmap;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_21

    .line 189
    :cond_f
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object v0

    const-string v1, "TRIMMED_BITMAP"

    invoke-virtual {v0, v1, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x4d3

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 191
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->finishThis()V

    return-void

    .line 185
    :cond_21
    :goto_21
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_pic_length_none_zero:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initSize()V
    .registers 5

    .line 61
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_e6

    .line 62
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42200000  # 40.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->ivClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->ivClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->ivClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41400000  # 12.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 71
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->ivClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 72
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 73
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 74
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42000000  # 32.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 75
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 76
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 77
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_e6
    return-void
.end method

.method private initView()V
    .registers 3

    .line 119
    new-instance v0, Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    .line 120
    sget v0, Lcn/codemao/android/sketch/R$id;->imoji_ib_undo:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    .line 121
    sget v0, Lcn/codemao/android/sketch/R$id;->view_cut:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->rootView:Landroid/view/View;

    .line 122
    sget v0, Lcn/codemao/android/sketch/R$id;->imoji_ib_help:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->imoji_ib_help:Landroid/widget/ImageView;

    .line 123
    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$2;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget v0, Lcn/codemao/android/sketch/R$id;->imoji_ib_tag:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->ivClose:Landroid/view/View;

    .line 137
    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 141
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->translationX:F

    .line 149
    sget v0, Lcn/codemao/android/sketch/R$id;->imoji_editor_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

    .line 151
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mUndoButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$3;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 160
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$4;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$4;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView;->setCutImageCallback(Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 5

    .line 131
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object p1

    const-string/jumbo v0, "角色抠图页面"

    const-string/jumbo v1, "角色抠图-撤销"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/codemao/android/sketch/utils/ReportUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->undo()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 5

    .line 142
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_23

    .line 143
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "角色抠图页面"

    const-string/jumbo v2, "角色抠图-确定"

    invoke-virtual {p1, v1, v2, v0}, Lcn/codemao/android/sketch/utils/ReportUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->clipBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->handleBitmapReady(Landroid/graphics/Bitmap;)V

    :cond_23
    return-void
.end method

.method private setBitmap()V
    .registers 3

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    .line 84
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object v0

    const-string v1, "INPUT_BITMAP"

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 88
    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->mIGEditorView:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showCutHelp()V
    .registers 3

    .line 92
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->rootView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    .line 93
    new-instance v0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/activity/ICutActivity$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/activity/ICutActivity$1;-><init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    .line 95
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->customAnimator(Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;)Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    .line 114
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .registers 5

    .line 202
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object p1

    const-string/jumbo v0, "角色抠图页面"

    const-string/jumbo v1, "角色抠图-取消"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/codemao/android/sketch/utils/ReportUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 204
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->finishThis()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 226
    sget v0, Lcn/codemao/android/sketch/R$anim;->cut_in:I

    sget v1, Lcn/codemao/android/sketch/R$anim;->cut_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 198
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->finishThis()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 46
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/UiUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 48
    sget p1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    if-eqz p1, :cond_18

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    :cond_18
    sget p1, Lcn/codemao/android/sketch/R$layout;->fragment_cut:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->initView()V

    .line 55
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->setBitmap()V

    .line 57
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/ICutActivity;->initSize()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 247
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->onDestroy()V

    :cond_12
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 231
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 232
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->onPause()V

    :cond_12
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 239
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 240
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 241
    iget-object v0, p0, Lcn/codemao/android/sketch/activity/ICutActivity;->cutHelperView:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->onResume()V

    :cond_12
    return-void
.end method
