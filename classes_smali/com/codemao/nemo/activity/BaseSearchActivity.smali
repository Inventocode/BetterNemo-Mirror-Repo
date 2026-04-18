.class public abstract Lcom/codemao/nemo/activity/BaseSearchActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "BaseSearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;


# instance fields
.field animRoot:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cancelTv:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected keyword:Ljava/lang/String;

.field protected mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field search_delete:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field search_edit:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field shade_area:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation runtime Lbutterknife/OnTextChanged;
    .end annotation

    return-void
.end method

.method beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation runtime Lbutterknife/OnTextChanged;
    .end annotation

    return-void
.end method

.method protected abstract doCancel()V
.end method

.method protected doSearch()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "搜索内容不能为空"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 206
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->shade_area:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->doSearch(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract doSearch(Ljava/lang/String;)V
.end method

.method protected enterAnim()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/activity/BaseSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/BaseSearchActivity$3;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected exitAnim()V
    .registers 7

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->cancelTv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 258
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 259
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 260
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v3, 0x14d

    .line 261
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 262
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 263
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->cancelTv:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->root:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_66

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    new-array v1, v1, [F

    .line 271
    fill-array-data v1, :array_6e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    new-instance v2, Lcom/codemao/nemo/activity/BaseSearchActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/activity/BaseSearchActivity$4;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_66
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_6e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public finish()V
    .registers 1

    .line 290
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->exitAnim()V

    return-void
.end method

.method protected abstract getHint()Ljava/lang/String;
.end method

.method public onBackPressed()V
    .registers 1

    .line 295
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->doCancel()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_26

    goto :goto_25

    .line 140
    :sswitch_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    goto :goto_25

    .line 145
    :sswitch_14
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->shade_area:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 132
    :sswitch_1a
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 128
    :sswitch_22
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->doCancel()V

    :goto_25
    return-void

    :sswitch_data_26
    .sparse-switch
        0x7f0a00fb -> :sswitch_22
        0x7f0a01cc -> :sswitch_1a
        0x7f0a06d0 -> :sswitch_14
        0x7f0a06fb -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 72
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->getHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 77
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    new-instance v0, Lcom/codemao/nemo/activity/BaseSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BaseSearchActivity$1;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Lcom/codemao/nemo/activity/BaseSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/BaseSearchActivity$2;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->root:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 101
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->enterAnim()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    .line 120
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation runtime Lbutterknife/OnEditorAction;
    .end annotation

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x0

    return p1

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->doSearch()V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 7

    int-to-double p1, p1

    .line 300
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L  # 0.25

    mul-double v0, v0, v2

    const/4 v2, 0x0

    cmpl-double v3, p1, v0

    if-lez v3, :cond_2b

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 302
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 303
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_delete:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_37

    .line 306
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 307
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_delete:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onNullEV(Lcom/codemao/nemo/event/NullEV;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    .line 113
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 106
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->mKeyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation runtime Lbutterknife/OnTextChanged;
    .end annotation

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_delete:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 176
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_delete:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_14
    return-void
.end method
