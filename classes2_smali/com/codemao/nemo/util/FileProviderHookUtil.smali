.class public Lcom/codemao/nemo/util/FileProviderHookUtil;
.super Ljava/lang/Object;
.source "FileProviderHookUtil.java"


# static fields
.field private static currentActivityThread:Ljava/lang/Object;

.field private static installContentProvidersMethod:Ljava/lang/reflect/Method;

.field private static providers:Ljava/lang/Object;


# direct methods
.method public static attachContext()V
    .registers 4

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/codemao/nemo/util/FileProviderHookUtil;->currentActivityThread:Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Lcom/codemao/nemo/util/FileProviderHookUtil;->hookInstallContentProvider(Ljava/lang/Class;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method private static hookInstallContentProvider(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "mBoundApplication"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    sget-object v2, Lcom/codemao/nemo/util/FileProviderHookUtil;->currentActivityThread:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "providers"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/codemao/nemo/util/FileProviderHookUtil;->providers:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 51
    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    const-string v2, "installContentProviders"

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/codemao/nemo/util/FileProviderHookUtil;->installContentProvidersMethod:Ljava/lang/reflect/Method;

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method

.method public static initProvider(Landroid/content/Context;)V
    .registers 5

    .line 21
    :try_start_0
    sget-object v0, Lcom/codemao/nemo/util/FileProviderHookUtil;->installContentProvidersMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/codemao/nemo/util/FileProviderHookUtil;->currentActivityThread:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    sget-object v3, Lcom/codemao/nemo/util/FileProviderHookUtil;->providers:Ljava/lang/Object;

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method
