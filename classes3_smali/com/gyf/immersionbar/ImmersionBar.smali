.class public final Lcom/gyf/immersionbar/ImmersionBar;
.super Ljava/lang/Object;
.source "ImmersionBar.java"

# interfaces
.implements Lcom/gyf/immersionbar/ImmersionCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private final mActivity:Landroid/app/Activity;

.field private mBarConfig:Lcom/gyf/immersionbar/BarConfig;

.field private mBarParams:Lcom/gyf/immersionbar/BarParams;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDecorView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

.field private mFitsStatusBarType:I

.field private mFragment:Landroid/app/Fragment;

.field private mInitialized:Z

.field private mIsActionBarBelowLOLLIPOP:Z

.field private mIsDialog:Z

.field private mIsDialogFragment:Z

.field private mIsFragment:Z

.field private mKeyboardTempEnable:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarWidth:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

.field private mSupportFragment:Landroidx/fragment/app/Fragment;

.field private mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 76
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 92
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 96
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 112
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 120
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    .line 1867
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1868
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/DialogFragment;)V
    .registers 4

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 76
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 92
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 96
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 112
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 120
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 1922
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 1923
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 1924
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1925
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    .line 1926
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 1927
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 1928
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;)V
    .registers 4

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 76
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 92
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 96
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 112
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 120
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 1892
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 1893
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1894
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    .line 1895
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 1896
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .registers 4

    .line 1905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 76
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 92
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 96
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 112
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 120
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 1906
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 1907
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 1908
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1909
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    .line 1910
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    .line 1911
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 1912
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 72
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    .line 76
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    .line 88
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 92
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 96
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    .line 112
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    .line 116
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 118
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    .line 120
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    const/4 v0, 0x1

    .line 1878
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    .line 1879
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    .line 1880
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    .line 1881
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->checkInitWithActivity()V

    .line 1882
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->initCommonParameter(Landroid/view/Window;)V

    return-void
.end method

.method private adjustDarkModeParams()V
    .registers 7

    .line 615
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v1, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    iget v2, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColorTransform:I

    iget v0, v0, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v1, v2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 617
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->autoStatusBarDarkModeEnable:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, -0x454546

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    if-le v0, v5, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 619
    :goto_1e
    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->autoStatusBarDarkModeAlpha:F

    invoke-virtual {p0, v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    .line 621
    :cond_23
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v1, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarColor:I

    iget v2, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarColorTransform:I

    iget v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    invoke-static {v1, v2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 623
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->autoNavigationBarDarkModeEnable:Z

    if-eqz v2, :cond_40

    if-eqz v0, :cond_40

    if-le v0, v5, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    .line 625
    :goto_3b
    iget v0, v1, Lcom/gyf/immersionbar/BarParams;->autoNavigationBarDarkModeAlpha:F

    invoke-virtual {p0, v3, v0}, Lcom/gyf/immersionbar/ImmersionBar;->navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    :cond_40
    return-void
.end method

.method private cancelListener()V
    .registers 3

    .line 994
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 995
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-eqz v0, :cond_e

    .line 996
    invoke-virtual {v0}, Lcom/gyf/immersionbar/FitsKeyboard;->cancel()V

    const/4 v0, 0x0

    .line 997
    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 999
    :cond_e
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->removeOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 1000
    invoke-static {}, Lcom/gyf/immersionbar/NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/NavigationBarObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v1, v1, Lcom/gyf/immersionbar/BarParams;->onNavigationBarListener:Lcom/gyf/immersionbar/OnNavigationBarListener;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/NavigationBarObserver;->removeOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V

    :cond_20
    return-void
.end method

.method public static checkFitsSystemWindows(Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1497
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 1500
    :cond_c
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_32

    .line 1501
    check-cast p0, Landroid/view/ViewGroup;

    .line 1502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_32

    .line 1503
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1504
    instance-of v5, v4, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v5, :cond_28

    .line 1505
    invoke-static {v4}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_28

    return v2

    .line 1509
    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_32
    return v0
.end method

.method private checkInitWithActivity()V
    .registers 3

    .line 1950
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-nez v0, :cond_c

    .line 1951
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 1953
    :cond_c
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v1, :cond_17

    .line 1954
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_17
    return-void
.end method

.method private fitsKeyboard()V
    .registers 3

    .line 1009
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_55

    .line 1010
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_2d

    .line 1011
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    if-eqz v0, :cond_25

    .line 1012
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-nez v0, :cond_1b

    .line 1013
    new-instance v0, Lcom/gyf/immersionbar/FitsKeyboard;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/FitsKeyboard;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 1015
    :cond_1b
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->keyboardMode:I

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/FitsKeyboard;->enable(I)V

    goto :goto_55

    .line 1017
    :cond_25
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-eqz v0, :cond_55

    .line 1018
    invoke-virtual {v0}, Lcom/gyf/immersionbar/FitsKeyboard;->disable()V

    goto :goto_55

    .line 1022
    :cond_2d
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_55

    .line 1023
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    if-eqz v1, :cond_4e

    .line 1024
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-nez v1, :cond_42

    .line 1025
    new-instance v1, Lcom/gyf/immersionbar/FitsKeyboard;

    invoke-direct {v1, v0}, Lcom/gyf/immersionbar/FitsKeyboard;-><init>(Lcom/gyf/immersionbar/ImmersionBar;)V

    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    .line 1027
    :cond_42
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v0, v0, Lcom/gyf/immersionbar/BarParams;->keyboardMode:I

    invoke-virtual {v1, v0}, Lcom/gyf/immersionbar/FitsKeyboard;->enable(I)V

    goto :goto_55

    .line 1029
    :cond_4e
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-eqz v0, :cond_55

    .line 1030
    invoke-virtual {v0}, Lcom/gyf/immersionbar/FitsKeyboard;->disable()V

    :cond_55
    :goto_55
    return-void
.end method

.method private fitsLayoutOverlap()V
    .registers 6

    .line 941
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->fitsLayoutOverlapEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 942
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 944
    :goto_f
    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    const/4 v4, 0x2

    if-eq v2, v4, :cond_29

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1b

    goto :goto_44

    .line 955
    :cond_1b
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v4, v4, Lcom/gyf/immersionbar/BarParams;->statusBarView:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_44

    .line 951
    :cond_29
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v4, v4, Lcom/gyf/immersionbar/BarParams;->titleBarView:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V

    goto :goto_44

    .line 947
    :cond_37
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v4, v4, Lcom/gyf/immersionbar/BarParams;->titleBarView:Landroid/view/View;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V

    :goto_44
    return-void
.end method

.method private fitsNotchScreen()V
    .registers 3

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v0, :cond_18

    .line 472
    :try_start_a
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 473
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 474
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method

.method private fitsWindows()V
    .registers 3

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 669
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-nez v0, :cond_14

    .line 671
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsAboveLOLLIPOP()V

    goto :goto_17

    .line 674
    :cond_14
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsBelowLOLLIPOP()V

    .line 677
    :goto_17
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsLayoutOverlap()V

    :cond_1a
    return-void
.end method

.method private fitsWindowsAboveLOLLIPOP()V
    .registers 4

    .line 713
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 714
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void

    .line 718
    :cond_14
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->fits:Z

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_26

    .line 719
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 721
    :goto_27
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    if-eqz v2, :cond_36

    .line 722
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    add-int/2addr v0, v2

    .line 724
    :cond_36
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void
.end method

.method private fitsWindowsBelowLOLLIPOP()V
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 687
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :cond_f
    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    .line 690
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    :goto_15
    return-void
.end method

.method private fitsWindowsEMUI()V
    .registers 4

    .line 771
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/Constants;->IMMERSION_NAVIGATION_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 772
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v2, :cond_29

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_35

    .line 774
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->addOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V

    .line 775
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->register(Landroid/app/Application;)V

    goto :goto_35

    .line 778
    :cond_29
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->removeOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V

    const/16 v1, 0x8

    .line 779
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method private fitsWindowsKITKAT()V
    .registers 6

    .line 732
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 733
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void

    .line 737
    :cond_14
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->fits:Z

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_26

    .line 738
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 740
    :goto_27
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->isSupportActionBar:Z

    if-eqz v2, :cond_36

    .line 741
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v0

    iget v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    add-int/2addr v0, v2

    .line 743
    :cond_36
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/BarConfig;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v3, v2, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v3, :cond_86

    iget-boolean v3, v2, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v3, :cond_86

    .line 744
    iget-boolean v2, v2, Lcom/gyf/immersionbar/BarParams;->fullScreen:Z

    if-nez v2, :cond_64

    .line 745
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 746
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    goto :goto_66

    .line 748
    :cond_5d
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v2

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    const/4 v3, 0x0

    .line 751
    :goto_66
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v4, v4, Lcom/gyf/immersionbar/BarParams;->hideNavigationBar:Z

    if-eqz v4, :cond_77

    .line 752
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v4

    if-eqz v4, :cond_75

    goto :goto_87

    :cond_75
    const/4 v2, 0x0

    goto :goto_88

    .line 758
    :cond_77
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v4}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v4

    if-nez v4, :cond_88

    .line 759
    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v2}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v2

    goto :goto_88

    :cond_86
    const/4 v2, 0x0

    :goto_87
    const/4 v3, 0x0

    .line 763
    :cond_88
    :goto_88
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    return-void
.end method

.method private static getRetriever()Lcom/gyf/immersionbar/RequestManagerRetriever;
    .registers 1

    .line 3332
    invoke-static {}, Lcom/gyf/immersionbar/RequestManagerRetriever;->getInstance()Lcom/gyf/immersionbar/RequestManagerRetriever;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1667
    new-instance v0, Lcom/gyf/immersionbar/BarConfig;

    invoke-direct {v0, p0}, Lcom/gyf/immersionbar/BarConfig;-><init>(Landroid/app/Activity;)V

    .line 1668
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method private hideBarAboveR()V
    .registers 5

    .line 902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_57

    .line 903
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 905
    sget-object v1, Lcom/gyf/immersionbar/ImmersionBar$2;->$SwitchMap$com$gyf$immersionbar$BarHide:[I

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v2, v2, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_46

    if-eq v1, v3, :cond_3e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_36

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    goto :goto_54

    .line 917
    :cond_27
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 918
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_54

    .line 914
    :cond_36
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_54

    .line 911
    :cond_3e
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_54

    .line 907
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 908
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 923
    :goto_54
    invoke-interface {v0, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_57
    return-void
.end method

.method private hideBarBelowR(I)I
    .registers 4

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    return p1

    :cond_7
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2f

    .line 641
    sget-object v0, Lcom/gyf/immersionbar/ImmersionBar$2;->$SwitchMap$com$gyf$immersionbar$BarHide:[I

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v1, v1, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    goto :goto_2f

    :cond_24
    or-int/lit8 p1, p1, 0x0

    goto :goto_2f

    :cond_27
    or-int/lit16 p1, p1, 0x202

    goto :goto_2f

    :cond_2a
    or-int/lit16 p1, p1, 0x404

    goto :goto_2f

    :cond_2d
    or-int/lit16 p1, p1, 0x206

    :cond_2f
    :goto_2f
    or-int/lit16 p1, p1, 0x1000

    return p1
.end method

.method private initBarAboveLOLLIPOP(I)I
    .registers 8

    .line 490
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-nez v0, :cond_e

    .line 491
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    iput v1, v0, Lcom/gyf/immersionbar/BarParams;->defaultNavigationBarColor:I

    :cond_e
    or-int/lit16 p1, p1, 0x400

    .line 495
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->fullScreen:Z

    if-eqz v1, :cond_1c

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v0, :cond_1c

    or-int/lit16 p1, p1, 0x200

    .line 499
    :cond_1c
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 501
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 502
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 505
    :cond_32
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 507
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColorEnabled:Z

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-eqz v1, :cond_5d

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4b

    .line 509
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 511
    :cond_4b
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v4, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    iget v5, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColorTransform:I

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v4, v5, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_6a

    .line 514
    :cond_5d
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget v4, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    iget v0, v0, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v4, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 518
    :goto_6a
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v1, :cond_8b

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_79

    .line 520
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 522
    :cond_79
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v2, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarColor:I

    iget v3, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarColorTransform:I

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_92

    .line 525
    :cond_8b
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget v0, v0, Lcom/gyf/immersionbar/BarParams;->defaultNavigationBarColor:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_92
    return p1
.end method

.method private initBarBelowLOLLIPOP()V
    .registers 4

    .line 535
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 537
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupStatusBarView()V

    .line 539
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 540
    :cond_18
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    const/high16 v2, 0x8000000

    if-eqz v1, :cond_2a

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v0, :cond_2a

    .line 542
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2f

    .line 544
    :cond_2a
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 546
    :goto_2f
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    if-nez v0, :cond_3b

    .line 547
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 549
    :cond_3b
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    if-nez v0, :cond_47

    .line 550
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 553
    :cond_47
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setupNavBarView()V

    :cond_4a
    return-void
.end method

.method private initCommonParameter(Landroid/view/Window;)V
    .registers 3

    .line 1964
    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    .line 1965
    new-instance p1, Lcom/gyf/immersionbar/BarParams;

    invoke-direct {p1}, Lcom/gyf/immersionbar/BarParams;-><init>()V

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    .line 1966
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v0, 0x1020002

    .line 1967
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static isSupportNavigationIconDark()Z
    .registers 2

    .line 1166
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isSupportStatusBarDarkFont()Z
    .registers 2

    .line 1155
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    move-result v0

    if-nez v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private postFitsWindowsBelowLOLLIPOP()V
    .registers 2

    .line 701
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsKITKAT()V

    .line 703
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 704
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindowsEMUI()V

    :cond_10
    return-void
.end method

.method private setBarDarkFontAboveR()V
    .registers 3

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 441
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFontAboveR()V

    .line 442
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDarkAboveR()V

    :cond_c
    return-void
.end method

.method private setNavigationIconDark(I)I
    .registers 4

    .line 859
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 860
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarDarkIcon:Z

    if-eqz v0, :cond_e

    or-int/lit8 p1, p1, 0x10

    :cond_e
    return p1
.end method

.method private setNavigationIconDarkAboveR()V
    .registers 4

    .line 889
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarDarkIcon:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_12

    .line 891
    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_16

    :cond_12
    const/4 v1, 0x0

    .line 895
    invoke-interface {v0, v1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_16
    return-void
.end method

.method private setPadding(IIII)V
    .registers 6

    .line 1055
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 1056
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1058
    :cond_7
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    .line 1059
    iput p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    .line 1060
    iput p3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    .line 1061
    iput p4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    return-void
.end method

.method private setSpecialBarDarkMode()V
    .registers 4

    .line 447
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 449
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-static {v0, v2, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v1, :cond_20

    .line 452
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarDarkIcon:Z

    const-string v2, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

    invoke-static {v1, v2, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setMIUIBarDark(Landroid/view/Window;Ljava/lang/String;Z)V

    .line 456
    :cond_20
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFlymeOS4Later()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 457
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v1, v0, Lcom/gyf/immersionbar/BarParams;->flymeOSStatusBarFontColor:I

    if-eqz v1, :cond_32

    .line 458
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;I)V

    goto :goto_39

    .line 460
    :cond_32
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    invoke-static {v1, v0}, Lcom/gyf/immersionbar/SpecialBarFontUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method private setStatusBarDarkFont(I)I
    .registers 4

    .line 843
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 844
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    if-eqz v0, :cond_e

    or-int/lit16 p1, p1, 0x2000

    :cond_e
    return p1
.end method

.method private setStatusBarDarkFontAboveR()V
    .registers 4

    .line 872
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1b

    .line 874
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_17

    const/16 v1, 0x2000

    .line 875
    invoke-virtual {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->unsetSystemUiFlag(I)V

    .line 877
    :cond_17
    invoke-interface {v0, v2, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_1f

    :cond_1b
    const/4 v1, 0x0

    .line 881
    invoke-interface {v0, v1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_1f
    return-void
.end method

.method public static varargs setStatusBarView(Landroid/app/Activity;I[Landroid/view/View;)V
    .registers 8

    .line 1355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_45

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    if-gez p1, :cond_d

    const/4 p1, 0x0

    .line 1362
    :cond_d
    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_45

    aget-object v2, p2, v1

    if-nez v2, :cond_16

    goto :goto_42

    .line 1366
    :cond_16
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_24

    .line 1368
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1370
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_42

    .line 1371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 1374
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1376
    :cond_3d
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1377
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_45
    return-void
.end method

.method public static varargs setTitleBar(Landroid/app/Activity;I[Landroid/view/View;)V
    .registers 11

    .line 1178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_76

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    if-gez p1, :cond_d

    const/4 p1, 0x0

    .line 1185
    :cond_d
    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_76

    aget-object v2, p2, v1

    if-nez v2, :cond_16

    goto :goto_73

    .line 1190
    :cond_16
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_24

    .line 1192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1194
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_73

    .line 1195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1196
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, -0x2

    if-nez v3, :cond_3e

    .line 1198
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1200
    :cond_3e
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v6, :cond_6b

    if-ne v7, v5, :cond_45

    goto :goto_6b

    .line 1216
    :cond_45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, p1, v5

    add-int/2addr v7, v5

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1217
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v6, v4

    .line 1218
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 1217
    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1219
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 1204
    :cond_6b
    :goto_6b
    new-instance v5, Lcom/gyf/immersionbar/ImmersionBar$1;

    invoke-direct {v5, v3, v2, p1, v4}, Lcom/gyf/immersionbar/ImmersionBar$1;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;ILjava/lang/Integer;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_76
    return-void
.end method

.method public static varargs setTitleBarMarginTop(Landroid/app/Activity;I[Landroid/view/View;)V
    .registers 11

    .line 1274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_57

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 p0, 0x0

    if-gez p1, :cond_d

    const/4 p1, 0x0

    .line 1281
    :cond_d
    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_57

    aget-object v2, p2, v1

    if-nez v2, :cond_16

    goto :goto_54

    .line 1285
    :cond_16
    sget v3, Lcom/gyf/immersionbar/R$id;->immersion_fits_layout_overlap:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_24

    .line 1287
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1289
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_54

    .line 1290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1291
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 1293
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1295
    :cond_3e
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1296
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p1

    .line 1297
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v6, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1296
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1300
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_57
    return-void
.end method

.method private setupNavBarView()V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/Constants;->IMMERSION_NAVIGATION_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    .line 587
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 588
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 589
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    :cond_19
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v1}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_32

    .line 594
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 595
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_42

    .line 597
    :cond_32
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v3}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result v3

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800005

    .line 598
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 600
    :goto_42
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v2, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarColor:I

    iget v3, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarColorTransform:I

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 604
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarEnable:Z

    if-eqz v2, :cond_67

    iget-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz v2, :cond_67

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->hideNavigationBar:Z

    if-nez v1, :cond_67

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    :cond_67
    const/16 v1, 0x8

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6c
    return-void
.end method

.method private setupStatusBarView()V
    .registers 7

    .line 561
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v1, Lcom/gyf/immersionbar/Constants;->IMMERSION_STATUS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 563
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    .line 565
    invoke-virtual {v5}, Lcom/gyf/immersionbar/BarConfig;->getStatusBarHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    .line 566
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 567
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 570
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 572
    :cond_30
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v3, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColorEnabled:Z

    if-eqz v3, :cond_44

    .line 573
    iget v2, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    iget v3, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColorTransform:I

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4f

    .line 576
    :cond_44
    iget v3, v1, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v3, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4f
    return-void
.end method

.method private transformView()V
    .registers 8

    .line 967
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_9b

    .line 968
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 969
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 970
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 971
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 972
    iget-object v3, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v3, v3, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 973
    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v4, v4, Lcom/gyf/immersionbar/BarParams;->statusBarColorTransform:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 974
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 975
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 976
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_46

    :cond_62
    if-eqz v2, :cond_16

    .line 979
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v1, v1, Lcom/gyf/immersionbar/BarParams;->viewAlpha:F

    const/4 v5, 0x0

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_86

    .line 980
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v4, v4, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_16

    .line 982
    :cond_86
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget v4, v4, Lcom/gyf/immersionbar/BarParams;->viewAlpha:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_16

    :cond_9b
    return-void
.end method

.method private updateBarConfig()V
    .registers 3

    .line 787
    new-instance v0, Lcom/gyf/immersionbar/BarConfig;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/BarConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    .line 788
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsActionBarBelowLOLLIPOP:Z

    if-eqz v1, :cond_17

    .line 789
    :cond_11
    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->getActionBarHeight()I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    :cond_17
    return-void
.end method

.method private updateBarParams()V
    .registers 3

    .line 383
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->adjustDarkModeParams()V

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2d

    .line 386
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-eqz v0, :cond_14

    .line 387
    :cond_11
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 389
    :cond_14
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_2d

    .line 391
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-eqz v1, :cond_20

    .line 392
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    .line 395
    :cond_20
    iget-boolean v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    if-eqz v1, :cond_2d

    .line 396
    iget-boolean v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    if-eqz v1, :cond_2d

    .line 397
    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    :cond_2d
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 130
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->getRetriever()Lcom/gyf/immersionbar/RequestManagerRetriever;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/gyf/immersionbar/RequestManagerRetriever;->get(Landroid/app/Activity;Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method fitsParentBarKeyboard()V
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    if-eqz v0, :cond_12

    .line 1040
    invoke-virtual {v0}, Lcom/gyf/immersionbar/FitsKeyboard;->disable()V

    .line 1041
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    iget-object v0, v0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsKeyboard:Lcom/gyf/immersionbar/FitsKeyboard;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/FitsKeyboard;->resetKeyboardHeight()V

    :cond_12
    return-void
.end method

.method public fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 2851
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/BarParams;->fits:Z

    if-eqz p1, :cond_e

    .line 2853
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    if-nez p1, :cond_11

    const/4 p1, 0x4

    .line 2854
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    goto :goto_11

    :cond_e
    const/4 p1, 0x0

    .line 2857
    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    :cond_11
    :goto_11
    return-object p0
.end method

.method getActionBarHeight()I
    .registers 2

    .line 1145
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActionBarHeight:I

    return v0
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 1101
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getBarConfig()Lcom/gyf/immersionbar/BarConfig;
    .registers 3

    .line 1137
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    if-nez v0, :cond_d

    .line 1138
    new-instance v0, Lcom/gyf/immersionbar/BarConfig;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/BarConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    .line 1140
    :cond_d
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    return-object v0
.end method

.method public getBarParams()Lcom/gyf/immersionbar/BarParams;
    .registers 2

    .line 1051
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    return-object v0
.end method

.method getFragment()Landroid/app/Fragment;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method getPaddingBottom()I
    .registers 2

    .line 1097
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingBottom:I

    return v0
.end method

.method getPaddingLeft()I
    .registers 2

    .line 1070
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingLeft:I

    return v0
.end method

.method getPaddingRight()I
    .registers 2

    .line 1088
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingRight:I

    return v0
.end method

.method getPaddingTop()I
    .registers 2

    .line 1079
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mPaddingTop:I

    return v0
.end method

.method getSupportFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mSupportFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getWindow()Landroid/view/Window;
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->barEnable:Z

    if-eqz v0, :cond_1e

    .line 324
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarParams()V

    .line 326
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    .line 328
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    .line 330
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsKeyboard()V

    .line 332
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->transformView()V

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    :cond_1e
    return-void
.end method

.method initialized()Z
    .registers 2

    .line 1133
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    return v0
.end method

.method isDialogFragment()Z
    .registers 2

    .line 1126
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialogFragment:Z

    return v0
.end method

.method public navigationBarDarkIcon(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 4

    .line 2766
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarDarkIcon:Z

    if-eqz p1, :cond_11

    .line 2767
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportNavigationIconDark()Z

    move-result p1

    if-nez p1, :cond_11

    .line 2768
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput p2, p1, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    goto :goto_17

    .line 2770
    :cond_11
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget p2, p1, Lcom/gyf/immersionbar/BarParams;->navigationBarTempAlpha:F

    iput p2, p1, Lcom/gyf/immersionbar/BarParams;->navigationBarAlpha:F

    :goto_17
    return-object p0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 366
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 367
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result p1

    if-nez p1, :cond_14

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    goto :goto_14

    .line 374
    :cond_10
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    goto :goto_29

    .line 368
    :cond_14
    :goto_14
    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/BarParams;->navigationBarWithKitkatEnable:Z

    if-eqz p1, :cond_26

    .line 369
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_29

    .line 371
    :cond_26
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsWindows()V

    :goto_29
    return-void
.end method

.method onDestroy()V
    .registers 4

    .line 342
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->cancelListener()V

    .line 343
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsDialog:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mParentBar:Lcom/gyf/immersionbar/ImmersionBar;

    if-eqz v0, :cond_1a

    .line 344
    iget-object v1, v0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v2, v0, Lcom/gyf/immersionbar/ImmersionBar;->mKeyboardTempEnable:Z

    iput-boolean v2, v1, Lcom/gyf/immersionbar/BarParams;->keyboardEnable:Z

    .line 345
    iget-object v1, v1, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v1, v2, :cond_1a

    .line 346
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_1a
    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    return-void
.end method

.method public onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V
    .registers 7

    .line 795
    iget-object p2, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    sget v0, Lcom/gyf/immersionbar/Constants;->IMMERSION_NAVIGATION_BAR_VIEW_ID:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9a

    .line 797
    new-instance v0, Lcom/gyf/immersionbar/BarConfig;

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/BarConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    .line 798
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_2a

    const/16 p1, 0x8

    .line 801
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_27
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_91

    .line 806
    :cond_2a
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    const v3, 0x1020002

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->checkFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_27

    .line 811
    :cond_3d
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    if-nez p1, :cond_49

    .line 812
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    .line 814
    :cond_49
    iget p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    if-nez p1, :cond_55

    .line 815
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth()I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    .line 817
    :cond_55
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean p1, p1, Lcom/gyf/immersionbar/BarParams;->hideNavigationBar:Z

    if-nez p1, :cond_91

    .line 818
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 819
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarConfig:Lcom/gyf/immersionbar/BarConfig;

    invoke-virtual {v0}, Lcom/gyf/immersionbar/BarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_7b

    const/16 v0, 0x50

    .line 820
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 821
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 822
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->fullScreen:Z

    if-nez v1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    const/4 v1, 0x0

    goto :goto_8e

    :cond_7b
    const v0, 0x800005

    .line 825
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 826
    iget v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mNavigationBarWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 828
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v1, v1, Lcom/gyf/immersionbar/BarParams;->fullScreen:Z

    if-nez v1, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    move v1, v0

    const/4 v0, 0x0

    .line 830
    :goto_8e
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setPadding(IIII)V

    :cond_9a
    return-void
.end method

.method onResume()V
    .registers 3

    .line 353
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->updateBarConfig()V

    .line 354
    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mIsFragment:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mInitialized:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    if-eqz v0, :cond_2a

    .line 355
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-boolean v0, v0, Lcom/gyf/immersionbar/BarParams;->navigationBarWithEMUI3Enable:Z

    if-eqz v0, :cond_1f

    .line 356
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    goto :goto_2a

    .line 358
    :cond_1f
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->barHide:Lcom/gyf/immersionbar/BarHide;

    sget-object v1, Lcom/gyf/immersionbar/BarHide;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/BarHide;

    if-eq v0, v1, :cond_2a

    .line 359
    invoke-virtual {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBar()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public reset()Lcom/gyf/immersionbar/ImmersionBar;
    .registers 2

    .line 3144
    new-instance v0, Lcom/gyf/immersionbar/BarParams;

    invoke-direct {v0}, Lcom/gyf/immersionbar/BarParams;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    const/4 v0, 0x0

    .line 3145
    iput v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mFitsStatusBarType:I

    return-object p0
.end method

.method public run()V
    .registers 1

    .line 696
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->postFitsWindowsBelowLOLLIPOP()V

    return-void
.end method

.method setBar()V
    .registers 4

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x100

    const/16 v2, 0x15

    if-lt v0, v2, :cond_21

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    if-nez v0, :cond_21

    .line 412
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->fitsNotchScreen()V

    .line 414
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->initBarAboveLOLLIPOP(I)I

    move-result v0

    .line 416
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setStatusBarDarkFont(I)I

    move-result v0

    .line 418
    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/ImmersionBar;->setNavigationIconDark(I)I

    move-result v1

    .line 420
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setBarDarkFontAboveR()V

    goto :goto_24

    .line 423
    :cond_21
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->initBarBelowLOLLIPOP()V

    .line 426
    :goto_24
    invoke-direct {p0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarBelowR(I)I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mDecorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 430
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->setSpecialBarDarkMode()V

    .line 432
    invoke-direct {p0}, Lcom/gyf/immersionbar/ImmersionBar;->hideBarAboveR()V

    .line 434
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget-object v0, v0, Lcom/gyf/immersionbar/BarParams;->onNavigationBarListener:Lcom/gyf/immersionbar/OnNavigationBarListener;

    if-eqz v0, :cond_46

    .line 435
    invoke-static {}, Lcom/gyf/immersionbar/NavigationBarObserver;->getInstance()Lcom/gyf/immersionbar/NavigationBarObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/NavigationBarObserver;->register(Landroid/app/Application;)V

    :cond_46
    return-void
.end method

.method public statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 2010
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarColorInt(I)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 2087
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput p1, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    return-object p0
.end method

.method public statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    const v0, 0x3e4ccccd  # 0.2f

    .line 2724
    invoke-virtual {p0, p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public statusBarDarkFont(ZF)Lcom/gyf/immersionbar/ImmersionBar;
    .registers 4

    .line 2736
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput-boolean p1, v0, Lcom/gyf/immersionbar/BarParams;->statusBarDarkFont:Z

    if-eqz p1, :cond_11

    .line 2737
    invoke-static {}, Lcom/gyf/immersionbar/ImmersionBar;->isSupportStatusBarDarkFont()Z

    move-result p1

    if-nez p1, :cond_11

    .line 2738
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iput p2, p1, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    goto :goto_1b

    .line 2740
    :cond_11
    iget-object p1, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    iget p2, p1, Lcom/gyf/immersionbar/BarParams;->flymeOSStatusBarFontTempColor:I

    iput p2, p1, Lcom/gyf/immersionbar/BarParams;->flymeOSStatusBarFontColor:I

    .line 2741
    iget p2, p1, Lcom/gyf/immersionbar/BarParams;->statusBarTempAlpha:F

    iput p2, p1, Lcom/gyf/immersionbar/BarParams;->statusBarAlpha:F

    :goto_1b
    return-object p0
.end method

.method public transparentStatusBar()Lcom/gyf/immersionbar/ImmersionBar;
    .registers 3

    .line 1976
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mBarParams:Lcom/gyf/immersionbar/BarParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/gyf/immersionbar/BarParams;->statusBarColor:I

    return-object p0
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 4

    .line 929
    iget-object v0, p0, Lcom/gyf/immersionbar/ImmersionBar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 930
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
