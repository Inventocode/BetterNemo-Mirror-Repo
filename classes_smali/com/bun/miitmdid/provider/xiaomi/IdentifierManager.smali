.class public Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdentifierManager"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGetAAID:Ljava/lang/reflect/Method;

.field private static sGetOAID:Ljava/lang/reflect/Method;

.field private static sGetVAID:Ljava/lang/reflect/Method;

.field private static sIdProivderImpl:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sIdProivderImpl:Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_10
    sget-object v2, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sClass:Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_22

    if-eqz v2, :cond_22

    const-string v3, "getOAID"

    :try_start_16
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sGetOAID:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    :try_start_22
    sget-object v2, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sClass:Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_24} :catch_34

    if-eqz v2, :cond_34

    const-string v3, "getVAID"

    :try_start_28
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sGetVAID:Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :try_start_34
    sget-object v2, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sClass:Ljava/lang/Class;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_36} :catch_46

    if-eqz v2, :cond_46

    const-string v3, "getAAID"

    :try_start_3a
    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bun/miitmdid/provider/xiaomi/IdentifierManager;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x62

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-wide v1, 0x176274a977aL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x63

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-wide v1, 0x176274a977bL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-wide v1, 0x176274a977cL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x65

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-wide v1, 0x176274a977dL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const/16 p0, 0x66

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-wide p0, 0x176274a977eL

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isSupported()Z
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide v1, 0x176274a977fL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
