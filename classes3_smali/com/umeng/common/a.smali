.class public Lcom/umeng/common/a;
.super Ljava/lang/Object;
.source "EncryptHelper.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "umeng+"

.field private static final c:Ljava/lang/String; = "ek__id"

.field private static final d:Ljava/lang/String; = "ek_key"

.field private static e:Ljava/lang/String; = ""

.field private static final f:Ljava/lang/String; = "umeng_subprocess_info"

.field private static g:Ljava/lang/String; = ""

.field private static h:Lcom/umeng/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/common/a;
    .registers 2

    .line 44
    sget-object v0, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    if-nez v0, :cond_17

    .line 45
    const-class v0, Lcom/umeng/common/a;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    if-nez v1, :cond_12

    .line 47
    new-instance v1, Lcom/umeng/common/a;

    invoke-direct {v1}, Lcom/umeng/common/a;-><init>()V

    sput-object v1, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    .line 49
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 52
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/common/a;->h:Lcom/umeng/common/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const/16 v1, 0x9

    const/4 v2, 0x1

    .line 58
    :try_start_5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 63
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 64
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2e

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 67
    :cond_2e
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 70
    :cond_3c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 73
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    goto :goto_64

    :catchall_63
    move-object p1, v0

    :goto_64
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 122
    :try_start_0
    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    .line 125
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 126
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 p1, 0x0

    :goto_1e
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 6

    const-string v0, "ek__id"

    .line 87
    :try_start_2
    sget-object v1, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 89
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_7c

    const-string v3, "MobclickRT"

    if-nez v2, :cond_32

    .line 91
    :try_start_16
    invoke-direct {p0, v1}, Lcom/umeng/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/common/a;->e:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>>> primaryKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "umeng_subprocess_info"

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_5c

    const/4 v1, 0x0

    .line 101
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/common/a;->g:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->>> 子进程备份秘钥：主进程key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/common/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_5c
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/common/a;->a:Ljava/lang/String;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--->>>> 正式秘钥：key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_16 .. :try_end_7c} :catchall_7c

    :catchall_7c
    :cond_7c
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :try_start_2
    sget-object v2, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_23

    .line 145
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 146
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/umeng/common/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_25

    move-object p1, v3

    :goto_23
    move-object v1, p1

    goto :goto_82

    :catch_25
    nop

    const-string v2, "MobclickRT"

    const-string v3, "--->>> 子进程事件数据解密失败!"

    .line 150
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v3, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string v3, "--->>> 子进程事件数据解密失败，换老秘钥重试"

    .line 152
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_3a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 155
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/umeng/common/a;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_51} :catch_59

    :try_start_51
    const-string v1, "--->>> 子进程事件数据解密失败，换老秘钥重试成功。"

    .line 156
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_58

    move-object v1, v4

    goto :goto_82

    :catch_58
    move-object v1, v4

    :catch_59
    const-string v3, "--->>> 子进程事件数据解密失败，换老秘钥重试失败。换子进程备份key重试。"

    .line 159
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_5e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 162
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/umeng/common/a;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_7d

    :try_start_75
    const-string p1, "--->>> 子进程事件数据解密失败，子进程备份key重试成功。"

    .line 163
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_7c

    move-object v1, v0

    goto :goto_82

    :catchall_7c
    move-object v1, v0

    :catchall_7d
    const-string p1, "--->>> 子进程事件数据解密失败，子进程备份key重试失败。"

    .line 165
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    :goto_82
    return-object v1
.end method
