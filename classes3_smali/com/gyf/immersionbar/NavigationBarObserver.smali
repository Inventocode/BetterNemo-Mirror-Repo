.class final Lcom/gyf/immersionbar/NavigationBarObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/NavigationBarObserver$NavigationBarObserverInstance;
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mIsRegister:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gyf/immersionbar/OnNavigationBarListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mIsRegister:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gyf/immersionbar/NavigationBarObserver$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/gyf/immersionbar/NavigationBarObserver;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/gyf/immersionbar/NavigationBarObserver;
    .registers 1

    .line 37
    invoke-static {}, Lcom/gyf/immersionbar/NavigationBarObserver$NavigationBarObserverInstance;->access$000()Lcom/gyf/immersionbar/NavigationBarObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 91
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 92
    iget-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 93
    iget-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/gyf/immersionbar/GestureUtils;->getGestureBean(Landroid/content/Context;)Lcom/gyf/immersionbar/GestureUtils$GestureBean;

    move-result-object p1

    .line 95
    iget-boolean v0, p1, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->isGesture:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 96
    iget-boolean v0, p1, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->checkNavigation:Z

    if-eqz v0, :cond_26

    .line 97
    iget-object v0, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeightInternal(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_26

    :cond_25
    const/4 v1, 0x1

    .line 105
    :cond_26
    iget-object v0, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gyf/immersionbar/OnNavigationBarListener;

    .line 106
    iget-object v3, p1, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->type:Lcom/gyf/immersionbar/NavigationBarType;

    invoke-interface {v2, v1, v3}, Lcom/gyf/immersionbar/OnNavigationBarListener;->onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V

    goto :goto_2c

    :cond_3e
    return-void
.end method

.method register(Landroid/app/Application;)V
    .registers 7

    .line 45
    iput-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d7

    if-eqz p1, :cond_d7

    .line 47
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_d7

    iget-boolean p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mIsRegister:Z

    if-nez p1, :cond_d7

    .line 51
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isHuaWei()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_9c

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI()Z

    move-result p1

    if-eqz p1, :cond_23

    goto/16 :goto_9c

    .line 57
    :cond_23
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isXiaoMi()Z

    move-result p1

    if-nez p1, :cond_8c

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_8c

    .line 60
    :cond_30
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isVivo()Z

    move-result p1

    if-nez p1, :cond_85

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFuntouchOrOriginOs()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_85

    .line 62
    :cond_3d
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isOppo()Z

    move-result p1

    if-nez p1, :cond_7e

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isColorOs()Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_7e

    .line 64
    :cond_4a
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isSamsung()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 65
    iget-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_hide_bar_enabled"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_72

    const-string p1, "navigation_bar_gesture_while_hidden"

    .line 67
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "navigation_bar_gesture_detail_type"

    .line 68
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "navigation_bar_gesture_hint"

    .line 69
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b3

    .line 71
    :cond_72
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b2

    :cond_77
    const-string p1, "navigation_mode"

    .line 74
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b2

    :cond_7e
    :goto_7e
    const-string p1, "hide_navigationbar_enable"

    .line 63
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b2

    :cond_85
    :goto_85
    const-string p1, "navigation_gesture_on"

    .line 61
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b2

    :cond_8c
    :goto_8c
    const-string p1, "force_fsg_nav_bar"

    .line 58
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    .line 59
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_b3

    .line 52
    :cond_9c
    :goto_9c
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result p1

    const-string v2, "navigationbar_is_min"

    if-nez p1, :cond_ae

    const/16 p1, 0x15

    if-ge v0, p1, :cond_a9

    goto :goto_ae

    .line 55
    :cond_a9
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b2

    .line 53
    :cond_ae
    :goto_ae
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_b2
    move-object v0, v1

    :goto_b3
    const/4 v2, 0x1

    if-eqz p1, :cond_c1

    .line 77
    iget-object v3, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iput-boolean v2, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mIsRegister:Z

    :cond_c1
    if-eqz v1, :cond_cc

    .line 81
    iget-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_cc
    if-eqz v0, :cond_d7

    .line 84
    iget-object p1, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d7
    return-void
.end method

.method removeOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 124
    iget-object v0, p0, Lcom/gyf/immersionbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    goto :goto_a

    .line 127
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_a
    return-void
.end method
