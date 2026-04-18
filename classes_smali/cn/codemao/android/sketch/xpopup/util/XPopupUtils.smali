.class public Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;
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

    .line 98
    invoke-static {p0, p1, p2, v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method

.method public static applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
    .registers 5

    .line 102
    new-instance v0, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils$1;-><init>(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
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

    .line 292
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 294
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    .line 295
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 296
    :cond_1b
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_24

    .line 297
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static getDecorViewInvisibleHeight(Landroid/app/Activity;)I
    .registers 2

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 189
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v0

    if-gt p0, v0, :cond_25

    .line 190
    sput p0, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    const/4 p0, 0x0

    return p0

    .line 193
    :cond_25
    sget v0, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static getNavBarHeight()I
    .registers 4

    .line 80
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static getStatusBarHeight()I
    .registers 4

    .line 69
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    .line 60
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

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static isInRect(FFLandroid/graphics/Rect;)Z
    .registers 4

    .line 169
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

    .line 269
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3c

    .line 271
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 272
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 276
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigationBarBackground"

    .line 277
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 278
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_39

    const/4 p0, 0x1

    goto :goto_3d

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    if-eqz p0, :cond_49

    .line 285
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

.method public static moveDown(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)V
    .registers 3

    .line 254
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 255
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static moveUpToKeyboard(ILcn/codemao/android/sketch/xpopup/core/BasePopupView;)V
    .registers 10

    .line 197
    iget-object v0, p1, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 199
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-static {v0, p1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 203
    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v1, v2

    .line 210
    :cond_2b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 211
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 212
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 213
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 216
    :cond_59
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_73

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 221
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->getLocationInWindow([I)V

    const/4 v6, 0x1

    .line 222
    aget v5, v5, v6

    .line 223
    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_74

    :cond_73
    const/4 v5, 0x0

    .line 228
    :goto_74
    instance-of v6, p1, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;

    if-nez v6, :cond_91

    .line 229
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v7

    if-ne v2, v7, :cond_96

    .line 230
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v7

    add-int/2addr v2, v7

    if-ne v0, v2, :cond_96

    :cond_91
    add-int v0, v5, p0

    if-ge v0, v3, :cond_96

    return-void

    :cond_96
    if-eqz v6, :cond_9f

    add-int/2addr v5, p0

    sub-int/2addr v5, v3

    if-eqz v1, :cond_9f

    if-lez v5, :cond_9f

    move v4, v5

    :cond_9f
    const/4 p0, 0x0

    if-nez v4, :cond_af

    .line 244
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_af

    return-void

    .line 245
    :cond_af
    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 246
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, p0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static setWidthHeight(Landroid/view/View;II)V
    .registers 4

    if-gtz p1, :cond_5

    if-gtz p2, :cond_5

    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p1, :cond_d

    .line 92
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    if-lez p2, :cond_11

    .line 93
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    :cond_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
