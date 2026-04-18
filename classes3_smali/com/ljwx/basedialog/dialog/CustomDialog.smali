.class public Lcom/ljwx/basedialog/dialog/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/basedialog/dialog/CustomDialog$Builder;,
        Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;,
        Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;
    }
.end annotation


# instance fields
.field mAnimationEnter:Landroid/view/animation/Animation;

.field mAnimationExit:Landroid/view/animation/Animation;

.field mIsCanceledOnTouchOutside:Z

.field vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mIsCanceledOnTouchOutside:Z

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 43
    new-instance p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 44
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    return-void
.end method

.method protected static translate(FF)Landroid/view/animation/Animation;
    .registers 12

    .line 225
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    move v6, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 p0, 0xfa

    .line 226
    invoke-virtual {v9, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v9
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    if-nez v0, :cond_d

    goto :goto_2a

    .line 171
    :cond_d
    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 172
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 173
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    new-instance v1, Lcom/ljwx/basedialog/dialog/CustomDialog$1;

    invoke-direct {v1, p0}, Lcom/ljwx/basedialog/dialog/CustomDialog$1;-><init>(Lcom/ljwx/basedialog/dialog/CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 189
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2d

    .line 170
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismissImmediately()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public dismissImmediately()V
    .registers 1

    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3f

    .line 199
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3a

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 204
    iget-boolean v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mIsCanceledOnTouchOutside:Z

    if-eqz v0, :cond_3a

    .line 205
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V

    return v1

    .line 211
    :cond_3a
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3f
    :goto_3f
    return v1
.end method

.method protected dp2px(F)I
    .registers 3

    .line 236
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method isAnimating(Landroid/view/animation/Animation;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 232
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 158
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 159
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    if-nez v0, :cond_10

    goto :goto_22

    .line 161
    :cond_10
    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 162
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 163
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/ljwx/basedialog/dialog/CustomDialog;->isAnimating(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 220
    :cond_11
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_14
    :goto_14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 131
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iget-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public varargs setActions(Landroid/view/View$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 7

    .line 101
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget v2, p2, v1

    .line 102
    iget-object v3, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 104
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-object p0
.end method

.method public setAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 85
    iput-object p2, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mAnimationExit:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 137
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    iput-boolean p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->mIsCanceledOnTouchOutside:Z

    return-void
.end method

.method public setContentView(I)V
    .registers 5

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/ljwx/basedialog/dialog/CustomDialog;->vRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDimAmount(F)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    cmpl-float v2, p1, v0

    if-lez v2, :cond_15

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_23

    .line 77
    :cond_15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :goto_23
    return-object p0
.end method

.method public varargs setDismissActions(Landroid/content/DialogInterface$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 4

    .line 111
    new-instance v0, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;

    invoke-direct {v0, p0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog$DismissAction;-><init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v0, p2}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setActions(Landroid/view/View$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    return-object p0
.end method

.method public setView(I)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setContentView(I)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setContentView(Landroid/view/View;)V

    return-object p0
.end method

.method public setWidthHeightMatch()V
    .registers 5

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 60
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 66
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 67
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2a
    return-void
.end method

.method public setWidthMatch()V
    .registers 6

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 50
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_17
    return-void
.end method

.method public showIt()Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 1

    .line 121
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public useDefaultActions()Lcom/ljwx/basedialog/dialog/CustomDialog;
    .registers 5

    .line 116
    new-instance v0, Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;

    invoke-direct {v0, p0}, Lcom/ljwx/basedialog/dialog/CustomDialog$DefaultAction;-><init>(Landroid/app/Dialog;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget v2, Lcom/ljwx/basedialog/R$id;->btn_cancel:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/ljwx/basedialog/R$id;->btn_close:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setActions(Landroid/view/View$OnClickListener;[I)Lcom/ljwx/basedialog/dialog/CustomDialog;

    return-object p0
.end method
