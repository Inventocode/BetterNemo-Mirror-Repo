.class public Lcom/geetest/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .registers 5

    .line 4
    sget-object v0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    if-nez v0, :cond_38

    :try_start_4
    const-string v0, "android.app.ActivityThread"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_34

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    :try_start_d
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_34

    const-string v3, "getApplication"

    :try_start_21
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_38

    .line 13
    sput-object v0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_38
    :goto_38
    sget-object v0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    if-nez p0, :cond_9

    .line 1
    invoke-static {}, Lcom/geetest/sdk/a;->a()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    goto :goto_f

    .line 3
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/geetest/sdk/a;->a:Landroid/content/Context;

    :goto_f
    return-void
.end method
