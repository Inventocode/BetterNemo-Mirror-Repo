.class public Lcn/codemao/android/stat/MessagingAdapter;
.super Ljava/lang/Object;
.source "MessagingAdapter.java"


# static fields
.field private static final MESSAGING_CLASS_NAME:Ljava/lang/String; = "cn.codemao.android.stat.messaging.CountlyMessaging"

.field private static final TAG:Ljava/lang/String; = "MessagingAdapter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;II)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "II)Z"
        }
    .end annotation

    .line 25
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "cn.codemao.android.stat.messaging.CountlyMessaging"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "init"

    const/16 v5, 0x9

    new-array v6, v5, [Ljava/lang/Class;

    .line 26
    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, [Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const/4 v11, 0x5

    aput-object v1, v6, v11

    const/4 v12, 0x6

    aput-object v0, v6, v12

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const/16 v13, 0x8

    aput-object v1, v6, v13

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    aput-object p3, v4, v10

    aput-object p4, v4, v7

    aput-object p5, v4, v11

    aput-object p6, v4, v12

    .line 27
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return v8

    :catchall_59
    move-exception v0

    const-string v1, "MessagingAdapter"

    const-string v3, "Couldn\'t init CodeMaoStat Messaging"

    .line 31
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static isMessagingAvailable()Z
    .registers 1

    :try_start_0
    const-string v0, "cn.codemao.android.stat.messaging.CountlyMessaging"

    .line 16
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

.method public static storeConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/stat/DeviceId$Type;)Z
    .registers 15

    .line 38
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "cn.codemao.android.stat.messaging.CountlyMessaging"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "storeConfiguration"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    .line 39
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v7, 0x2

    aput-object v0, v5, v7

    const/4 v8, 0x3

    aput-object v0, v5, v8

    const-class v0, Lcn/codemao/android/stat/DeviceId$Type;

    const/4 v9, 0x4

    aput-object v0, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_35

    return v6

    :catchall_35
    move-exception p0

    const-string p1, "MessagingAdapter"

    const-string p2, "Couldn\'t store configuration in CodeMaoStat Messaging"

    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
