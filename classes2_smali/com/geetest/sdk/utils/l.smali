.class public Lcom/geetest/sdk/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/utils/l$b;
    }
.end annotation


# static fields
.field private static a:Lcom/geetest/sdk/utils/l$b; = null

.field private static b:Z = true

.field private static c:Z = false

.field private static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-boolean v0, Lcom/geetest/sdk/utils/l;->c:Z

    if-nez v0, :cond_2c

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_11

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3
    :cond_11
    invoke-static {}, Lcom/geetest/sdk/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    sput-boolean v0, Lcom/geetest/sdk/utils/l;->d:Z

    .line 5
    sput-boolean v2, Lcom/geetest/sdk/utils/l;->c:Z

    .line 7
    :cond_2c
    sget-boolean v0, Lcom/geetest/sdk/utils/l;->d:Z

    if-nez v0, :cond_31

    return-void

    .line 10
    :cond_31
    sget-object v0, Lcom/geetest/sdk/utils/l;->a:Lcom/geetest/sdk/utils/l$b;

    if-nez v0, :cond_44

    .line 11
    new-instance v0, Lcom/geetest/sdk/utils/l$b;

    invoke-direct {v0}, Lcom/geetest/sdk/utils/l$b;-><init>()V

    sput-object v0, Lcom/geetest/sdk/utils/l;->a:Lcom/geetest/sdk/utils/l$b;

    .line 12
    invoke-virtual {v0}, Lcom/geetest/sdk/utils/l$b;->b()V

    .line 13
    sget-object v0, Lcom/geetest/sdk/utils/l;->a:Lcom/geetest/sdk/utils/l$b;

    invoke-virtual {v0}, Lcom/geetest/sdk/utils/l$b;->a()V

    .line 15
    :cond_44
    sget-object v0, Lcom/geetest/sdk/utils/l;->a:Lcom/geetest/sdk/utils/l$b;

    invoke-virtual {v0, p0, p1}, Lcom/geetest/sdk/utils/l$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 16
    sput-boolean p0, Lcom/geetest/sdk/utils/l;->b:Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/geetest/sdk/utils/l;->b:Z

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/geetest/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/geetest/sdk/utils/l;->b:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0, p1}, Lcom/geetest/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/geetest/sdk/utils/l;->b:Z

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p1}, Lcom/geetest/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
