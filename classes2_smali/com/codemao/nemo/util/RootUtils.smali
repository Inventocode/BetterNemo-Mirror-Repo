.class public final Lcom/codemao/nemo/util/RootUtils;
.super Ljava/lang/Object;
.source "RootUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/RootUtils;

.field private static final TAG:Ljava/lang/String;

.field private static final markKey:Ljava/lang/String;

.field private static final markKey2:Ljava/lang/String;

.field private static final markName:Ljava/lang/String;

.field private static final markName2:Ljava/lang/String;

.field private static final rootKey:Ljava/lang/String;

.field private static final rootName:Ljava/lang/String;

.field private static final rootValueFalse:Ljava/lang/String;

.field private static final rootValueTrue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/RootUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/RootUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->INSTANCE:Lcom/codemao/nemo/util/RootUtils;

    const-string v0, "rootNemo"

    .line 10
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v0, "sensorsdata.exit"

    .line 12
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->markName:Ljava/lang/String;

    const-string v0, "app_pre_data"

    .line 13
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->markKey:Ljava/lang/String;

    const-string v0, "sdk_config_account_api"

    .line 14
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->markName2:Ljava/lang/String;

    const-string v0, "hw_os_type_hm"

    .line 15
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->markKey2:Ljava/lang/String;

    const-string v0, "umeng_sp_oaid"

    .line 16
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->rootName:Ljava/lang/String;

    const-string v0, "key_umeng_sp_oaid_wx_ol"

    .line 17
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->rootKey:Ljava/lang/String;

    const-string v0, "4c8c8d42-3f86-4d8e-8c10-5676e3e6f563"

    .line 18
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->rootValueTrue:Ljava/lang/String;

    const-string v0, "71989809-9b42-4d26-a19e-83481990731a"

    .line 19
    sput-object v0, Lcom/codemao/nemo/util/RootUtils;->rootValueFalse:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final changeRooted(Z)V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/codemao/nemo/util/RootUtils;->markRootVersion()V

    .line 79
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/RootUtils;->setRooted(Z)V

    return-void
.end method

.method private final hasMark()Z
    .registers 8

    .line 28
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->markName:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->markKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    xor-int/2addr v0, v3

    .line 29
    sget-object v4, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mark1是否有值:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v5, Lcom/codemao/nemo/util/RootUtils;->markName2:Ljava/lang/String;

    invoke-static {v5}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v5

    sget-object v6, Lcom/codemao/nemo/util/RootUtils;->markKey2:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v2, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v2, 0x1

    :goto_4b
    xor-int/2addr v2, v3

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mark2是否有值:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_65

    if-eqz v2, :cond_65

    const/4 v1, 0x1

    :cond_65
    return v1
.end method

.method private final hasRootValue()Z
    .registers 4

    .line 36
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->rootName:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->rootKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    xor-int/2addr v0, v1

    return v0
.end method

.method private final isRooted()Z
    .registers 4

    .line 40
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->rootName:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->rootKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->rootValueTrue:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final markRootVersion()V
    .registers 4

    .line 22
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->markName:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->markKey:Ljava/lang/String;

    const-string v2, "550e8400-e29b-41d4-a716-446655440001"

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->markName2:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->markKey2:Ljava/lang/String;

    const-string v2, "34e5a34-e29b-41d4-a7b6-2342c34d"

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v1, "添加mark标记"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final setRooted(Z)V
    .registers 5

    .line 44
    sget-object v0, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "准备缓存是否root:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",如果之前为root,不更新"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0}, Lcom/codemao/nemo/util/RootUtils;->isRooted()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz p1, :cond_26

    .line 46
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->rootValueTrue:Ljava/lang/String;

    goto :goto_28

    :cond_26
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->rootValueFalse:Ljava/lang/String;

    .line 47
    :goto_28
    sget-object v1, Lcom/codemao/nemo/util/RootUtils;->rootName:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    sget-object v2, Lcom/codemao/nemo/util/RootUtils;->rootKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "之前没有root,可以缓存这个值"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method


# virtual methods
.method public final checkRoot(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/scottyab/rootbeer/RootBeer;

    invoke-direct {v0, p1}, Lcom/scottyab/rootbeer/RootBeer;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lcom/scottyab/rootbeer/RootBeer;->isRooted()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 59
    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/RootUtils;->changeRooted(Z)V

    .line 60
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v0, "当前设备root"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 62
    :cond_1c
    invoke-direct {p0}, Lcom/codemao/nemo/util/RootUtils;->hasMark()Z

    move-result p1

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/util/RootUtils;->hasRootValue()Z

    move-result v1

    if-eqz p1, :cond_33

    if-nez v1, :cond_33

    .line 65
    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/RootUtils;->changeRooted(Z)V

    .line 66
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v0, "只有标记,没有是否root,标记为root"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_33
    if-nez p1, :cond_42

    if-eqz v1, :cond_42

    .line 68
    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/RootUtils;->changeRooted(Z)V

    .line 69
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v0, "是有是否root,没有标记,标记为root"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_42
    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/RootUtils;->changeRooted(Z)V

    .line 72
    sget-object p1, Lcom/codemao/nemo/util/RootUtils;->TAG:Ljava/lang/String;

    const-string v0, "都有,或者都没有,标记为未root"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

.method public final isValid()Z
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/util/RootUtils;->isRooted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
