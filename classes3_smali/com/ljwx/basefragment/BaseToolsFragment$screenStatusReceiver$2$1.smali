.class public final Lcom/ljwx/basefragment/BaseToolsFragment$screenStatusReceiver$2$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseToolsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/basefragment/BaseToolsFragment$screenStatusReceiver$2;->invoke()Lcom/ljwx/basefragment/BaseToolsFragment$screenStatusReceiver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    if-eq p2, v0, :cond_27

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_21

    const v0, 0x311a1d6c

    if-eq p2, v0, :cond_1e

    goto :goto_2a

    :cond_1e
    const-string p2, "android.intent.action.USER_PRESENT"

    goto :goto_23

    :cond_21
    const-string p2, "android.intent.action.SCREEN_ON"

    :goto_23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_27
    const-string p2, "android.intent.action.SCREEN_OFF"

    goto :goto_23

    :cond_2a
    :goto_2a
    return-void
.end method
