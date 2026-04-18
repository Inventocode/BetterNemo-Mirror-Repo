.class public final Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver$NavigationBarObserverInstance;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mIsRegister:Ljava/lang/Boolean;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver$1;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;
    .registers 1

    .line 34
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver$NavigationBarObserverInstance;->access$000()Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnNavigationBarListener(Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 87
    :cond_3
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    .line 90
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public onChange(Z)V
    .registers 6

    .line 64
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 65
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_76

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 68
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isMIUI()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 69
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_5b

    .line 70
    :cond_31
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isEMUI()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 71
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isEMUI3_x()Z

    move-result v0

    const-string v2, "navigationbar_is_min"

    if-nez v0, :cond_4f

    const/16 v0, 0x15

    if-ge p1, v0, :cond_44

    goto :goto_4f

    .line 74
    :cond_44
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_5b

    .line 72
    :cond_4f
    :goto_4f
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    .line 77
    :goto_5b
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_71

    goto :goto_72

    :cond_71
    const/4 v3, 0x0

    .line 78
    :goto_72
    invoke-interface {v2, v3}, Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;->onNavigationBarChange(Z)V

    goto :goto_61

    :cond_76
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_52

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v0, "force_fsg_nav_bar"

    .line 47
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_44

    .line 48
    :cond_28
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isEMUI()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 49
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/navbar/OSUtils;->isEMUI3_x()Z

    move-result v1

    const-string v2, "navigationbar_is_min"

    if-nez v1, :cond_40

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3b

    goto :goto_40

    .line 52
    :cond_3b
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_44

    .line 50
    :cond_40
    :goto_40
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_44
    :goto_44
    if-eqz v1, :cond_52

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    :cond_52
    return-void
.end method

.method public removeOnNavigationBarListener(Lcn/codemao/android/sketch/xpopup/util/navbar/OnNavigationBarListener;)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 97
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    :cond_15
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->context:Landroid/content/Context;

    if-eqz p1, :cond_22

    .line 101
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/util/navbar/NavigationBarObserver;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    goto :goto_22

    .line 104
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_22
    :goto_22
    return-void
.end method
