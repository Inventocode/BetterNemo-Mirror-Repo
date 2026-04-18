.class public Lcom/readboy/personalsettingauth/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static TOAST_SWITCH:Z = true

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static isContextOk(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 181
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_24

    .line 182
    check-cast p0, Landroid/app/Activity;

    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1d

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_1c
    return v0

    .line 187
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 129
    sget-boolean v0, Lcom/readboy/personalsettingauth/util/ToastUtils;->TOAST_SWITCH:Z

    if-nez v0, :cond_5

    return-void

    .line 133
    :cond_5
    sget-object v0, Lcom/readboy/personalsettingauth/util/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_17

    .line 134
    invoke-static {p0}, Lcom/readboy/personalsettingauth/util/ToastUtils;->isContextOk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 137
    :cond_10
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/readboy/personalsettingauth/util/ToastUtils;->toast:Landroid/widget/Toast;

    goto :goto_1a

    .line 140
    :cond_17
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1a
    sget-object p0, Lcom/readboy/personalsettingauth/util/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
