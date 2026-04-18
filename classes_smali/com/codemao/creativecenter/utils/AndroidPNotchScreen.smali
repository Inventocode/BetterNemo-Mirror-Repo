.class public Lcom/codemao/creativecenter/utils/AndroidPNotchScreen;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/INotchScreen;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 47
    :cond_9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 49
    new-instance v0, Lcom/codemao/creativecenter/utils/AndroidPNotchScreen$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/creativecenter/utils/AndroidPNotchScreen$1;-><init>(Lcom/codemao/creativecenter/utils/AndroidPNotchScreen;Landroid/view/View;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_22

    const/4 p1, 0x0

    .line 43
    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    :cond_22
    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
