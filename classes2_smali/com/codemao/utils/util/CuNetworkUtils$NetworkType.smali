.class public final enum Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;
.super Ljava/lang/Enum;
.source "CuNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/utils/util/CuNetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_2G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_3G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_4G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_5G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_ETHERNET:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_NO:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 64
    new-instance v0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v1, "NETWORK_ETHERNET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 65
    new-instance v1, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v3, "NETWORK_WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 66
    new-instance v3, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v5, "NETWORK_5G"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_5G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 67
    new-instance v5, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v7, "NETWORK_4G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_4G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 68
    new-instance v7, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v9, "NETWORK_3G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_3G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 69
    new-instance v9, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v11, "NETWORK_2G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_2G:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 70
    new-instance v11, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v13, "NETWORK_UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    .line 71
    new-instance v13, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const-string v15, "NETWORK_NO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->NETWORK_NO:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 63
    sput-object v15, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->$VALUES:[Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;
    .registers 2

    .line 63
    const-class v0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;
    .registers 1

    .line 63
    sget-object v0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->$VALUES:[Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    return-object v0
.end method
