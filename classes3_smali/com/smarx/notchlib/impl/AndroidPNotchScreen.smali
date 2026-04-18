.class public Lcom/smarx/notchlib/impl/AndroidPNotchScreen;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Lcom/smarx/notchlib/INotchScreen;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;)V
    .registers 4

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/smarx/notchlib/impl/AndroidPNotchScreen$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smarx/notchlib/impl/AndroidPNotchScreen$1;-><init>(Lcom/smarx/notchlib/impl/AndroidPNotchScreen;Landroid/view/View;Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
