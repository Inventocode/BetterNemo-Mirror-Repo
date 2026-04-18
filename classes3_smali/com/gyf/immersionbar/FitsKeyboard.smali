.class Lcom/gyf/immersionbar/FitsKeyboard;
.super Ljava/lang/Object;
.source "FitsKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mChildView:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mDecorView:Landroid/view/View;

.field private mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

.field private mIsAddListener:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mTempKeyboardHeight:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/gyf/immersionbar/ImmersionBar;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    .line 32
    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 33
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    .line 34
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    const v2, 0x1020002

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->isDialogFragment()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 37
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    goto :goto_57

    .line 41
    :cond_36
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getFragment()Landroid/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 43
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    goto :goto_57

    .line 47
    :cond_43
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_57

    .line 49
    instance-of v2, p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_57

    .line 50
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    .line 54
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_79

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    .line 56
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    .line 57
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    .line 58
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    .line 60
    :cond_79
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz p1, :cond_7e

    move-object v1, p1

    :cond_7e
    iput-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 3

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-eqz v0, :cond_16

    .line 89
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    :cond_16
    return-void
.end method

.method disable()V
    .registers 6

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_39

    iget-boolean v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-eqz v0, :cond_39

    .line 76
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 77
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iget v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    iget v4, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_39

    .line 79
    :cond_1c
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 80
    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 81
    invoke-virtual {v3}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 82
    invoke-virtual {v4}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    move-result v4

    .line 79
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_39
    :goto_39
    return-void
.end method

.method enable(I)V
    .registers 4

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 66
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    iget-boolean p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    if-nez p1, :cond_1b

    .line 68
    iget-object p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mIsAddListener:Z

    :cond_1b
    return-void
.end method

.method public onGlobalLayout()V
    .registers 9

    .line 100
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    if-eqz v0, :cond_f1

    .line 101
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarConfig()Lcom/gyf/immersionbar/BarConfig;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result v1

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v1

    .line 104
    :goto_29
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 106
    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mDecorView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    .line 108
    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mTempKeyboardHeight:I

    if-eq v3, v2, :cond_f1

    .line 109
    iput v3, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mTempKeyboardHeight:I

    .line 110
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_b9

    .line 111
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mChildView:Landroid/view/View;

    if-eqz v2, :cond_94

    .line 112
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    if-eqz v2, :cond_71

    .line 113
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getActionBarHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v3, v2

    .line 115
    :cond_71
    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v2

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->fits:Z

    if-eqz v2, :cond_80

    .line 116
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_80
    if-le v3, v1, :cond_86

    .line 119
    iget v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingBottom:I

    add-int/2addr v0, v3

    goto :goto_88

    :cond_86
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 122
    :goto_88
    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingLeft:I

    iget v6, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingTop:I

    iget v7, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mPaddingRight:I

    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_be

    .line 124
    :cond_94
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v1

    if-le v3, v1, :cond_a0

    add-int v0, v3, v1

    goto :goto_a1

    :cond_a0
    const/4 v4, 0x0

    .line 130
    :goto_a1
    iget-object v1, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingLeft()I

    move-result v2

    iget-object v6, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 131
    invoke-virtual {v6}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 132
    invoke-virtual {v7}, Lcom/gyf/immersionbar/ImmersionBar;->getPaddingRight()I

    move-result v7

    .line 130
    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_be

    :cond_b9
    sub-int/2addr v3, v1

    if-le v3, v1, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v4, 0x0

    :goto_be
    if-gez v3, :cond_c1

    goto :goto_c2

    :cond_c1
    move v5, v3

    .line 144
    :goto_c2
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->onKeyboardListener:Lcom/gyf/immersionbar/OnKeyboardListener;

    if-eqz v0, :cond_d7

    .line 145
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->onKeyboardListener:Lcom/gyf/immersionbar/OnKeyboardListener;

    invoke-interface {v0, v4, v5}, Lcom/gyf/immersionbar/OnKeyboardListener;->onKeyboardChange(ZI)V

    :cond_d7
    if-nez v4, :cond_ea

    .line 147
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->getBarParams()Lcom/gyf/immersionbar/BarParams;

    move-result-object v0

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v0, v1, :cond_ea

    .line 148
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_ea
    if-nez v4, :cond_f1

    .line 151
    iget-object v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mImmersionBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsParentBarKeyboard()V

    :cond_f1
    return-void
.end method

.method resetKeyboardHeight()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/gyf/immersionbar/FitsKeyboard;->mTempKeyboardHeight:I

    return-void
.end method
