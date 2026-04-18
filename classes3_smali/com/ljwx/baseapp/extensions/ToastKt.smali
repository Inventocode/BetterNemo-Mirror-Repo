.class public final Lcom/ljwx/baseapp/extensions/ToastKt;
.super Ljava/lang/Object;
.source "Toast.kt"


# static fields
.field private static mToast:Landroid/widget/Toast;

.field private static oldContent:Ljava/lang/CharSequence;

.field private static oldTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final show(Ljava/lang/CharSequence;IIZ)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 55
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_10

    return-void

    :cond_10
    const-string v1, "ljwx2"

    if-eqz p3, :cond_1f

    .line 59
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p3

    invoke-static {p3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    sput-object p3, Lcom/ljwx/baseapp/extensions/ToastKt;->mToast:Landroid/widget/Toast;

    goto :goto_5e

    .line 61
    :cond_1f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ljwx/baseapp/extensions/ToastKt;->oldContent:Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "--new:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object p3, Lcom/ljwx/baseapp/extensions/ToastKt;->oldContent:Ljava/lang/CharSequence;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    if-nez p1, :cond_4a

    const/16 p3, 0x7d0

    goto :goto_4c

    :cond_4a
    const/16 p3, 0xdac

    .line 64
    :goto_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/ljwx/baseapp/extensions/ToastKt;->oldTime:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-gez p3, :cond_5e

    const-string p0, "相同,不弹"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_5e
    :goto_5e
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {p3, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    sput-object p1, Lcom/ljwx/baseapp/extensions/ToastKt;->mToast:Landroid/widget/Toast;

    const-string p1, "不相同,弹"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object p1, Lcom/ljwx/baseapp/extensions/ToastKt;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_75

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_75
    sput-object p0, Lcom/ljwx/baseapp/extensions/ToastKt;->oldContent:Ljava/lang/CharSequence;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/ljwx/baseapp/extensions/ToastKt;->oldTime:J

    .line 75
    sget-object p0, Lcom/ljwx/baseapp/extensions/ToastKt;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_84

    invoke-virtual {p0, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    :cond_84
    sget-object p0, Lcom/ljwx/baseapp/extensions/ToastKt;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_8b

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_8b
    return-void
.end method
