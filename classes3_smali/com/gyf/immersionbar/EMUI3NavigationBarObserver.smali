.class final Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
.super Landroid/database/ContentObserver;
.source "EMUI3NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gyf/immersionbar/ImmersionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegister:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;
    .registers 1

    .line 28
    invoke-static {}, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver$NavigationBarObserverInstance;->access$000()Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 70
    :cond_e
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 71
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public onChange(Z)V
    .registers 8

    .line 49
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_4c

    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_4c

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 52
    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_is_min"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 53
    sget-object v0, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_31

    .line 55
    sget-object v0, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    .line 57
    :cond_31
    iget-object v3, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gyf/immersionbar/ImmersionCallback;

    if-nez p1, :cond_47

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    .line 58
    :goto_48
    invoke-interface {v4, v5, v0}, Lcom/gyf/immersionbar/OnNavigationBarListener;->onNavigationBarChange(ZLcom/gyf/immersionbar/NavigationBarType;)V

    goto :goto_37

    :cond_4c
    return-void
.end method

.method register(Landroid/app/Application;)V
    .registers 4

    .line 36
    iput-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2e

    if-eqz p1, :cond_2e

    .line 38
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "navigationbar_is_min"

    .line 39
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 41
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mIsRegister:Ljava/lang/Boolean;

    :cond_2e
    return-void
.end method

.method removeOnNavigationBarListener(Lcom/gyf/immersionbar/ImmersionCallback;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 76
    iget-object v0, p0, Lcom/gyf/immersionbar/EMUI3NavigationBarObserver;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    goto :goto_a

    .line 79
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_a
    return-void
.end method
