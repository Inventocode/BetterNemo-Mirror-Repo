.class public Lcn/codemao/android/stat/OpenUDIDAdapter;
.super Ljava/lang/Object;
.source "OpenUDIDAdapter.java"


# static fields
.field private static final OPEN_UDID_MANAGER_CLASS_NAME:Ljava/lang/String; = "cn.codemao.android.stat.OpenUDID_manager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .registers 4

    const-string v0, "CodeMaoStat"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "cn.codemao.android.stat.OpenUDID_manager"

    .line 58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getOpenUDID"

    .line 59
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_32

    .line 62
    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_19} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_19} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_19} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_19} :catch_1b

    move-object v1, v2

    goto :goto_32

    :catch_1b
    const-string v2, "IllegalAccessException"

    .line 71
    invoke-static {v0, v2}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_21
    const-string v2, "InvocationTargetException"

    .line 69
    invoke-static {v0, v2}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_27
    const-string v2, "NoSuchMethodException"

    .line 67
    invoke-static {v0, v2}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_2d
    const-string v2, "ClassNotFoundException"

    .line 65
    invoke-static {v0, v2}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-object v1
.end method

.method public static isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "cn.codemao.android.stat.OpenUDID_manager"

    .line 25
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInitialized"

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1c} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1c} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1c} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return v0
.end method

.method public static isOpenUDIDAvailable()Z
    .registers 1

    :try_start_0
    const-string v0, "cn.codemao.android.stat.OpenUDID_manager"

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static sync(Landroid/content/Context;)V
    .registers 8

    const-string v0, "CodeMaoStat"

    :try_start_2
    const-string v1, "cn.codemao.android.stat.OpenUDID_manager"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sync"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 42
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_1e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1e} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1e} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_36

    :catch_1f
    const-string p0, "IllegalAccessException"

    .line 51
    invoke-static {v0, p0}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :catch_25
    const-string p0, "InvocationTargetException"

    .line 49
    invoke-static {v0, p0}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :catch_2b
    const-string p0, "NoSuchMethodException"

    .line 47
    invoke-static {v0, p0}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :catch_31
    const-string p0, "ClassNotFoundException"

    .line 45
    invoke-static {v0, p0}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void
.end method
