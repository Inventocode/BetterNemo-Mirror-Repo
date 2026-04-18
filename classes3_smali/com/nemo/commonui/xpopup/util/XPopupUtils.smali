.class public Lcom/nemo/commonui/xpopup/util/XPopupUtils;
.super Ljava/lang/Object;
.source "XPopupUtils.java"


# static fields
.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static applyPopupSize(Landroid/view/ViewGroup;II)V
    .registers 4

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method

.method public static applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
    .registers 5

    .line 104
    new-instance v0, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils$1;-><init>(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 2

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    .line 346
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 347
    :cond_1b
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_24

    .line 348
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static getDecorViewInvisibleHeight(Landroid/app/Activity;)I
    .registers 2

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 188
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 190
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v0

    if-gt p0, v0, :cond_25

    .line 191
    sput p0, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_25
    sget v0, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static getNavBarHeight()I
    .registers 4

    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static getStatusBarHeight()I
    .registers 4

    .line 71
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method private static isBottomPartShadow(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z
    .registers 2

    .line 284
    instance-of v0, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    iget-boolean p0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isInRect(FFLandroid/graphics/Rect;)Z
    .registers 4

    .line 170
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1e

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1e

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1e

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static isNavBarVisible(Landroid/content/Context;)Z
    .registers 9

    .line 316
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3c

    .line 318
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 319
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    .line 323
    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 324
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigationBarBackground"

    .line 325
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_35} :catch_39

    if-nez v5, :cond_39

    const/4 p0, 0x1

    goto :goto_3d

    :catch_39
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    if-eqz p0, :cond_49

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_48

    const/4 v2, 0x1

    :cond_48
    move p0, v2

    :cond_49
    return p0
.end method

.method private static isTopPartShadow(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z
    .registers 2

    .line 288
    instance-of v0, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    iget-boolean p0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static moveDown(Lcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 5

    .line 293
    instance-of v0, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    if-eqz v0, :cond_5

    return-void

    .line 294
    :cond_5
    instance-of v0, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    if-nez v0, :cond_e

    instance-of v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    .line 295
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isBottomPartShadow(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 296
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 297
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 298
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_52

    .line 300
    :cond_36
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 302
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_52
    return-void
.end method

.method public static moveUpToKeyboard(ILcom/nemo/commonui/xpopup/core/BasePopupView;)V
    .registers 13

    .line 198
    iget-object v0, p1, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 199
    :cond_b
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/PositionPopupView;

    if-eqz v0, :cond_10

    return-void

    .line 201
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-static {v0, p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 205
    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v1, v2

    .line 212
    :cond_30
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 213
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 214
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 215
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 218
    :cond_5e
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_78

    new-array v6, v4, [I

    .line 223
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->getLocationInWindow([I)V

    const/4 v7, 0x1

    .line 224
    aget v6, v6, v7

    .line 225
    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_7a

    :cond_78
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 229
    :goto_7a
    instance-of v8, p1, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    if-nez v8, :cond_83

    instance-of v8, p1, Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    if-eqz v8, :cond_83

    return-void

    .line 231
    :cond_83
    instance-of v8, p1, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;

    if-nez v8, :cond_a0

    .line 232
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v9

    if-ne v2, v9, :cond_a5

    .line 233
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v9

    add-int/2addr v2, v9

    if-ne v0, v2, :cond_a5

    :cond_a0
    add-int v2, v7, p0

    if-ge v2, v3, :cond_a5

    return-void

    :cond_a5
    const-wide/16 v9, 0xc8

    const/4 v2, 0x0

    if-eqz v8, :cond_b3

    add-int/2addr v7, p0

    sub-int/2addr v7, v3

    if-eqz v1, :cond_118

    if-lez v7, :cond_118

    :goto_b0
    move p0, v7

    goto/16 :goto_121

    .line 245
    :cond_b3
    instance-of v8, p1, Lcom/nemo/commonui/xpopup/core/CenterPopupView;

    if-eqz v8, :cond_cf

    sub-int/2addr v3, v0

    .line 246
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v3, v0

    div-int/2addr v3, v4

    sub-int/2addr p0, v3

    if-eqz v1, :cond_ca

    sub-int/2addr v6, p0

    if-gez v6, :cond_ca

    .line 249
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v0

    sub-int/2addr v6, v0

    add-int/2addr p0, v6

    .line 251
    :cond_ca
    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_121

    .line 252
    :cond_cf
    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    if-eqz v0, :cond_df

    if-eqz v1, :cond_121

    sub-int/2addr v6, p0

    if-gez v6, :cond_121

    .line 255
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v0

    sub-int/2addr v6, v0

    add-int/2addr p0, v6

    goto :goto_121

    .line 257
    :cond_df
    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isBottomPartShadow(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z

    move-result v0

    if-nez v0, :cond_11a

    instance-of v0, p1, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    if-eqz v0, :cond_ea

    goto :goto_11a

    .line 262
    :cond_ea
    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isTopPartShadow(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Z

    move-result v0

    if-eqz v0, :cond_118

    add-int/2addr v7, p0

    sub-int/2addr v7, v3

    if-eqz v1, :cond_f7

    if-lez v7, :cond_f7

    move v5, v7

    :cond_f7
    if-eqz v5, :cond_117

    .line 268
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    neg-int p1, v5

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 270
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_117
    return-void

    :cond_118
    const/4 p0, 0x0

    goto :goto_121

    :cond_11a
    :goto_11a
    add-int/2addr v7, p0

    sub-int/2addr v7, v3

    if-eqz v1, :cond_118

    if-lez v7, :cond_118

    goto :goto_b0

    :cond_121
    :goto_121
    if-nez p0, :cond_130

    .line 276
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_130

    return-void

    .line 277
    :cond_130
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 278
    invoke-virtual {p0, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static setWidthHeight(Landroid/view/View;II)V
    .registers 4

    if-gtz p1, :cond_5

    if-gtz p2, :cond_5

    return-void

    .line 93
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p1, :cond_d

    .line 94
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    if-lez p2, :cond_11

    .line 95
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    :cond_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
