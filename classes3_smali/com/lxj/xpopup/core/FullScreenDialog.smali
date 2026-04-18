.class public Lcom/lxj/xpopup/core/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# instance fields
.field contentView:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    sget v0, Lcom/lxj/xpopup/R$style;->_XPopup_TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getNavigationBarColor()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->navigationBarColor:I

    if-nez v0, :cond_c

    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getNavigationBarColor()I

    move-result v0

    :cond_c
    return v0
.end method

.method private getResNameById(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const-string p1, ""

    return-object p1
.end method

.method private setStatusBarLightMode()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x504

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 111
    :cond_28
    iget-object v0, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isLightStatusBar:I

    if-nez v0, :cond_32

    sget v0, Lcom/lxj/xpopup/XPopup;->isLightStatusBar:I

    .line 112
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5d

    if-eqz v0, :cond_5d

    .line 113
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-lez v0, :cond_4b

    or-int/lit16 v0, v2, 0x2000

    goto :goto_4d

    :cond_4b
    and-int/lit16 v0, v2, -0x2001

    .line 120
    :goto_4d
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->statusBarBgColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_5d
    return-void
.end method


# virtual methods
.method public hideNavigationBar()V
    .registers 7

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2f

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    .line 134
    invoke-direct {p0, v4}, Lcom/lxj/xpopup/core/FullScreenDialog;->getResNameById(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "navigationBarBackground"

    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x4

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 143
    :cond_2f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_107

    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_107

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez p1, :cond_13

    goto/16 :goto_107

    .line 35
    :cond_13
    iget-boolean p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->enableShowWhenAppBackground:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/lxj/xpopup/util/XPermission;->create(Landroid/content/Context;[Ljava/lang/String;)Lcom/lxj/xpopup/util/XPermission;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lxj/xpopup/util/XPermission;->isGrantedDrawOverlays()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_38

    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7f6

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_41

    .line 39
    :cond_38
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 43
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->keepScreenOn:Z

    if-eqz p1, :cond_52

    .line 44
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    :cond_52
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x1000000

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 p1, 0x500

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-ne p1, v1, :cond_a8

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_d6

    :cond_a8
    const/16 v1, 0x14

    const/high16 v3, 0xc000000

    if-ne p1, v1, :cond_b2

    .line 63
    invoke-virtual {p0, v3, v2}, Lcom/lxj/xpopup/core/FullScreenDialog;->setWindowFlag(IZ)V

    goto :goto_d6

    :cond_b2
    const/16 v1, 0x15

    if-lt p1, v1, :cond_d6

    .line 65
    invoke-virtual {p0, v3, v0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setWindowFlag(IZ)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 67
    invoke-direct {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->getNavigationBarColor()I

    move-result p1

    if-eqz p1, :cond_cd

    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 69
    :cond_cd
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 72
    :cond_d6
    :goto_d6
    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, p1, Lcom/lxj/xpopup/core/PopupInfo;->isRequestFocus:Z

    if-nez v0, :cond_ef

    const/16 v0, 0x8

    .line 74
    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->isCoverSoftInput:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_eb

    const v0, 0x20008

    .line 77
    :cond_eb
    invoke-virtual {p0, v0, v2}, Lcom/lxj/xpopup/core/FullScreenDialog;->setWindowFlag(IZ)V

    goto :goto_fc

    .line 78
    :cond_ef
    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->isCoverSoftInput:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_fc

    const/high16 p1, 0x20000

    .line 79
    invoke-virtual {p0, p1, v2}, Lcom/lxj/xpopup/core/FullScreenDialog;->setWindowFlag(IZ)V

    .line 82
    :cond_fc
    :goto_fc
    invoke-direct {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setStatusBarLightMode()V

    .line 83
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setNavBarLightMode()V

    .line 84
    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_107
    :goto_107
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 183
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 184
    invoke-direct {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setStatusBarLightMode()V

    .line 185
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->setNavBarLightMode()V

    if-eqz p1, :cond_21

    .line 186
    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_21

    iget-boolean v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->hasMoveUp:Z

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupStatus;->Show:Lcom/lxj/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_21

    .line 187
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->focusAndProcessBackPress()V

    .line 188
    iget-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-static {p1}, Lcom/lxj/xpopup/util/KeyboardUtils;->showSoftInput(Landroid/view/View;)V

    :cond_21
    return-void
.end method

.method public setContent(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/FullScreenDialog;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 175
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 177
    :cond_f
    iput-object p1, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    return-object p0
.end method

.method public setNavBarLightMode()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasNavigationBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 157
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/FullScreenDialog;->hideNavigationBar()V

    .line 159
    :cond_f
    iget-object v0, p0, Lcom/lxj/xpopup/core/FullScreenDialog;->contentView:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isLightNavigationBar:I

    if-nez v0, :cond_19

    sget v0, Lcom/lxj/xpopup/XPopup;->isLightNavigationBar:I

    .line 160
    :cond_19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_37

    if-eqz v0, :cond_37

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-lez v0, :cond_32

    or-int/lit8 v0, v2, 0x10

    goto :goto_34

    :cond_32
    and-int/lit8 v0, v2, -0x11

    .line 168
    :goto_34
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_37
    return-void
.end method

.method public setWindowFlag(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "bits",
            "on"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_10

    .line 95
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_16

    .line 97
    :cond_10
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    :goto_16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
