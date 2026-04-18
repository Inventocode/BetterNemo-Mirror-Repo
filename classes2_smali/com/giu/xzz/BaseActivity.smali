.class public abstract Lcom/giu/xzz/BaseActivity;
.super Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;
.source "BaseActivity.java"


# instance fields
.field protected isUserInfoChanged:Z

.field protected toolBarHeight:I

.field protected viewExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->initViewName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewExtraInfo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/giu/xzz/BaseActivity;->toolBarHeight:I

    return-void
.end method


# virtual methods
.method protected abstract contentViewId()I
.end method

.method public finish()V
    .registers 1

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAnim(II)V
    .registers 3

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getViewExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewExtraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract initViewName()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 81
    invoke-super {p0, p1}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->screenFull()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 83
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->statusFontMode()Z

    move-result p1

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->statusBarColor()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 85
    :cond_14
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->showNavigation()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 86
    invoke-static {p0}, Lcom/giu/xzz/utils/StatusBarUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 88
    :cond_1d
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->contentViewId()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->toolBarId()I

    move-result p1

    if-eqz p1, :cond_4e

    .line 102
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->toolBarId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0}, Lcom/giu/xzz/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/giu/xzz/BaseActivity;->toolBarHeight:I

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/giu/xzz/BaseActivity;->toolBarHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    :cond_4e
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 139
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 121
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onResume()V

    .line 122
    iget-boolean v0, p0, Lcom/giu/xzz/BaseActivity;->isUserInfoChanged:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/giu/xzz/BaseActivity;->isUserInfoChanged:Z

    .line 124
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    :cond_d
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserInfoChange"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected screenFull()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setUserInfoChanged(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/giu/xzz/BaseActivity;->isUserInfoChanged:Z

    return-void
.end method

.method public setViewExtraInfo(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewExtraInfo:Ljava/util/Map;

    return-void
.end method

.method public setViewName(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/giu/xzz/BaseActivity;->viewName:Ljava/lang/String;

    return-void
.end method

.method protected showNavigation()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 2

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected statusBarColor()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected toolBarId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
