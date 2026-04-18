.class public Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Lcn/codemao/android/sketch/notchlib/INotchScreen;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V
    .registers 4

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;-><init>(Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;Landroid/view/View;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
