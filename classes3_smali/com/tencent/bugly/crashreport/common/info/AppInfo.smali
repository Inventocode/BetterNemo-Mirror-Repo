.class public Lcom/tencent/bugly/crashreport/common/info/AppInfo;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "@buglyAllChannel@"

    const-string v1, ","

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    const-string v0, "@buglyAllChannelPriority@"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 133
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_3a

    const/16 v0, 0x200

    :try_start_1b
    new-array v2, v0, [C

    .line 135
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v0, :cond_2b

    .line 138
    aget-char v5, v2, v4

    if-eqz v5, :cond_2b

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 142
    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 143
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 152
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_37

    :catchall_37
    return-object p0

    :catchall_38
    move-exception v0

    goto :goto_3e

    :catchall_3a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 146
    :goto_3e
    :try_start_3e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    :cond_47
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_51

    if-eqz v1, :cond_50

    .line 153
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_50

    :catchall_50
    :cond_50
    return-object p0

    :catchall_51
    move-exception p0

    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_57

    .line 158
    :catchall_57
    :cond_57
    throw p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception p0

    .line 69
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    const-string p0, "fail"

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "BUGLY_DISABLE"

    .line 267
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2f

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2f

    :cond_15
    const-string v1, ","

    .line 271
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 272
    :goto_1c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 273
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 275
    :cond_2a
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    return-object p0

    :cond_2f
    :goto_2f
    return-object v0

    :catchall_30
    move-exception p0

    .line 277
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3a
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p0

    :catchall_e
    move-exception p0

    .line 87
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 173
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz v1, :cond_25

    if-eqz p0, :cond_25

    .line 176
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 178
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    move-exception p0

    .line 182
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_25
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BUGLY_AREA"

    const-string v1, "BUGLY_APP_BUILD_NO"

    const-string v2, "com.tencent.rdm.uuid"

    const-string v3, "BUGLY_ENABLE_DEBUG"

    const-string v4, "BUGLY_APP_VERSION"

    const-string v5, "BUGLY_APP_CHANNEL"

    const-string v6, "BUGLY_APPID"

    const-string v7, "BUGLY_DISABLE"

    const/4 v8, 0x0

    if-nez p0, :cond_14

    return-object v8

    .line 201
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v10, 0x80

    invoke-virtual {v9, p0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 204
    iget-object v9, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_a4

    .line 205
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 207
    iget-object v10, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3a

    .line 209
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_3a
    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_49

    .line 214
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_49
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 219
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_58
    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_67

    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_67
    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 229
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_76
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 234
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_85
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_94
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a3

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catchall {:try_start_14 .. :try_end_a3} :catchall_a5

    :cond_a3
    move-object v8, v9

    :cond_a4
    return-object v8

    :catchall_a5
    move-exception p0

    .line 249
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 250
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_af
    return-object v8
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 294
    :cond_4
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    if-nez v1, :cond_12

    const-string v1, "activity"

    .line 295
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    .line 298
    :cond_12
    :try_start_12
    new-instance p0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 299
    sget-object v1, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a:Landroid/app/ActivityManager;

    invoke-virtual {v1, p0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 300
    iget-boolean p0, p0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz p0, :cond_29

    const-string p0, "Memory is low."

    new-array v1, v0, [Ljava/lang/Object;

    .line 301
    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2a

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0

    :catchall_2a
    move-exception p0

    .line 307
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 308
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    return v0
.end method
